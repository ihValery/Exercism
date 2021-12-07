let flip: (String, String, String) -> (String, String, String) = { ($1, $0, $2) }

let rotate: (String, String, String) -> (String, String, String) = { ($1, $2, $0) }

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
            print(newTyples)
         } else if i == "1" {
            newTyples = rotator(newTyples)
            print(newTyples)
         } else {
            print("what?")
         }
      }
      
      return newTyples
   }
   
   return test
}
