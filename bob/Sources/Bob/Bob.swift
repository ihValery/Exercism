import Foundation

enum Answer: String {
   case question = "Sure."
   case yellAtHim = "Whoa, chill out!"
   case yellQuestion = "Calm down, I know what I'm doing!"
   case withoutAnything = "Fine. Be that way!"
   case anythingElse = "Whatever."
}

func hey(_ input: String) -> String {
   let message: Answer
   
   switch input {
   case _ where input.trimmingCharacters(in: .whitespaces).isEmpty:
      message = .withoutAnything
   case _ where input.uppercased() == input && (input.rangeOfCharacter(from: .letters) != nil):
      message = .yellAtHim
//   case _ where input.hasSuffix("?") && input.uppercased() == input:
//      message = .yellQuestion
   case _ where input.hasSuffix("?"):
      message = .question
   default:
      message = .anythingElse
   }
   return message.rawValue
   
}
