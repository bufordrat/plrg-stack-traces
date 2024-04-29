module R = Etude.Result.Make (Global_error)
module type S = Global_error.Specialize(Admin_error).S
module T : S = Global_error.T

let open_admin_panel username =
  let open R in
  let open Session in
  let open T in
  let token =
    let* t = Authorization.connect username in
    pure (CreateSession t)
  in
  with_error `WrongPrivileges token
