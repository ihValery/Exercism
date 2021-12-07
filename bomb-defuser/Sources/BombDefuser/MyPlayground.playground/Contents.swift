import UIKit

typealias wire = (String, String, String)

let flip: (wire) -> wire = { ($0.1, $0.0, $0.2) }

flip(("red", "yellow", "blue"))
// => ("yellow", "red", "blue")

let rotate: (wire) -> wire = { ($0.1, $0.2, $0.0) }

rotate(("red", "yellow", "blue"))
// => ("yellow", "blue", "red")


func makeShuffle(flipper: @escaping (wire) -> wire,
                 rotator: @escaping (wire) -> wire) -> (UInt8, (wire)) -> wire {
   { id, wireForDemining in
      let binaryId = String(format: "%08d", Int(String(id, radix: 2)) ?? 0)

      return binaryId.reversed().reduce(wireForDemining) { result, index in
         index == "0" ? flipper(result) : rotator(result)
      }
      
      //      var sequenceDemining = wireForDemining
      //
      //      for i in binaryId.reversed() {
      //         sequenceDemining = i == "0" ? flipper(sequenceDemining) : rotator(sequenceDemining)
      //      }
      //      return sequenceDemining
   }
}
let shuffler = makeShuffle(flipper: flip, rotator: rotate)
// => (UInt8, (String, String, String)) -> (String, String, String)
shuffler(155, ("red", "yellow", "blue"))
// => ("red", "blue", "yellow")
