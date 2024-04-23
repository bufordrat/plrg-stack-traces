type error = [
  | Authorization_error.t
  | Config_error.t
  | Admin_error.t
  ]

module E = struct
  type t = error list
end

type t = E.t

let with_error err x =
  let coerced = (err : [< error] :> error)
  in
  match x with
  | Ok _ -> x
  | Error errs -> Error (coerced :: errs)

let new_list err =
  let coerced = (err : [< error] :> error)
  in [coerced]

let new_error err = Error (new_list err)

let expose = Fun.id
