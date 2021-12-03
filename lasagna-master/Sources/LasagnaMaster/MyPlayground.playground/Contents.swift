import UIKit

func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
   expectedMinutesInOven - elapsedMinutes
}

func preparationTimeInMinutes(layers: String...) -> Int {
   layers.count * 2
}

func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
   let noodles = layers.filter { $0 == "noodles" }.count * 3
   let sauce =  Double(layers.filter { $0 == "sauce" }.count) * 0.2
   
   return (noodles, sauce)
}

func toOz(_ quantities: inout (noodles: Int, sauce: Double)) {
   quantities.sauce *= 33.814
}

// TODO: define the 'redWine' function

//func redWine(layers: String...) -> Bool {
//   var forWhite = 0
//   var forRed = 0
//
//   func mozzarella(_ counter: inout Int) {
//      counter += layers.filter { $0 == "mozzarella" }.count
//   }
//
//   func ricotta() -> Int {
//      layers.filter { $0.hasPrefix("rico") }.count
//   }
//
//   func bechamel() {
//      for item in layers {
//         if item == "béchamel" {
//            forWhite += 1
//         }
//      }
//   }
//
//   func sauce(counter: inout Int) {
//      counter += layers.filter { $0.hasSuffix("uce") }.count
//   }
//
//   func meat() {
//      var new = layers.map { $0 == "meat" }
//      new.removeAll { $0 == false }
//      forRed += new.count
//   }
//
//   mozzarella(&forWhite)
//   forWhite += ricotta()
//   bechamel()
//   sauce(counter: &forRed)
//   meat()
//
//   return forRed >= forWhite
//}

func redWine(layers: String...) -> Bool {
   var white = 0, red = 0
   
   func counter(_ names: String..., for counter: inout Int) {
      counter += layers.filter { names.contains($0) }.count
   }
   
   counter("mozzarella", "ricotta", "béchamel", for: &white)
   counter("sauce", "meat", for: &red)
   
   return red >= white
}


//redWine(layers: "sauce", "noodles", "sauce", "meat", "mozzarella", "noodles", "sauce", "eggplant", "béchamel", "noodles", "sauce", "mozzarella")
//// => true
//redWine(layers: "sauce", "noodles", "béchamel", "meat", "mozzarella", "noodles", "ricotta", "eggplant", "béchamel", "noodles", "sauce", "mozzarella")
//// => false

redWine(layers: "sauce", "noodles", "béchamel", "meat", "mozzarella", "noodles", "sauce", "ricotta", "eggplant", "mozzarella", "béchamel", "noodles", "meat", "sauce", "mozzarella")
