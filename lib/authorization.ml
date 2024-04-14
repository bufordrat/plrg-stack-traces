let new_error err =
  let coerced = (err : Authorization_error.t :> Global_error.error)
  in Error [coerced]

let sudoers =
  [ "matt" ; "borja" ; "reppy" ]

let connect username =
  let open Prelude.String in
  let open Prelude.Char in
  if all (Alphabetic.is) username
  then Ok (Token.Token (username ^ "XXX"))
  else new_error (`BadUsername username)
