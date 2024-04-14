type error = [
  | Authorization_error.t
  | Config_error.t
  | Admin_error.t
  ]

module E = struct
  type t = error list
end

type t = E.t
