open Authorization_error

(* returns an auth token *)
let connect username =
  if username = "guest"
  then Ok ("abcdef123")
  else Error (bad_username username)
