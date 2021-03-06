(*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *)

(*
 * Compiler
 *
 * The main compiler for Bunny. It takes an AST produced by the reader and feeds
 * it through a series of compilation steps. The AST is converted first into
 * A-Normal Form λ calculus, then goes through a Continuation Passing Style (CPS)
 * transformation and is finally converted to bytecode.
 *
 * The compiler can do both:
 * - generate bytecode at runtime, useful for the REPL or simple scripts
 * - pre-process applications into bytecode to remove runtime overhead
 *)
