  $ tjcc longstring
  $ tjdis longstring.lpo
  Disassembling from bytecode file: longstring.lpo
  Bytecode version: 2
  Module name: longstring
  
  LABEL               INSTRUCTION              OPERANDS
  
  L2                  fail                     
  foo                 switch_on_reg            #1, L0, L1
  L0                  try                      #1, L1
                      trust_ext                #1, #1
                      try_me_else              #0, L2
  L1                  head_normalize_t         A1
                      builtin                  #28
  test                switch_on_reg            #2, L3, L4
  L3                  try                      #0, L4
                      trust_ext                #0, #2
                      try_me_else              #0, L2
  L4                  allocate                 #3
                      put_string               A1, <string #0>
                      call_name                #2, foo
                      put_type_const           A3, i
                      put_variable_p           Y1, A1
                      put_m_const              A2, longNamexxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                      call_builtin             #2, #3
                      put_value_p              Y1, A1
                      head_normalize_t         A1
                      put_variable_p           Y2, A2
                      call_builtin             #2, #31
                      put_unsafe_value         Y2, A1
                      head_normalize_t         A1
                      deallocate               
                      builtin                  #28
  
  Global kind table:
  0: i/0
  
  Local kind table:
  
  Type skeleton table:
  0: string -> o
  1: o
  2: i
  
  Global constant table: 
  0: foo (No Fixity, precedence 0)
      Env Size: 0, Type Skeleton: #0
  1: test (No Fixity, precedence 0)
      Env Size: 0, Type Skeleton: #1
  2: longNamexxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx (No Fixity, precedence 0)
      Env Size: 0, Type Skeleton: #2
  3: a (No Fixity, precedence 0)
      Env Size: 0, Type Skeleton: #2
  
  Local constant table: 
  
  Hidden constant table: 
  
  String table:
  0: This is a long string.                                                                                                                                                                                                                                                                                       Total length 319.
  
  
  Implication Tables:
  
  Hash tables:
  
  Module table:
    Predicate definitions possibly extending previous ones: 2
     foo
     test
    Exportdef predicates: 0
    Local predicates: 0
    Find function type: hash
    In-core table size: 2
     foo
     test
  
  Accumulated tables:
  
  Imported tables:
  $ tjlink longstring
  $ tjdis longstring.lp
  Disassembling from bytecode file: longstring.lp
  Bytecode version: 3
  Module name: longstring
  
  LABEL               INSTRUCTION              OPERANDS
  
  L2                  fail                     
  foo                 switch_on_reg            #1, L0, L1
  L0                  try                      #1, L1
                      trust_ext                #1, #1
                      try_me_else              #0, L2
  L1                  head_normalize_t         A1
                      builtin                  #28
  test                switch_on_reg            #2, L3, L4
  L3                  try                      #0, L4
                      trust_ext                #0, #2
                      try_me_else              #0, L2
  L4                  allocate                 #3
                      put_string               A1, <string #0>
                      call_name                #2, foo
                      put_type_const           A3, i
                      put_variable_p           Y1, A1
                      put_m_const              A2, longNamexxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                      call_builtin             #2, #3
                      put_value_p              Y1, A1
                      head_normalize_t         A1
                      put_variable_p           Y2, A2
                      call_builtin             #2, #31
                      put_unsafe_value         Y2, A1
                      head_normalize_t         A1
                      deallocate               
                      builtin                  #28
  
  Global kind table:
  0: i/0
  
  Local kind table:
  
  Type skeleton table:
  0: string -> o
  1: o
  2: i
  
  Global constant table: 
  0: foo (No Fixity, precedence 0)
      Env Size: 0, Type Skeleton: #0
  1: test (No Fixity, precedence 0)
      Env Size: 0, Type Skeleton: #1
  2: longNamexxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx (No Fixity, precedence 0)
      Env Size: 0, Type Skeleton: #2
  3: a (No Fixity, precedence 0)
      Env Size: 0, Type Skeleton: #2
  
  Local constant table: 
  
  Hidden constant table: 
  
  String table:
  0: This is a long string.                                                                                                                                                                                                                                                                                       Total length 319.
  
  
  Implication Tables:
  
  Hash tables:
  
  Import tables:
  
    Import table:
      number of code segments: 0
      Next clause table: 2
     foo
     test
      Local constant table: 0
      Find function type: hash
      Search table: 2
     foo
     test
  
  Accumulated tables:
  
  Imported tables:
