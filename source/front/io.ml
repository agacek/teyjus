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

(* The number of files which can be optinally handled.
 * Notice that there is no restriction of the number of files which can
 * be handled, just a performance issue *)
let nbFilesInit = 2

let htFiles = Hashtbl.create nbFilesInit 

let readTermStdin term =
        Query.readTermChannel stdin (Module.getCurrentModule ())


let openFile fname mode = 
        match mode with
        | "r" -> 
                begin 
                        try
                                let chan = open_in fname in
                                let fnameHash = Hashtbl.hash fname in
                                Hashtbl.add htFiles fnameHash chan ;
                                fnameHash
                        with _  -> -1
                end
        | _ -> Printf.printf "TODO\n" ; -1

let readTermFileId fileId = 
        let chan = Hashtbl.find htFiles fileId in
        Query.readTermChannel chan (Module.getCurrentModule ())

let registerCallbacks () = 
        Callback.register "ocaml_read_term_stdin" readTermStdin;
        Callback.register "ocaml_open" openFile;
        Callback.register "ocaml_read_term_file_id" readTermFileId;

