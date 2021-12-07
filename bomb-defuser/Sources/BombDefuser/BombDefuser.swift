import Foundation

typealias wire = (String, String, String)

let flip: (wire) -> wire = { ($0.1, $0.0, $0.2) }

let rotate: (wire) -> wire = { ($0.1, $0.2, $0.0) }

func makeShuffle(flipper: @escaping (wire) -> wire,
                 rotator: @escaping (wire) -> wire) -> (UInt8, (wire)) -> wire {
   { id, wireForDemining in
      let binaryId = String(format: "%08d", Int(String(id, radix: 2)) ?? 0)

      return binaryId.reversed().reduce(wireForDemining) { result, index in
         index == "0" ? flipper(result) : rotator(result)
      }
   }
}
