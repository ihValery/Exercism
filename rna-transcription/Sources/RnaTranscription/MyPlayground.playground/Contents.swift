import UIKit

class RnaTranscription {
   enum TranscriptionError {
      case invalidNucleotide
   }
}

struct Nucleotide {
   private var input: String
   private var transcription: [Character: String] = ["G": "C",
                                                     "C": "G",
                                                     "T": "A",
                                                     "A": "U"]
   
   init(_ input: String) {
      self.input = input
   }
   
   func complementOfDNA() -> String {
      
      return input.reduce("") { $0 + transcription[$1]! }
   
//      for item in input {
//         if let opa = transcription[item] {
//            output += opa
//         } else {
//            output = "\(item) is not a valid Nucleotide"
//            break
//         }
//      }
//      return output
   }
}

var test = Nucleotide("GCTA").complementOfDNA()
//var test2 = try Nucleotide("ACGTXXXCTTAA").complementOfDNA()
