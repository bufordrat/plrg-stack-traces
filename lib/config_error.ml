type t = [
  | `ConfigSyntax of int * string
  ]

let config_syntax no line = `ConfigSyntax (no, line)
