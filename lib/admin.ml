module R = Etude.Result.Make (Global_error)

let with_error err x =
  match x with
  | Ok _ -> x
  | Error errs ->
     let coerced = (err : Admin_error.t :> Global_error.error)
     in Error (coerced :: errs)

(* let open_admin_panel username =
 *   let open R in
 *   let open Authorization in
 *   let open Session in
 *   let* token = with_error connect username in
 *   if List.mem username sudoers
 *   then assert false
 *   else assert false *)
