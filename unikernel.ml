module Hello (Time : Mirage_time_lwt.S) = struct
  let durations = [1; 2; 3; 4; 5]
  and iterations = 1000

  let start _time =
    let rec loop count n =
      match count with
      | 0 -> Lwt.return_unit
      | c ->
         Logs.info (fun f -> f "hello from instance %i iteration %i" n (iterations - c));
         Time.sleep_ns (Duration.of_sec n) >> loop (c - 1) n
    in
    Lwt.join @@ ListLabels.map ~f:(loop iterations) durations
end
