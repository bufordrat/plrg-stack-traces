module type S = Global_error.Specialize(Authorization_error).S
module T : S = Global_error.T

let connect username =
  let open Session in
  let open Prelude.String in
  let open Prelude.Char in
  let open T in
  if all (Alphabetic.is) username
  then Ok (Token (username ^ "XXX"))
  else new_error (`BadUsername username)
