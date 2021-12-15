import Foundation

struct Grains {
    enum GrainsError: Error {
        case inputTooHigh(String)
        case inputTooLow(String)
    }
    
    static var total: Double {
        //Так как количество зерен удваивается, нам не нужен цикл в 64 шага
        //Просто получаем количество зерен на 65 клетке )))
        pow(2.0, Double(64))
    }
    
    //𝑏𝑛 = 𝑏1⋅𝑞𝑛−1
    static func square(_ n: Int) throws -> Double {
        let message = "Input[\(n)] invalid. Input should be between 1 and 64 (inclusive)"
        
        guard n <= 64 else { throw GrainsError.inputTooHigh(message) }
        guard n >= 1 else { throw GrainsError.inputTooLow(message) }
        
        return pow(2.0, Double(n-1))
    }
}
