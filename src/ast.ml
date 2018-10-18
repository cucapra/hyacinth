
type var = string

and value =
  | VFloat of float
  | VVar of var

and unop =
  | UNeg
  | USqrt
  | UAbs

and binop =
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
  | CPrint of expr
  | CSeq of com list
  | CSkip
