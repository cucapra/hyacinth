open Ast

type op =
  | ONoop
  | OBinop of binop
  | OUnop of unop

(*   | NLabel of string
  | NOp of op
  | NIncoming of node list
  | NOutgoing of node list *)

and node =
  | NNode of var * op * node list (* * node list *)
  | NStart of node
  | NEnd
(*   | NEnd of var * op * node list *)

and dfg =
  | Starting of node list

let ssa_to_dfg (_c : com) : dfg =
  Starting([])



(* examples *)

(* let x = 1
let () = assert (x > 2) *)

let command _ : com =
  CAssgn("x", EValue(VFloat(1.)))


let assgn_ex = CAssgn("x", EValue(VFloat(1.)))
let dfg_ex = Starting([NStart(NNode("x", ONoop, [NEnd]))])
let () = assert ((ssa_to_dfg assgn_ex) = dfg_ex)