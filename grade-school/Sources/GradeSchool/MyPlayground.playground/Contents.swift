import UIKit

struct GradeSchool {
   private(set) var roster: [Int: [String]] = [:]
   
   mutating func addStudent(_ name: String, grade: Int) {
//      var currentGrade = roster[grade, default: []]
//      currentGrade.append(name)
      roster.updateValue( (roster[grade, default: []] + [name]), forKey: grade)
   }
   
   func studentsInGrade(_ grade: Int) -> [String] {
      roster[grade, default: []]
   }
   
   var sortedRoster: [Int: [String]] {
//      roster.mapValues { $0.sorted() }
      
      var result: [Int: [String]] = [:]
      for (grade, names) in roster {
         result[grade] = names
      }
      return result
   }
}

var school181 = GradeSchool()
school181.addStudent("One", grade: 1)
school181.addStudent("Jennifer", grade: 4)
school181.addStudent("Kareem", grade: 6)
school181.addStudent("Christopher", grade: 4)
school181.addStudent("Kyle", grade: 3)
//school181.roster[2] = ["XaXaXa"]
school181.sortedRoster
school181.studentsInGrade(4)
