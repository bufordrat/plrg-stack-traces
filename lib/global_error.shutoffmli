type error = [
  | Authorization_error.t
  | Config_error.t
  | Admin_error.t
  ]

type t

module T : sig
  val with_error :
    [< error ] -> ('a, t) result -> ('a, t) result

  val new_list : [< error ] -> t

  val new_error :
    [< error ] -> ('a, t) result
end

val expose :
  ('a, t) result -> ('a, error list) result
