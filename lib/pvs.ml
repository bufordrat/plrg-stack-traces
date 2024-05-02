module AuthorizationError = struct
  type t = [
    | `WrongPrivileges 
    ]
end

module AdminError = struct
  type t = [
    | `BadUsername of string
    ]
end

module ConfigError = struct
  type t = [
    | `ConfigProblem 
    ]
end
