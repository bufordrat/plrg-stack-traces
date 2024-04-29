module R = Etude.Result.Make (Global_error)
module type S = Global_error.Specialize(Config_error).S
module T : S = Global_error.T

type t = { username : string
         ; token : Session.token
         ; message : string }

let read_config username filepath =
  let open R in
  let open T in
  let config =
    let* token = Authorization.connect username in
    let message =
      "this config was read in from: " ^ filepath
    in
    pure { username ; token ; message }
  in
  with_error `ConfigProblem config
