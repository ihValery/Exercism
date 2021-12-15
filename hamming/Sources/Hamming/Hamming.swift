struct Hamming {
    static func compute(_ lhs: String, against rhs: String) -> Int? {
        guard lhs.count == rhs.count else { return nil }

        return zip(lhs, rhs).filter { $0 != $1 }.count
    }
}
