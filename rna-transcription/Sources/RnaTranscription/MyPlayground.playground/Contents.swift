import Foundation

//enum DoTryCatch {
//   case first
//   case second
//   case third
//}
//
//func divide(a: Int, b: Int) throws -> Int {
//   guard b != 0 else { throw NSError(domain: "На 0 делить нельзя", code: 404) }
//   return a / b
//}
//
//do {
//   _ = try divide(a: 9, b: 0)
//} catch {
//   print(error.localizedDescription)
//}
//
//let result = try? divide(a: 6, b: 0)

/*
enum PasswordError: Error {
   case short
   case obvious
}

func checkPassword(_ pass: String) throws -> String {
   guard pass.count > 5 else { throw PasswordError.short }
   guard pass != "123456" else { throw PasswordError.obvious }
   
   switch pass.count {
   case ..<8: return "Ну так себе"
   case 8..<10: return "Хорошо"
   default: return "Отлично"
   }
}

do {
   let result = try checkPassword("123")
   print("Рейтинг пароля: \(result)")
} catch PasswordError.short {
   print("О дружек, это слишком коротко.")
} catch PasswordError.obvious {
   print("Спорим я угодаю твой пароль!\n123456\nОчень просто.")
}
*/

enum TranscriptionError: Error {
   case invalidNucleotide(message: String)
}

struct Nucleotide {
   private let input: String
   private let transcription: [Character: String] = ["G": "C",
                                                     "C": "G",
                                                     "T": "A",
                                                     "A": "U"]
   
   init(_ input: String) {
      self.input = input
   }
   
   func complementOfDNA() throws -> String {
      try input.reduce("") { output, character in
         
         guard let char = transcription[character] else {
            throw TranscriptionError.invalidNucleotide(message: "\(character) is not a valid Nucleotide")
         }
         
         return output + char
      }
   }
}

var test = try Nucleotide("GATCX").complementOfDNA()
