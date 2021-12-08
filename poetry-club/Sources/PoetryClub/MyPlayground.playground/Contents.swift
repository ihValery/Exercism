import Foundation

let csv = "apple,pear,peach,orange,cherry,lime,goosberry"
let fruite = csv.components(separatedBy: ",")

let index = csv.index(csv.startIndex, offsetBy: 21)
csv[index]

func splitOnNewlines(_ poem: String) -> [String] {
   poem.components(separatedBy: "\n")
}

splitOnNewlines("Hello.\nHow are you?\n\nI'm doing fine.")
// => ["Hello." ,"How are you?", "", "I'm doing fine"].

func firstLetter(_ line: String) -> Character {
   guard let first = line.first else { return "_" }
   return first
}

firstLetter("Stands so high")
// => "S"

func capitalize(_ phrase: String) -> String {
//   phrase.capitalized
   guard !phrase.isEmpty else { return "" }
   
   var result = ""
   _ = phrase.components(separatedBy: " ").map { i in
      result += i.first!.uppercased() + String(i[i.index(after: i.startIndex)...]).lowercased() + " "
   }
   
   return trimFromEnd(result)
}

capitalize("")
capitalize("SHIRE fOr TesteR")
// => "Shire"
capitalize("horse")
// => "Horse"

func trimFromEnd(_ line: String) -> String {
   line.trimmingCharacters(in: .whitespaces)
//   guard !line.isEmpty else { return "" }
//   while str.hasSuffix(" ") {
//      str.removeLast()
//   }
//
//   return str
}

trimFromEnd("Stands so high                    ")
// => "Stands so high"

func lastLetter(_ line: String) -> Character {
   line.last ?? " "
}

lastLetter("Stands so high")
// => "h"

func backDoorPassword(_ phrase: String) -> String {
   capitalize(phrase) + ", please"
}

backDoorPassword("horse")
// => "Horse, please"

func ithLetter(_ line: String, i: Int) -> Character {
   guard line.count > i else { return " " }
   let ith = line.index(line.startIndex, offsetBy: i)
   return line[ith]
}

ithLetter("12", i: 2)
ithLetter("Impatiently waits for", i: 2)
// => "p"

func secretRoomPassword(_ phrase: String) -> String {
   phrase.uppercased() + "!"
}

secretRoomPassword("Super")
// => "SUPER!"
