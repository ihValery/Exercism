struct DNA {
    private var strand: String
    
    init? (strand: String) {
        guard Set(strand).isSubset(of: "ATCG") else { return nil }
        
        self.strand = strand
    }
    
    func counts() -> [String: Int] {
        ["A": count("A"),
         "T": count("T"),
         "C": count("C"),
         "G": count("G")]
    }
    
    func count(_ nucleotid: Character) -> Int {
        strand.filter { $0 == nucleotid }.count
    }
}
