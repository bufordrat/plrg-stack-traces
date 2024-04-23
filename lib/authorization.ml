(* let new_error = Global_error.T.new_error *)

let connect username =
  let open Session in
  let open Prelude.String in
  let open Prelude.Char in
  let open Global_error.T in
  if all (Alphabetic.is) username
  then Ok (Token ( username ^ "XXX"))
  else new_error (`BadUsername username)
