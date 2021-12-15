import UIKit

struct Hamming {
    static func compute(_ lhs: String, against rhs: String) -> Int? {
        guard lhs.count == rhs.count else { return nil }
//        guard one != "" else { return 0 }

//        return zip(lhs, rhs).filter { $0 != $1 }.count
        
        var hammingDistance = 0
        for index in 0..<lhs.count {
            if Array(lhs)[index] != Array(rhs)[index] {
                hammingDistance += 1
            }
        }

        return hammingDistance
    }
}

var hammingDistance = Hamming.compute("12GTR3", against: "12YYY3")
var hammingDistance3 = Hamming.compute("GGACTGA", against:"GGACTGA")
var hammingDistance2 = Hamming.compute("", against: "")
