func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
   if price / (12 * 5) < monthlyBudget {
      return "Yes! I'm getting a \(vehicle)"
   } else if price / (12 * 5) - monthlyBudget < 10 {
      return "I'll have to be frugal if I want a \(vehicle)"
   } else {
      return "Darn! No \(vehicle) for me"
   }
}

func licenseType(numberOfWheels wheels: Int) -> String {
   switch wheels {
   case 2: return "You will need a motorcycle license for your vehicle"
   case 4, 6:  return "You will need an automobile license for your vehicle"
   case 18: return "You will need a commercial trucking license for your vehicle"
   default: return "We do not issue licenses for those types of vehicles"
   }
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
   guard yearsOld < 10 else { return 25}
   
   var result = max(Double(msrp), 25_000.0)
   result *= (1.0 - Double(yearsOld) * 10.0 * 0.01)
   result /= 100
   
   return Int(result.rounded(.down))
}
