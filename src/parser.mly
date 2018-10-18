%{
open Ast

let parse_sequence c1 c2 =
  match c1, c2 with
  | CSeq cmds1, CSeq cmds2 -> CSeq (cmds1 @ cmds2)
  | c, CSeq cmds           -> CSeq (c :: cmds)
  | CSeq cmds, c           -> CSeq (cmds @ [c])
  | c1, c2                 -> CSeq ([c1; c2])
%}

%token <float> FLOAT
%token <string> VAR
%token  
ADD SUBTRACT MULTIPLY DIVIDE NEGATE SQRT ABS
SKIP LPAREN RPAREN ASSIGN SEMI LBRACE RBRACE PRINT EOF

%type <Ast.value> value
%type <Ast.binop> binop
%type <Ast.unop> unop 
%type <Ast.expr> expr
%type <Ast.com> com
%type <Ast.com> prog

%start prog
 
%%

/* Values */
value :
  | FLOAT                 { VFloat($1) }
  | VAR                   { VVar($1) }
  | LPAREN value RPAREN   { $2 }

/* Unary operations */
unop: 
  | NEGATE                { UNeg }
  | SQRT                  { USqrt }
  | ABS                   { UAbs }

/* Binary operations */
%inline binop :
  | ADD                   { BAdd }
  | SUBTRACT              { BSub }
  | MULTIPLY              { BMul }
  | DIVIDE                { BDiv }

/* Expressions */
expr :
  | value                 { EValue($1) }
  | expr binop expr       { EBinop ($2, $1, $3) }
  | unop expr             { EUnop($1, $2) }

/* Commands */
com :
  | acom                  { $1 }
  | acom com              { parse_sequence $1 $2 } 

acom : 
  | VAR ASSIGN expr SEMI  { CAssgn($1, $3) }
  | PRINT expr SEMI       { CPrint $2 }
  | SKIP SEMI             { CSkip}
  | LBRACE com RBRACE     { $2 }
  | expr                  { CExpr($1)}

/* Programs */
prog :
  | com EOF               { $1 }
