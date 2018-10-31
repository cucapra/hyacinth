
type var = string

and value =
  | VTrue
  | VFalse
  | VFloat of float
  | VVar of var

and unop =
  | UNot
  | UNeg
  | USqrt
  | UAbs

and binop =
  | EAnd
  | EOr
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
  | CExpr of expr
  | CPrint of expr
  | CSkip
