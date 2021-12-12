import UIKit

let old = [ 1: [ "A" ] ]
let expected =  ["a": 1 ]
//let results = ETL.transform(old)

enum Answer: String {
   case question = "Sure."
   case yellAtHim = "Whoa, chill out!"
   case yellQuestion = "Calm down, I know what I'm doing!"
   case withoutAnything = "Fine. Be that way!"
   case anythingElse = "Whatever."
}

func hey(_ input: String) -> String {
   var message: Answer = .anythingElse
   
   if input.trimmingCharacters(in: .whitespaces).isEmpty {
      message = .withoutAnything
   }
   if input.uppercased() == input && (input.rangeOfCharacter(from: .letters) != nil) {
      message = .yellAtHim
   }
   if input.hasSuffix("?") {
      message = .question
   }
   
   return message.rawValue
}

hey("HE")
