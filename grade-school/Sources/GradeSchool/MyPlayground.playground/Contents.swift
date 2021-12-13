import UIKit


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

var school181 = GradeSchool()
school181.addStudent("One", grade: 1)
school181.addStudent("Two", grade: 3)
school181.addStudent("Three", grade: 2)
school181.roster
school181.studentsInGrade(1)
//school181.sortedRoster
