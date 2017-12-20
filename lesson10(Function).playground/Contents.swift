/* 1. Создайте пару функций с короткими именами, которые возвращают строку с классным символом или символами. Например heart() возвращает сердце и т.п.
 Вызовите все эти функции внутри принта для вывода строки этих символов путем конкатенации.
*/
import Foundation

print("---------task 1---------")

func snow() -> String {
//    let varSnow: Character = "\u{&#8258}"
    return "\u{2042}"
}
func oneSnow() -> String {
    return "\u{2055}"
}

print(snow() + oneSnow())

/* 2. Опять шахматные клетки. Реализовать функцию, которая принимает букву и символ и возвращает строку “белая” или “черная”.
 Строку потом распечатайте в консоль
*/
print("---------task 2---------")

func myTurn(еnterTheLetter char: String, еnterTheNumeral num: Int) -> String {
    let horizontalLine = ["A", "B", "C", "D", "I", "F", "G", "H"]
    var color = "Black"
    if horizontalLine.contains(char){
        for (index, value) in horizontalLine.enumerated(){
            if value == char {
                if num%2 == (index+1)%2 {
                    color = "White"
                }
            }
        }
    }
    return color
}
print(myTurn(еnterTheLetter: "H", еnterTheNumeral: 4))

/* 3. Создайте функцию, которая принимает массив, а возвращает массив в обратном порядке. Можете создать еще одну, которая принимает последовательность и возвращает массив в обратном порядке. Чтобы не дублировать код, сделайте так, чтобы функция с последовательностью вызывала первую.
*/
print("---------task 3---------")
func reversList(getList arrayList: [Int]) -> [Int] {
   var reversListItems = [Int]()
    for item in arrayList {
        reversListItems.insert(item, at: 0)
    }
    print(reversListItems)
    return reversListItems
}
let age = [2, 6, 9, 7]
reversList(getList: age)

func reversList2(getList2: [Int]) -> [Int]{
    return reversList(getList: getList2)
}

let numbers = [1, 2, 3, 4, 5]
reversList2(getList2: numbers)


/* 4. Разберитесь с inout самостоятельно и выполните задание номер 3 так, чтобы функция не возвращала перевернутый массив, но меняла элементы в существующем. Что будет если убрать inout?
*/
print("---------task 4---------")
func changeList(getArray arr: inout [Int]) -> [Int] {
    print(arr.count)
    for i in 0..<arr.count {
        arr[i] += 5
    }
    return arr
}

var numeric = [5,10,15,20]
changeList(getArray: &numeric)


/* 5. Создайте функцию, которая принимает строку, убирает из нее все знаки препинания, делает все гласные большими буквами, согласные маленькими, а цифры меняет на соответствующие слова (9 -> nine и тд)
*/
print("---------task 5---------")

var myString = "L,ooking 10 for the meanings 7 of 6 words, 5 phrases, and expressions?"

func changeString(str: String) -> String {
    var resultString = ""
    let dicNumer = ["0": "zero", "1": "one", "2": "two", "3": "three", "5": "five", "6": "six", "7": "seven", "8": "eight", "9": "nine"]
    for char in str {
        let char = String(char)
        switch char {
        case "a", "e", "i", "o", "u":
            resultString += char.uppercased()
            print()
        case "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z":
            resultString += char.lowercased()
        case "0", "1", "2", "3", "5", "6", "7", "8", "9":
            resultString += dicNumer["\(char)"]!
        case ",", ".", ":", ";", "!", "?", "-":
            resultString += ""
        default:
            resultString += char
        }
    }
return resultString
}

print(changeString(str: myString))
