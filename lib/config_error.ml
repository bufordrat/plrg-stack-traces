type t = [
  | `ConfigSyntax of int * string
  | `BadProjectName of string
  ]

