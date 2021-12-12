struct ETL {
   static func transform(_ input: [Int: [String]]) -> [String: Int] {
      input.reduce(into: [:]) { new, old in
         old.value.forEach { letter in
            new[letter.lowercased()] = old.key
         }
      }
   }
}
