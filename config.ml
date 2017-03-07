open Mirage

let main =
  foreign
    ~packages:[package "duration"; package "lwt.ppx"]
    "Unikernel.Hello" (time @-> job)

let () =
  register "hello" [main $ default_time]
