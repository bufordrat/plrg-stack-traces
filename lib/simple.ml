type ('a, 'b) result =
  | Ok of 'a
  | Error of 'b

let ( >>= ) mx k =
  match mx with
  | Ok o -> Ok (k o)
  | err -> err

let pure x = Ok x

let ( let* ) = ( >>= )

let pred_to_kleisli pred msg x =
  if pred x
  then Ok x
  else Error msg

let is_positive n =
  pred_to_kleisli
    (fun n -> n > 0)
    "number should be positive"
    n

let is_even n =
  pred_to_kleisli
    (fun n -> n mod 2 = 0)
    "number should be even"
    n


