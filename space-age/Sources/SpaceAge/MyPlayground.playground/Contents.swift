import UIKit

/*
 Mercury: orbital period 0.2408467 Earth years
 Venus: orbital period 0.61519726 Earth years
 Earth: orbital period 1.0 Earth years, 365.25 Earth days, or 31557600 seconds
 Mars: orbital period 1.8808158 Earth years
 Jupiter: orbital period 11.862615 Earth years
 Saturn: orbital period 29.447498 Earth years
 Uranus: orbital period 84.016846 Earth years
 Neptune: orbital period 164.79132 Earth years
 */

enum Planet: Double {
   case Mercury = 0.2408467
   case Venus = 0.61519726
   case Earth = 1.0
   case Mars = 1.8808158
   case Jupiter = 11.862615
   case Saturn = 29.447498
   case Uranus = 84.016846
   case Neptune = 164.79132
}

struct SpaceAge {
   var seconds: Double
   
   var onMercury: Double {
      calculatingAge(.Mercury)
   }
   
   var onVenus: Double {
      calculatingAge(.Venus)
   }
   
   var onEarth: Double {
      calculatingAge(.Earth)
   }
   
   var onMars: Double {
      calculatingAge(.Mars)
   }
   
   var onJupiter: Double {
      calculatingAge(.Jupiter)
   }
   
   var onSaturn: Double {
      calculatingAge(.Saturn)
   }
   
   var onUranus: Double {
      calculatingAge(.Uranus)
   }
   
   var onNeptune: Double {
      calculatingAge(.Neptune)
   }
   
   init(_ seconds: Double) {
      self.seconds = seconds
   }
   
   private func calculatingAge(_ planet: Planet) -> Double {
      let secondYear: Double = 31_557_600
      return (100 * seconds / secondYear / planet.rawValue).rounded() / 100
   }
}

let age = SpaceAge(2_134_835_688)
age.seconds
age.onMercury
