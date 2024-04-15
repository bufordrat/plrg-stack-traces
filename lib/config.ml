module R = Etude.Result.Make (Global_error)

type t = { username : string
         ; token : Session.token
         ; message : string }

let read_config username filepath =
  let open R in
  let open Authorization in
  let* token = connect username in
  let message =
    "this config was read in from: " ^ filepath
  in
  pure { username ; token ; message }
