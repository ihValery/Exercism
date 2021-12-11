enum TranscriptionError: Error {
   case invalidNucleotide(message: String)
}

struct Nucleotide {
   private let input: String
   private let transcription: [Character: String] = ["G": "C",
                                                     "C": "G",
                                                     "T": "A",
                                                     "A": "U"]
   
   init(_ input: String) {
      self.input = input
   }
   
   func complementOfDNA() throws -> String {
      try input.reduce("") { output, character in
         
         guard let char = transcription[character] else {
            throw TranscriptionError.invalidNucleotide(message: "\(character) is not a valid Nucleotide")
         }
         
         return output + char
      }
   }
}
