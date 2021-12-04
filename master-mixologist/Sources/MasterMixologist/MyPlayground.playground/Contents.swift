import UIKit

func timeToPrepare(drinks: [String]) -> Double {
   var counter = 0.0
   let times = ["beer": 0.5, "soda": 0.5, "water": 0.5,
                "shot": 1.0, "mixed drink": 1.5, "fancy drink": 2.5, "frozen drink": 3.0]
   
   for item in drinks {
      counter += times[item] ?? 0
   }
   
   return counter
}

timeToPrepare(drinks: [])
timeToPrepare(drinks: ["beer", "frozen drink", "shot"])
timeToPrepare(drinks: ["beer", "shot", "water", "fancy drink", "frozen drink", "fancy drink"])

func makeWedges(needed: Int, limes: [String]) -> Int {
   var limeCount = 0
   var counter = 0
   
   for item in limes {
      if limeCount < needed {
         switch item {
         case "small":
            limeCount += 6
         case "medium":
            limeCount += 8
         case "large":
            limeCount += 10
         default:
            break
         }
         counter += 1
      }
   }
   return counter
}

makeWedges(needed: 3, limes: [])
makeWedges(needed: 25, limes: ["small", "small", "large", "medium", "small"])
makeWedges(needed: 0, limes: ["small", "large", "large", "medium", "small", "large", "large"])

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
   var orders = remainingOrders
   var currentTime = minutesLeft
   
   while !orders.isEmpty && currentTime > 0 {
      currentTime -= Int(timeToPrepare(drinks: orders.removeFirst()))
   }
   
   return orders
}

finishShift(minutesLeft: 5, remainingOrders: [["beer", "frozen drink", "shot"], ["fancy drink", "soda"], ["beer", "beer", "water"], ["mixed drink", "frozen drink"]])
// => [["beer", "beer", "water"], ["mixed drink", "frozen drink"]]




func orderTracker(orders: [(drink: String, time: String)]) -> (
   beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
   fatalError("Please implement the orderTracker(orders:) function")
}
