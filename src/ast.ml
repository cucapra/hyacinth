
type var = string

and value =
  | VFloat of float
  | VVar of var

and unop =
  | UNot
  | UNeg
  | USqrt
  | UAbs

and binop =
  | BAnd
  | BOr
  | BEquals
  | BNotEquals
  | BLess
  | BLessEq
  | BGreater
  | BGreaterEq
  | BAdd
  | BSub
  | BMul
  | BDiv

and expr =
  | EValue of value
  | EBinop of binop * expr * expr
  | EUnop of unop * expr

and com =
  | CAssgn of var * expr
  | CIf of expr * com
  | CSeq of com list
  | CPrint of expr