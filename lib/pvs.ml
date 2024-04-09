module ConfigError = struct
  type t = [
    | `ConfigSyntax of int * string
    | `BadProjectName of string
    ]
end

module ValidationError = struct
  type t = [
    | `BadUsername of string
    | `EmptyInput
    ]
end

module GlobalError = struct
  type t = [
    | ConfigError.t
    | ValidationError.t
    ]
end
