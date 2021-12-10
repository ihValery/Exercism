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
      var output: String = ""
   
      for item in input {
         if let opa = transcription[item] {
            output += opa
         } else {
            output = "\(item) is not a valid Nucleotide"
            break
         }
      }
      return output
   }
}
