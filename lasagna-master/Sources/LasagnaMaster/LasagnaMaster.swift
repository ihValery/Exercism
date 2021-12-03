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

func redWine(layers: String...) -> Bool {
   var white = 0, red = 0
   
   func counter(_ names: String..., for counter: inout Int) {
      counter += layers.filter { names.contains($0) }.count
   }
   
   counter("mozzarella", "ricotta", "béchamel", for: &white)
   counter("sauce", "meat", for: &red)
   
   return red >= white
}
