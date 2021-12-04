func timeToPrepare(drinks: [String]) -> Double {
   var counter = 0.0
   let times = ["beer": 0.5, "soda": 0.5, "water": 0.5,
                "shot": 1.0, "mixed drink": 1.5, "fancy drink": 2.5, "frozen drink": 3.0]
   
   for item in drinks {
      counter += times[item] ?? 0
   }
   
   return counter
}

func makeWedges(needed: Int, limes: [String]) -> Int {
   var limeWedges = 0
   var limeCounter = 0
   
   for item in limes {
      if limeWedges < needed {
         switch item {
         case "small":
            limeWedges += 6
         case "medium":
            limeWedges += 8
         case "large":
            limeWedges += 10
         default:
            break
         }
         limeCounter += 1
      }
   }
   return limeCounter
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
   fatalError("Please implement the finishShift(minutesLeft:remainingOrders:) function")
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
   beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
   fatalError("Please implement the orderTracker(orders:) function")
}
