import UIKit

let flip: (String, String, String) -> (String, String, String) = { ($1, $0, $2) }

flip("red", "yellow", "blue")
// => ("yellow", "red", "blue")

let rotate: (String, String, String) -> (String, String, String) = { ($1, $2, $0) }

rotate("red", "yellow", "blue")
// => ("yellow", "blue", "red")


func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
  fatalError("Please implement the makeShuffle(flipper:rotator:) function")
}
