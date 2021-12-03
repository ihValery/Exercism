import Foundation

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
   guard let diameter = diameter, let slices = slices,
         diameter >= 0 && slices > 1 else { return nil }
   
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
