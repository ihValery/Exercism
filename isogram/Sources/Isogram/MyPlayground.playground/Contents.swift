import UIKit

func isIsogram(_ input: String) -> Bool {
    var result = Array(input.lowercased())
    
    for char in result {
        result.removeFirst()
        if result.contains(char) && char != " " && char != "-" {
            print(char)
            return false
        }
    }
    return true
}

isIsogram("ssffo")
isIsogram("isogram")
isIsogram("Alphabet")
isIsogram("Hjelmqvist-Gryb-Zock-Pfund-Wax")

//var test
