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
      case "[\(Self.trace.rawValue)]":
         self = .trace
      case "[\(Self.debug.rawValue)]":
         self = .debug
      case "[\(Self.info.rawValue)]":
         self = .info
      case "[\(Self.warning.rawValue)]":
         self = .warning
      case "[\(Self.error.rawValue)]":
         self = .error
      case "[\(Self.fatal.rawValue)]":
         self = .fatal
      default:
         self = .unknown
      }
   }

   func shortFormat(message: String) -> String {
      var code: Int
      switch self {
      case .trace:
         code = 0
      case .debug:
         code = 1
      case .info:
         code = 4
      case .warning:
         code = 5
      case .error:
         code = 6
      case .fatal:
         code = 7
      case .unknown:
         code = 42
      }
      return "\(code):" + message
   }
}
