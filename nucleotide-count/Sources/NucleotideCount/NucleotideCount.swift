struct DNA {
    private var strand: String
    
    init? (strand: String) {
        let nucleotides = ["A", "C", "G", "T"]
        guard Set(strand).isSubset(of: "ATCG") else { return nil }
//        guard strand.allSatisfy({ nucleotides.contains( String($0) ) }) else { return nil }
        
        self.strand = strand
    }
    
    func counts() -> [String: Int] {
        var result = ["A": 0, "T": 0, "C": 0, "G": 0]
        
        for item in strand {
            result[String(item)]! += 1
        }
        return result
    }
    
    func count(_ nucleotid: Character) -> Int {
        strand.filter { $0 == nucleotid }.count
    }
}
