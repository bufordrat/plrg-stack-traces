type t = [
  | `BadUsername of string
  ]

let bad_username s = `BadUsername s

