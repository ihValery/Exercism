import UIKit

/*
в каждом году, который равномерно делится на 4
кроме каждого года, который делится на 100
если только год также не делится на 400.
 */

struct Year {
   let calendarYear: Int
   
   var isLeapYear: Bool {
      calendarYear.isMultiple(of: 4) &&
      !calendarYear.isMultiple(of: 100) ||
      calendarYear.isMultiple(of: 400)
   }
   
//   init (calendarYear: Int) {
//      let century = !calendarYear.isMultiple(of: 100) || calendarYear.isMultiple(of: 400)
//
//      if calendarYear.isMultiple(of: 4) && century {
//         isLeapYear = true
//      } else {
//         isLeapYear = false
//      }
//   }
}

let year1996 = Year(calendarYear: 1996)
year1996.isLeapYear
//true

let year1997 = Year(calendarYear: 1997)
year1997.isLeapYear
//false

let year1900 = Year(calendarYear: 1900)
year1900.isLeapYear
//false

let year2400 = Year(calendarYear: 2400)
year2400.isLeapYear
//true
