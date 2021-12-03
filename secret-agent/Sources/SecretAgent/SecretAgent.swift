func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
   (f(room), f(f(room)), f(f(f(room))))
}

func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
   func equalPassword(_ pass: String) -> String {
      password == pass ? secret : "Sorry. No hidden secrets here."
   }
   return equalPassword
}
