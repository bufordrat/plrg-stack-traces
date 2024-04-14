let sudoers =
  [ "matt" ; "borja" ; "reppy" ]

let connect username =
  let open Prelude.String in
  let open Prelude.Char in
  if all (Alphabetic.is) username
  then Ok (Token.token @@ username ^ "XXX")
  else Error (`BadUsername username)
