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
      let df = DateFormatter()
      df.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
      df.timeZone = TimeZone(abbreviation: "GMT")
      return df
   }
   
   init? (from: String) {
      guard let time = Self.dateFormatter.date(from: from) else { return nil }
      
      let result = Date(timeInterval: pow(10, 9), since: time)
      description = Self.dateFormatter.string(from: result)
   }
}

let gs = Gigasecond(from: "1959-07-19T23:59:59")?.description
print(gs)
