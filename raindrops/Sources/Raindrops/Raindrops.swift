struct Raindrops {
    var sounds: String

    init(_ number: Int) {
        //словарь это НЕУПОРЯДОЧЕННАЯ коллекция, в нашем случе нельзя его использовать
        //Ответ каждый раз будет разными "PlingPlang" в следующий раз "PlangPling". Кортеж в массиве
        let raindSounds = [(3, "Pling"), (5, "Plang"), (7, "Plong")]
            .reduce("") { result, sound in
                result + (number.isMultiple(of: sound.0) ? sound.1 : "")
            }
        
        sounds = raindSounds.isEmpty ? String(number) : raindSounds
    }
}
