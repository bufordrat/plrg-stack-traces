module R = Etude.Result.Make (Global_error)

let read_config username filepath =
  let open R in
  let open Session in
  let open Authorization in
  let* token = connect username in
  if filepath = "/etc/config"
  then Ok (CreateSession token)
  else Error (`FileNotFound filepath)
