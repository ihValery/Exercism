import UIKit

var constants = ["pi": 3.14159, "e": 2.71828, "phi": 1.618033, "avogadro": 6.0221407622]
let pi = constants["pu", default: 3.14159]
constants
type(of: pi)

constants["Gelfond's"] = 23.140692
constants

//for (lyamda, pizdec) in constants {
//   print("\(lyamda) равняеться \(pizdec)")
//}

func weirdSort(_ lhs: (String, Double), _ rhs: (String, Double)) -> Bool {
   let left = lhs.1 + Double(lhs.0.count)
   let right = rhs.1 + Double(rhs.0.count)
   
   return left < right
}

let sortedConstants = constants.sorted(by: weirdSort)

func newScoreBoard() -> [String: Int] {
   let scoreBoard: [String: Int] = [:]
   return scoreBoard
}

var highScores = newScoreBoard()

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
   scores[name] = score
}

addPlayer(&highScores, "Dave Thomas")
addPlayer(&highScores, "Dave Thomas", 9_999)
// Adds "Dave Thomas" to the dictionary with a high score of 0.
addPlayer(&highScores, "José Valim", 486_373)
// Adds "José Valim" to the dictionary with a high score of 486_373.

func removePlayer(_ scores: inout [String: Int], _ name: String) {
   scores.removeValue(forKey: name)
}

removePlayer(&highScores, "Dave Thomas")
// Removes "Dave Thomas" from thee dictionary
removePlayer(&highScores, "Rose Fanaras")
// Doesn't alter the dictionary as "Rose Fanaras" is not in the dictionary.

func resetScore(_ scores: inout [String: Int], _ name: String) {
   if scores.contains(where: { $0.key == name }) {
      scores[name] = 0
   }
}

addPlayer(&highScores, "Dave Thomas", 104)
highScores
resetScore(&highScores, "Dave Thomas")

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
   if let oldScore = scores[name] {
      scores.updateValue(oldScore + delta, forKey: name)
   }
}

addPlayer(&highScores, "Freyja Ćirić", 12_771_008)
updateScore(&highScores, "Freyja Ćirić", 73)
// Score for "Freyja Ćirić" updated to 12_771_091

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
   scores.sorted { $0.key < $1.key}
}

orderByPlayers(highScores)
// => [("Dave Thomas", 0), ("Freyja Ćirić", 12_771_091), ("José Valim", 486_373)]

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
   scores.sorted { $0.value > $1.value }
}

orderByScores(highScores)
// => [("Freyja Ćirić", 12_771_091), ("José Valim", 486_373), ("Dave Thomas", 0)]
