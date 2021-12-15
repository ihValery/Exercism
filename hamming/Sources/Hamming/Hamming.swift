struct Hamming {
    static func compute(_ one: String, against: String) -> Int? {
        guard one.count == against.count else { return nil }

        var oneArr = one.map { $0 }
        var twoArr = against.map { $0 }
        var hammingDistance = 0
        
        for index in oneArr.indices {
            if oneArr[index] != twoArr [index] {
                hammingDistance += 1
            }
        }
        
        return hammingDistance
    }
}
