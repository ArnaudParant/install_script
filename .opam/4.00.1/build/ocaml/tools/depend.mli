(***********************************************************************)
(*                                                                     *)
(*                                OCaml                                *)
(*                                                                     *)
(*            Xavier Leroy, projet Cristal, INRIA Rocquencourt         *)
(*                                                                     *)
(*  Copyright 1999 Institut National de Recherche en Informatique et   *)
(*  en Automatique.  All rights reserved.  This file is distributed    *)
(*  under the terms of the Q Public License version 1.0.               *)
(*                                                                     *)
(***********************************************************************)

(* $Id: depend.mli 11156 2011-07-27 14:17:02Z doligez $ *)

(** Module dependencies. *)

module StringSet : Set.S with type elt = string

val free_structure_names : StringSet.t ref

val add_use_file : StringSet.t -> Parsetree.toplevel_phrase list -> unit

val add_signature : StringSet.t -> Parsetree.signature -> unit
