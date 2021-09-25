(*babylonian methodにより任意の小数値nの平方根を求める*)
let babylonian n = 
    let rec b s x=
        let t = (x +. s/.x) /. 2. in
        if t = x then t
        else b s t in
    b n 1.;;
