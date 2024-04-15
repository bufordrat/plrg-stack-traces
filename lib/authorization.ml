let connect username =
  let open Session in
  let open Prelude.String in
  let open Prelude.Char in
  if all (Alphabetic.is) username
  then Ok (Token ( username ^ "XXX"))
  else Error (`BadUsername username)
