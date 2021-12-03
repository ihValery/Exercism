import UIKit

func cartesianToPolar(_ cart: (x: Double, y: Double)) -> (r: Double, phi: Double) {
   var polarCoordinates: (r: Double, phi: Double) = (0, 0)
   
   polarCoordinates.r = sqrt(pow(cart.x, 2)  + pow(cart.y, 2))
   polarCoordinates.phi = atan2(cart.y, cart.x)
   
   return polarCoordinates
}

func combineRecords(production: (toy: String, id: Int, productLead: String),
                    gifts: (Int, [String])) -> (id: Int, toy: String, productLead: String, recipients: [String]) {
   
   var combineTuples: (id: Int, toy: String, productLead: String, recipients: [String]) = (0, "", "", [""])
   
   combineTuples.id = production.id
   combineTuples.toy = production.toy
   combineTuples.productLead = production.productLead
   combineTuples.recipients = gifts.1

   return combineTuples
}
