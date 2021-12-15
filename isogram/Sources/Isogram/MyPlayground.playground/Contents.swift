import UIKit

func isIsogram(_ input: String) -> Bool {
//    var result = Array(input.lowercased())
//    for char in result {
//        result.removeFirst()
//        if result.contains(char) && char != " " && char != "-" {
//            return false
//        }
//    }
//    return true
    
    var onlyLetters = input.lowercased().filter { $0.isLetter }
    return onlyLetters.count == Set(onlyLetters).count
}

isIsogram("ssffo")
isIsogram("isogram")
isIsogram("Alphabet")
isIsogram("Hjelmqvist-Gryb-Zock-Pfund-Wax")

var str = "Hj elmqvist-Gryb-Zock-Pf und-WaxXxxxxxx".lowercased().filter { $0.isLetter }
print(str)
