func isIsogram(_ input: String) -> Bool {
    var onlyLetters = input.lowercased().filter { $0.isLetter }
    return onlyLetters.count == Set(onlyLetters).count
}
