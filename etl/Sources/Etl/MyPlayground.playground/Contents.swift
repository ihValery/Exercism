import UIKit

let old = [ 1: ["A", "E"]]
let new = ["e": 1, "a": 1]



struct ETL {
   static func transform(_ input: [Int: [String]]) -> [String: Int] {
      input.reduce(into: [:]) { new, old in
         old.value.forEach { letter in
            new[letter.lowercased()] = old.key
         }
      }
   }
}

ETL.transform(old)

let oldSystem = [ 1: [ "A", "E", "I", "O", "U", "L", "N", "R", "S", "T" ],
                  2: [ "D", "G" ],
                  3: [ "B", "C", "M", "P" ],
                  4: [ "F", "H", "V", "W", "Y" ],
                  5: [ "K"],
                  8: [ "J", "X" ],
                  10: [ "Q", "Z" ]]


ETL.transform(oldSystem)
