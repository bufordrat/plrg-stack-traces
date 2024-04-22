type error = [
  | Authorization_error.t
  | Config_error.t
  | Admin_error.t
  ]

type t

val with_error :
  [< error ] -> ('a, t) result -> ('a, t) result

val new_list : [< error ] -> t

val new_error :
  [< error ] -> ('a, t) result
