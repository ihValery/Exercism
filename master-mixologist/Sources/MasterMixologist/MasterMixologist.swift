func timeToPrepare(drinks: [String]) -> Double {
   let times = ["beer": 0.5, "soda": 0.5, "water": 0.5,
                "shot": 1.0, "mixed drink": 1.5, "fancy drink": 2.5, "frozen drink": 3.0]
  
   return drinks.compactMap { times[$0] }.reduce(0, +)
}

func makeWedges(needed: Int, limes: [String]) -> Int {
   let wedgesOneLime = ["small": 6, "medium": 8, "large": 10]
   var slicedWedges = 0
   
   return limes.compactMap { wedgesOneLime[$0] }.filter {
      while slicedWedges < needed {
         slicedWedges += $0
         return true
      }
      return false
   }.count
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
   var orders = remainingOrders
   var currentMinutes = Double(minutesLeft)
   
   while !orders.isEmpty && currentMinutes > 0 {
      currentMinutes -= timeToPrepare(drinks: orders.removeFirst())
   }
   
   return orders
}

func orderTracker(orders: [(drink: String, time: String)]) -> (beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?) {
   typealias OrderResult = (first: String, last: String, total: Int)
   
   var beer: OrderResult?
   let ordersBeer = orders.filter { $0.drink == "beer" }.map { $0.time }.sorted()
   
   if let first = ordersBeer.first, let last = ordersBeer.last {
      beer = (first: first, last: last, total: ordersBeer.count)
   }

  var soda: OrderResult?
   let ordersSoda = orders.filter { $0.drink == "soda" }.map { $0.time }.sorted()
   
   if let first = ordersSoda.first, let last = ordersSoda.last {
      soda = (first: first, last: last, total: ordersSoda.count)
   }
   
   return (beer: beer, soda: soda)
}
