import Foundation

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
