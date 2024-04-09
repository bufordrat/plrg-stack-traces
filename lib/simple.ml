type ('a, 'b) result =
  | Ok of 'a
  | Error of 'b

let ( let* ) mx k =
  match mx with
  | Ok o -> k o
  | Error e -> Error e

let pure x = Ok x

let is_positive n =
  if n > 0
  then Ok n
  else Error "not positive"

let is_even n =
  if n mod 2 = 0
  then Ok n
  else Error "not even"

let validate_then_double n =
  let* pos = is_positive n in
  let* validated = is_even pos in
  pure (validated * 2)
               
