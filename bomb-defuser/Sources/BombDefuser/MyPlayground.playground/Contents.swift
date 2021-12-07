import UIKit

let flip: (String, String, String) -> (String, String, String) = { ($1, $0, $2) }

flip("red", "yellow", "blue")
// => ("yellow", "red", "blue")

let rotate: (String, String, String) -> (String, String, String) = { ($1, $2, $0) }

rotate("red", "yellow", "blue")
// => ("yellow", "blue", "red")


func makeShuffle(flipper: @escaping ((String, String, String)) -> (String, String, String),
                 rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
   
   let test: (UInt8, (String, String, String)) -> (String, String, String) = { number, typles in
      var binary = String(number, radix: 2)
      var newTyples = typles
      print(binary)
      for i in binary {
         if i == "0" {
            newTyples = flipper(newTyples)
            print("0 - \(newTyples)")
         } else if i == "1" {
            newTyples = rotator(newTyples)
            print("1 - \(newTyples)")
         }
      }
      return newTyples
   }
   
   return test
}

let shuffler = makeShuffle(flipper: flip, rotator: rotate)
// => (UInt8, (String, String, String)) -> (String, String, String)
shuffler(155, ("red", "yellow", "blue"))
// => ("red", "blue", "yellow")
