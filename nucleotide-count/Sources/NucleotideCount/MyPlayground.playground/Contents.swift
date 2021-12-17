import UIKit

struct DNA {
    private var strand: String
    
    init? (strand: String) {
        let nucleotides: [Character] = ["A", "C", "G", "T"]
        guard strand.allSatisfy({ nucleotides.contains($0) }) else { return nil }
        
        self.strand = strand
    }
    
    func counts() -> [Character: Int] {
        var result: [Character: Int] = ["A": 0, "T": 0, "C": 0, "G": 0]
        
        for item in strand {
            result[item]! += 1
        }
        return result
    }
    
    func count(_ nucleotid: Character) -> Int {
        strand.filter { $0 == nucleotid }.count
    }
    
}

let longStrand = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"

let dnaNil = DNA(strand: "John")
let dna = DNA(strand: longStrand)!
let res = dna.counts()
let tt = DNA(strand: "CGATTGGG")!
tt.count("T")

let nucleotides: [Character] = ["A", "C", "G", "T"]
"AGCTCATTCTG".allSatisfy { nucleotides.contains($0) }

Set("AGCTCATTCTG").isSubset(of: "ACGT")
