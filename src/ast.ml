
type var = string

and value =
  | VFloat of float
  | VVar of var

and internal_op =
  | UNot
  | UNeg
  | USqrt
  | UAbs
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

and op =
  | OInternal of internal_op
  | OExternal of string * int

and expr =
  | EValue of value
  | EOp of op * value list
  | EPhi of var * var
  | EInput of int

and com =
  | CAssgn of var * expr
  | CIf of var * com
  | CSeq of com list
  | CPrint of expr
