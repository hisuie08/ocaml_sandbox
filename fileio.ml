open Printf

(*ファイルパス(相対パス?)と文字列を受け取って書き込む*)
let writeFile filePath message = 
  let file =open_out filePath in
  fprintf file "%s" message;;

(*ファイルを読み込んで1行ずつ表示する*)
  let readFile filePath =
  let ic = open_in filePath in
  try 
    let rec readLine ic=
      let line = input_line ic in 
      print_endline line;
      flush stdout;
      readLine ic in
    readLine ic;
  with End_of_file ->
    close_in_noerr ic;;
