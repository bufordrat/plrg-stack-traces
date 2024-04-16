module R = Etude.Result.Make (Global_error)

let open_admin_panel username =
  let open R in
  let open Session in
  let open Authorization in
  let open Global_error in
  let token =
    let* t = connect username in
    pure (CreateSession t)
  in
  with_error `WrongPrivileges token
