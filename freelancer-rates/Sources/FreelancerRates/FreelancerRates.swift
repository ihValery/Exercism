let coefficientDailyRate: Double = 8
let billableDaysInMonth: Double = 22

func dailyRateFrom(hourlyRate: Int) -> Double {
  Double(hourlyRate) * coefficientDailyRate
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
   (dailyRateFrom(hourlyRate: hourlyRate) * billableDaysInMonth * (1 - discount * 0.01)).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
   (budget / (dailyRateFrom(hourlyRate: hourlyRate) * (1 - discount * 0.01))).rounded(.down)
}
