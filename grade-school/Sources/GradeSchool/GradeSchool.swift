struct GradeSchool {
   private(set) var roster: [Int: [String]] = [:]
   
   mutating func addStudent(_ name: String, grade: Int) {
      var currentGrade = roster[grade, default: []]
      currentGrade.append(name)
      roster.updateValue(currentGrade, forKey: grade)
//      roster.updateValue( (roster[grade, default: []] + [name]), forKey: grade)
   }
   
   func studentsInGrade(_ grade: Int) -> [String] {
      roster[grade, default: []]
   }
   
   var sortedRoster: [Int: [String]] {
      roster.mapValues { $0.sorted() }
   }
}
