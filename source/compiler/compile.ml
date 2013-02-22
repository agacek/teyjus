(****************************************************************************
*Copyright 2008
*  Andrew Gacek, Steven Holte, Gopalan Nadathur, Xiaochu Qi, Zach Snow
****************************************************************************)
(****************************************************************************
* This file is part of Teyjus.
*
* Teyjus is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* Teyjus is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with Teyjus.  If not, see <http://www.gnu.org/licenses/>.
****************************************************************************)
(**********************************************************************
* Compile
**********************************************************************)
exception Exception
open Lexing
open Lpyacc

(******************************************************************
*openFile:
* Open a file and exit if there is an error; this should be used
* everywhere a file is opened.
******************************************************************)
let openFile fname f =
  try 
    let inchannel = f fname in
    inchannel
  with Sys_error(s) -> (prerr_endline s; exit 1)

(******************************************************************
*compile:
* Given a file, opens it as a lex buffer and parses it using the
* given parser function
******************************************************************)
let compile parse filename =
  let inchannel = openFile filename open_in in
  let lexbuf = Lexing.from_channel inchannel in
  let () = Lplex.setFileName lexbuf filename in
  let result = parse Lplex.initial lexbuf in
  let () = close_in inchannel in
  result

let compileModule basename =
  compile Lpyacc.parseModule (basename ^ ".mod")

let compileSignature basename =
  compile Lpyacc.parseSignature (basename ^ ".sig")

(******************************************************************
*compileString:
* Compile a string to a term.  Tracks whether any errors are raised
* during parsing specifically (this can be called from the frontend,
* which could set the error flag multiple times).
******************************************************************)
let compileString s =
  let previous = !Errormsg.anyErrors in
  let () = Errormsg.anyErrors := false in
  let lexbuf = Lexing.from_string s in
  let () = Lplex.setFileName lexbuf "" in
  let cl = parseModClause Lplex.initial lexbuf in
  let result =
    if !Errormsg.anyErrors then
      None
    else
      Some cl
  in
  (Errormsg.anyErrors := previous || (!Errormsg.anyErrors);
  result)

(******************************************************************
*compileStdin:
* Compile a string from stdin to a term.  Tracks whether any errors are raised
* during parsing specifically (this can be called from the frontend,
* which could set the error flag multiple times).
******************************************************************)
let compileClauseChannel channel =
  let previous = !Errormsg.anyErrors in
  let () = Errormsg.anyErrors := false in
  let lexbuf = Lexing.from_channel channel in
  let () = Lplex.setFileName lexbuf "" in
  let cl = parseModClause Lplex.initial lexbuf in
  let result =
    if !Errormsg.anyErrors then
      None
    else
      Some cl
  in
  (Errormsg.anyErrors := previous || (!Errormsg.anyErrors);
  result)
