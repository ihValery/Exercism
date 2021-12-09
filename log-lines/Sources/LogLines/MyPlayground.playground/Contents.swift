import UIKit

enum LogLevel: String {
   case trace = "TRC"
   case debug = "DBG"
   case info = "INF"
   case warning = "WRN"
   case error = "ERR"
   case fatal = "FTL"
   case unknown
 
   init(_ line: String) {
      
      switch line.prefix(5) {
      case "[\(LogLevel.trace.rawValue)]":
         self = .trace
      case "[\(LogLevel.debug.rawValue)]":
         self = .debug
      case "[\(LogLevel.info.rawValue)]":
         self = .info
      case "[\(LogLevel.warning.rawValue)]":
         self = .warning
      case "[\(LogLevel.error.rawValue)]":
         self = .error
      case "[\(LogLevel.fatal.rawValue)]":
         self = .fatal
      default:
         self = .unknown
      }
   }

   func shortFormat(message: String) -> String {
      var number: Int
      switch self {
      case .trace:
         number = 0
      case .debug:
         number = 1
      case .info:
         number = 4
      case .warning:
         number = 5
      case .error:
         number = 6
      case .fatal:
         number = 7
      case .unknown:
         number = 42
      }
      return "\(number):" + message
   }
}

let overflow = LogLevel.error
overflow.shortFormat(message: "Stack overflow")
// => "6:Stack overflow"



LogLevel("[INF]: File deleted")
LogLevel("[FTL]: fatal")
// => LogLevel.info
LogLevel("Something went wrong!")
//// => LogLevel.unknown
