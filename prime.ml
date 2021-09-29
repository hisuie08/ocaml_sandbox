(*素数判定(試し割り法による)*)
let isPrime s =
  let rec loop x =
    (*パターンマッチング覚えよう*)
    if s mod x = 0 then false
    else let nw = x+1 in s mod nw = 0 in
  if s<3 then true
    else loop 2;;

print_endline (string_of_bool (isPrime 13));;