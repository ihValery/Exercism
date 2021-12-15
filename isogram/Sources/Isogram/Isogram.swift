func isIsogram(_ input: String) -> Bool {
    let onlyLetters = input.lowercased().filter { $0.isLetter }
    return onlyLetters.count == Set(onlyLetters).count
}
