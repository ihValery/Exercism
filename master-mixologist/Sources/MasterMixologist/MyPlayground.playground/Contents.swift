import UIKit

func timeToPrepare(drinks: [String]) -> Double {
   let times = ["beer": 0.5, "soda": 0.5, "water": 0.5,
                "shot": 1.0, "mixed drink": 1.5, "fancy drink": 2.5, "frozen drink": 3.0]

   return drinks.compactMap { times[$0] }.reduce(0, +)
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
   var currentTime = Double(minutesLeft)
   
   while !orders.isEmpty && currentTime > 0 {
      currentTime -= timeToPrepare(drinks: orders.removeFirst())
   }
   
   return orders
}

finishShift(minutesLeft: 5, remainingOrders: [["beer", "frozen drink", "shot"], ["fancy drink", "soda"], ["beer", "beer", "water"], ["mixed drink", "frozen drink"]])
// => [["beer", "beer", "water"], ["mixed drink", "frozen drink"]]

func orderTracker(orders: [(drink: String, time: String)]) -> (beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?) {
   
   var beer: (first: String, last: String, total: Int)?
   let ordersBeer = orders.filter { $0.drink == "beer" }
   
   if ordersBeer.count != 0 {
      beer = (first: ordersBeer.min { $0.time < $1.time }!.time,
              last: ordersBeer.max { $0.time < $1.time }!.time,
              total: ordersBeer.count)
   }

   var soda: (first: String, last: String, total: Int)?
   let ordersSoda = orders.filter { $0.drink == "soda" }
   
   if ordersSoda.count != 0 {
      soda = (first: ordersSoda.min { $0.time < $1.time }!.time,
              last: ordersSoda.max { $0.time < $1.time }!.time,
              total: ordersSoda.count)
   }
      
   return (beer: beer, soda: soda)
}


orderTracker(orders: [(drink: "beer", time: "10:01"), (drink: "frozen drink", time: "10:02"), (drink: "shot", time: "10:05"), (drink: "fancy drink", time: "10:06"), (drink: "soda", time: "10:09"), (drink: "beer", time: "10:15"), (drink: "beer", time: "10:22"), (drink: "water", time: "10:26"), (drink: "mixed drink", time: "10:28"), (drink: "frozen drink", time: "10:33")])

// => (beer: (first "10:01", last "10:22", total 3), soda: (first "10:09", last "10:09", total 1))
