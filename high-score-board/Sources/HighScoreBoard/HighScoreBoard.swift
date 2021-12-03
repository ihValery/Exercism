func newScoreBoard() -> [String: Int] {
   let scoreBoard: [String: Int] = [:]
   return scoreBoard
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
   scores[name] = score
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
   scores.removeValue(forKey: name)
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
   if scores.contains(where: { $0.key == name }) {
      scores.updateValue(0, forKey: name)
   }
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
   if let oldScore = scores[name] {
      scores.updateValue(oldScore + delta, forKey: name)
   }
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
   scores.sorted { $0.key < $1.key}
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
   scores.sorted {$0.value > $1.value }
}
