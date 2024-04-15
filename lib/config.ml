module R = Etude.Result.Make (Global_error)

let new_error err =
  let coerced = (err : Config_error.t :> Global_error.error)
  in Error [coerced]

let read_config username filepath =
  let open R in
  let open Session in
  let open Authorization in
  let* token = connect username in
  if filepath = "/etc/config"
  then Ok (CreateSession token)
  else assert false

