import UIKit

struct Hamming {
    static func compute(_ lhs: String, against rhs: String) -> Int? {
        guard lhs.count == rhs.count else { return nil }
//        guard one != "" else { return 0 }

        return zip(lhs, rhs).filter { $0 != $1 }.count
        
//        var oneArr = lhs.map { $0 }
//        var twoArr = rhs.map { $0 }
//        var hammingDistance = 0
//
//        for index in oneArr.indices {
//            if oneArr[index] != twoArr [index] {
//                hammingDistance += 1
//            }
//        }
//
//        return hammingDistance
    }
}

var hammingDistance = Hamming.compute("12GTR3", against: "12YYY3")
var hammingDistance3 = Hamming.compute("GGACTGA", against:"GGACTGA")
var hammingDistance2 = Hamming.compute("", against: "")
