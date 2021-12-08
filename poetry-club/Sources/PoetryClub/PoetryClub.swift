import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
   poem.components(separatedBy: "\n")
}

func firstLetter(_ line: String) -> Character {
   guard let first = line.first else { return "_" }
   return first
}

func capitalize(_ phrase: String) -> String {
//   phrase.capitalized
   guard !phrase.isEmpty else { return "" }
   
   var result = ""
   _ = phrase.components(separatedBy: " ").map { i in
      result += i.first!.uppercased() + String(i[i.index(after: i.startIndex)...]).lowercased() + " "
   }
   
   return trimFromEnd(result)
}

func trimFromEnd(_ line: String) -> String {
   line.trimmingCharacters(in: .whitespaces)
}

func lastLetter(_ line: String) -> Character {
   line.last ?? "_"
}

func backDoorPassword(_ phrase: String) -> String {
   capitalize(phrase) + ", please"
}

func ithLetter(_ line: String, i: Int) -> Character {
   guard line.count > i else { return " " }
   let ith = line.index(line.startIndex, offsetBy: i)
   return line[ith]
}

func secretRoomPassword(_ phrase: String) -> String {
   phrase.uppercased() + "!"
}
