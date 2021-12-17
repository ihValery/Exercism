import UIKit

/*
 append (даны два списка, добавить все элементы второго списка в конец первого списка);
 concatenate (учитывая серию списков, объединить все элементы во всех списках в один сплющенный список);
 filter (задав предикат и список, вернуть список всех элементов, для которых предикат(item) равен True);
 length (учитывая список, возвращает общее количество элементов в нем);
 map (дана функция и список, возвращает список результатов применения функции(item) ко всем элементам);
 foldl (дана функция, список и начальный аккумулятор, сложить (уменьшить) каждый элемент в аккумулятор слева, используя функцию function(accumulator, item));
 
 foldr (дана функция, список и начальный аккумулятор, складываем (уменьшаем) каждый элемент в аккумулятор справа с помощью функции(item, accumulator));
 reverse (учитывая список, вернуть список со всеми исходными элементами, но в обратном порядке);
 */

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

append([], [1, 2, 3, 4])
append(["1", "2"], ["3"])
concat(["1", "2"], ["3"])
concat([1, 2], [3], [], [4, 5, 6])
filter([1, 2, 3, 4]) { $0.isMultiple(of: 2) }
length([1, 2, 3, 4])
map([1, 3, 5, 7]) { $0 + 1 }
//foldLeft([1, 2], accumulated: 7, combine: -)
print(foldLeft([1, 2], accumulated: 4) { $0 + $1 })
print(foldLeft([2, 5], accumulated: 5, combine: /))
