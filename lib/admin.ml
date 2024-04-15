module R = Etude.Result.Make (Global_error)

let open_admin_panel username =
  let open R in
  let open Authorization in
  let open Session in
  let* token = connect username in
  pure (CreateSession token)
