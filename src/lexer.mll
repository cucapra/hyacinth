{
open Parser
exception Eof
exception LexingError of string

let lineno = ref 1
let linestart = ref (-1)

let newline lexbuf : unit = 
  linestart := Lexing.lexeme_start lexbuf;
  incr lineno

let info lexbuf = 
  let c1 = Lexing.lexeme_start lexbuf in
  let c2 = Lexing.lexeme_end lexbuf in
  let l = !lineno in
  let c = !linestart + 1 in
    ((l, c1 - c),(l, c2 - c - 1))

let error lexbuf msg =
  let i = info lexbuf in
  let t = Lexing.lexeme lexbuf in   
  let ((l1,c1),(l2,c2)) = i in 
  let s = 
    if l2=l1
    then Printf.sprintf "line %d, characters %d-%d" l1 c1 c2
    else Printf.sprintf "line %d, character %d, to line %d, character %d" l1 c1 l2 c2 in 
  let err = Printf.sprintf "%s: lexing error %s at %s."      
    s
    msg 
    t in 
  raise (LexingError err)   
}

let digit = ['0'-'9']
let frac = '.' digit*
let float = digit* frac?

let id = ['a'-'z'] ['a'-'z' '0'-'9']*
let white = [' ' '\t']

rule token = parse
| white   { token lexbuf }
| '\n'    { newline lexbuf; token lexbuf }
| "+"     { ADD }
| "-"     { SUBTRACT }
| "*"     { MULTIPLY }
| "/"     { DIVIDE }
| "neg"   { NEGATE } 
| "sqrt"  { SQRT }
| "abs"   { ABS }
| "skip"  { SKIP }
| "("     { LPAREN }
| ")"     { RPAREN }
| "{"     { LBRACE }
| "}"     { RBRACE }
| ":="    { ASSIGN }
| ";"     { SEMI }
| "print" { PRINT }
| id as v { VAR(v) }
| float   { FLOAT (float_of_string (Lexing.lexeme lexbuf)) }
| eof     { EOF }
| _ as c  { error lexbuf (String.make 1 c) }
