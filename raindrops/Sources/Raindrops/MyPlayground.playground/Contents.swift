import UIKit

struct Raindrops {
    var sounds: String

    init(_ number: Int) {
        //словарь это НЕУПОРЯДОЧЕННАЯ коллекция, в нашем случе нельзя его использовать
        //Ответ каждый раз будет разными "PlingPlang" в следующий раз "PlangPling". Кортеж в массиве
        let raindSound = [(3, "Pling"), (5, "Plang"), (7, "Plong")]
            .reduce("") { result, sound in
                result + (number.isMultiple(of: sound.0) ? sound.1 : "")
            }
        sounds = raindSound.isEmpty ? String(number) : raindSound
//        var result = ""
//
//        if number.isMultiple(of: 3) { result += "Pling" }
//        if number.isMultiple(of: 5) { result += "Plang" }
//        if number.isMultiple(of: 7) { result += "Plong" }
//        if result.isEmpty { result = String(number) }
//
//        sounds = result
    }
}

var test = Raindrops(15).sounds
