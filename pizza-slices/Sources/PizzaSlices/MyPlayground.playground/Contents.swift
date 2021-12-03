import UIKit

var optionalA: Int?
var optionalB: Int?

optionalA = 102
optionalB = 100

//optionalA < optionalB

switch (optionalA, optionalB) {
   
case let (a?, b?):
   a <= b
default:
   false
}
//Binary operator '<' cannot be applied to two 'Int?' operands

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
   guard let diameter = diameter else { return nil }
   guard let slices = slices else { return nil }
   
   guard diameter > -1 && slices > 1 else { return nil }
   
   return ( .pi * pow((diameter / 2), 2) * Double(360 / slices) ) / 360
}

func biggestSlice(diameterA: String, slicesA: String, diameterB: String, slicesB: String) -> String {
   let pizzaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
   let pizzaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))

   switch (pizzaA, pizzaB) {
   case (nil, nil):
      return "Neither slice is bigger"
   case (_?, nil):
      return "Slice A is bigger"
   case (nil, _?):
      return "Slice B is bigger"
   case let (a?, b?) where a == b:
      return "Neither slice is bigger"
   case let (a?, b?):
      return a > b ? "Slice A is bigger" : "Slice B is bigger"
   }
}

biggestSlice(diameterA: "16", slicesA: "-8", diameterB: "16 inches", slicesB: "8")
// => Neither slice is bigger

biggestSlice(diameterA: "10", slicesA: "6", diameterB: "14", slicesB: "12")
// => Slice A is bigger
biggestSlice(diameterA: "10", slicesA: "6", diameterB: "12", slicesB: "8")
// => Slice B is bigger
biggestSlice(diameterA: "Pepperoni", slicesA: "6", diameterB: "Sausage", slicesB: "12")
// => Neither slice is bigger
biggestSlice(diameterA: "0", slicesA: "8", diameterB: "16 inches", slicesB: "8")
// => Slice A is bigger
