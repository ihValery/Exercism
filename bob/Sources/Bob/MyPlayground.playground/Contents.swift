import UIKit
/*
 + Боб отвечает "Конечно.", если вы задаете ему вопрос, например, "Как дела?".
 Он отвечает "Эй, остынь!", если вы кричите на него (во всех заглавных буквах).
 Он отвечает "Успокойся, я знаю, что делаю!", если вы кричите на него с вопросом.
 + Он говорит: "Ладно. Будь по-твоему!", если вы обращаетесь к нему, ничего не говоря.
 + На все остальное он отвечает "Неважно".
 */

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
   case _ where input.hasSuffix("?"):
      message = .question
   case _ where input.hasSuffix("?") && input.uppercased() == input:
      message = .yellQuestion
   default:
      message = .anythingElse
   }
   return message.rawValue
   
}
