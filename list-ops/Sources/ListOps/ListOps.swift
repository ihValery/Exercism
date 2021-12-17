func append<T>(_ first: [T], _ second: [T]) -> [T] {
    first + second
}

func concat<T>(_ input: [T]...) -> [T] {
    var result: [T] = []
    for index in input.indices {
        result += input[index]
    }
    return result
}

func filter<T>(_ input: [T], predicate: (T) -> Bool) -> [T] {
    var result: [T] = []
    for item in input {
        if predicate(item) {
            result.append(item)
        }
    }
    return result
}

func length<T>(_ input: [T]) -> Int {
    var count = 0
    for _ in input {
        count += 1
    }
    return count
}

func map<T>(_ input: [T], predicate: (T) -> T) -> [T] {
    var resalt: [T] = []
    for item in input {
        resalt.append(predicate(item))
    }
    return resalt
}

func foldLeft<T>(_ input: [T], accumulated: T, combine: (T, T) -> T) -> T {
    var result = accumulated
    for item in input {
        result = combine(result, item)
    }
    return result
}

func foldRight<T>(_ input: [T], accumulated: T, combine: (T, T) -> T) -> T {
    var result = accumulated
    for index in input.indices {
        let revIndex = (input.count - 1) - index
        result = combine(input[revIndex], result)
    }
    return result
}

func reverse<T>(_ input: [T]) -> [T] {
    var result: [T] = []
    for index in input.indices {
        let revIndex = (input.count - 1) - index
        result.append(input[revIndex])
    }
    return result
}
