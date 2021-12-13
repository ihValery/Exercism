struct GradeSchool {
   var roster: [Int: [String]] = [:]
   
   mutating func addStudent(_ name: String, grade: Int) {
      var currentGrade = roster[grade, default: []]
      currentGrade.append(name)
      roster.updateValue(currentGrade, forKey: grade)
   }
   
   func studentsInGrade(_ grade: Int) -> [String] {
      roster[grade, default: []]
   }
}
