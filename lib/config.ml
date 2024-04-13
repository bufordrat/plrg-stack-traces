type t = Config_error.t

module R = Etude.Result.Make (Global_error)

let read_config =
  let open R in 
  let* _ = assert false in
  assert false
