import Foundation

/*
 Учитывая момент времени, определите момент, который наступит после того, как пройдет гигасекунда.
 Гигасекунда - это 10^9 (1 000 000 000) секунд.
 */

//var decimal: Decimal = 104
//var intDecimal: Int
//intDecimal = NSDecimalNumber(decimal: decimal).intValue
//
//print("Decimal - \(decimal)")
//print("intDecimal - \(intDecimal)")
//
//let currentTime = Date()
////let gigasecond = 1_000_000_000
//let gigasecond = pow(10, 9)
//let gigasecondInt = NSDecimalNumber(decimal: gigasecond).intValue
//let timeInterval = TimeInterval(gigasecondInt)
//
//print(currentTime + timeInterval)
//print(gigasecond)
//print(timeInterval)

struct Gigasecond {
   let description: String
   
   static var dateFormatter: DateFormatter {
      let date = DateFormatter()
      date.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
      date.timeZone = TimeZone(abbreviation: "GMT")
      return date
   }
   
   init? (from: String) {
      guard let time = Self.dateFormatter.date(from: from) else { return nil }
      let gsTime = Date(timeInterval: pow(10, 9), since: time)
      var gigasecond: TimeInterval {
         let gsDec = pow(10, 9)
         let gsInt = NSDecimalNumber(decimal: gsDec).intValue
         return TimeInterval(gsInt)
      }
      
      description = Self.dateFormatter.string(from: gsTime)
   }
}

let gs = Gigasecond(from: "1959-07-19T23:59:59")?.description
print(gs)
