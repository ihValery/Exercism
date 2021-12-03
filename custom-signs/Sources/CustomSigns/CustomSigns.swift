let birthday: String = "Birthday"
let valentine: String = "Valentine's Day"
let anniversary: String = "Anniversary"

let space: Character = " "
let exclamation: Character = "!"

func buildSign(for occasion: String, name: String) -> String {
  "Happy" + String(space) + occasion + String(space) + name + String(exclamation)
}

func graduationFor(name: String, year: Int) -> String {
  "Congratulations \(name)\(exclamation)\nClass of \(year)"
}

func costOf(sign: String) -> Int {
   20 + sign.count * 2
}
