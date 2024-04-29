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

module Specialize:
functor (E : sig type t end) ->
  sig
    module type S =
      sig
        val with_error :
          E.t -> ('a, t) result -> ('a, t) result
        val new_list : E.t -> t
        val new_error : E.t -> ('a, t) result
      end
  end
