func timeToPrepare(drinks: [String]) -> Double {
   let times = ["beer": 0.5, "soda": 0.5, "water": 0.5,
                "shot": 1.0, "mixed drink": 1.5, "fancy drink": 2.5, "frozen drink": 3.0]

   return drinks.compactMap { times[$0] }.reduce(0, +)
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
   var orders = remainingOrders
   var currentTime = Double(minutesLeft)
   
   while !orders.isEmpty && currentTime > 0 {
      currentTime -= timeToPrepare(drinks: orders.removeFirst())
   }
   
   return orders
}

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
