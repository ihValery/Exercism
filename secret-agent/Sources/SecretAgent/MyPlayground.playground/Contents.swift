import UIKit

func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
   { $0 == password ? secret : "Sorry. No hidden secrets here." }
}

let protected = protectSecret("UMBRA will fill everyone's sugar bowls with salt!", withPassword: "P455w0rd")
protected("P455w0rd")
//"UMBRA will fill everyone's sugar bowls
protected("he9csecx")
//"Sorry. No hidden secrets here."


func matryoshka(_ incoming: @escaping (Int) -> Int, _ outgoing: @escaping (Int) -> Int) -> (Int) -> Int {
   { outgoing(incoming($0)) }
}

func generateCombination(forRoom room: Int, usingFunction f: @escaping (Int) -> Int) -> (Int, Int, Int) {
   let b = matryoshka(f, f)
   let c = matryoshka(b, f)
   return (f(room), b(room), c(room))
}


func makeCombo(_ x: Int) -> Int {
   (x * 13) % 256
}
let password = generateCombination(forRoom: 227, usingFunction: makeCombo)
password
