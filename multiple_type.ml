(*同じプロパティ?を持つレコードが複数定義されたときどういう挙動になるのか気になったので調査*)
type pair_a = {a:int;b:int};;
type pair_b = {a:int;b:int};;
let x = {a=0;b=1};;
(*pair_b 最後に定義されたレコードになる*)

type pair_a = {a:int;b:int};;
type pair_b = {c:int;d:int};;
let y = {a=2;b=3};;
(*pair_a レコード内のプロパティ名が等しいから当然っちゃ当然*)

type pair_a = {a:int;b:int};;
type pair_b = {a:int;b:int;c:int};;

let z = {a=4;b=5};;
(*pair_a プロパティcがないtype_b、とはならないみたい*)
let a = {a=6;b=7;c=8};;
(*pair_b オーバーロードっぽいことできるのかな*)