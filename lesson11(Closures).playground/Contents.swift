/* 1. Написать функцию, которая ничего не возвращает и принимает только один клоужер, который ничего не принимает и ничего не возвращает . Функция должна просто посчитать от 1 до 10 в цикле и после этого вызвать клоужер. Добавьте println в каждый виток цикла и в клоужер и проследите за очередностью выполнения команд.
 */

//func zero(value: () -> ()) {
//    for i in 1...10 {
//        print(i)
//    }
//    value()
//}
//
//zero(value: {print("Hello, I closures")})
//zero(value: {print("Hi, I'm to closures")})


// 2. Используя метод массивов sorted, отсортируйте массив интов по возрастанию и убыванию. Пример показан в методичке.

var array = [2, 5, 7, 1, 3, 6]
//MARK: Sorted by waning
print(array.sorted() { $0 > $1 })
//MARK: Sorted by acsending
print(array.sorted() { $0 < $1 })

/* 3. Напишите функцию, которая принимает массив интов и клоужер и возвращает инт. Клоужер должен принимать 2 инта (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную. Используя этот метод и этот клоужер найдите максимальный и минимальный элементы массива.
*/

let arrayInt = [33, 2, 3, 4, 5]

func valueMinMax(arrayList: [Int], f:(Int, Int?) -> Bool) -> Int? {
    var value: Int?
    value = arrayList[0]
    for number in arrayList {
        if f(value!, number){
            value = number
        }
    }
    return value
}

let maxValue = valueMinMax(arrayList: arrayInt) {$0 > $1!}
maxValue

let minValue = valueMinMax(arrayList: arrayInt) {$0 < $1!}
minValue

/* 4. Создайте произвольную строку. Преобразуйте ее в массив букв. Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли гласные в алфавитном порядке, потом согласные, потом цифры, а потом символы
*/
let anyString = "hello4, my7; friend2:"

func sortArrayString(arrayString str: String) -> [Character] {
    var arrayChar = [Character]()
    for char in str {
        arrayChar += [char]
    }
    return arrayChar
}

var newStr = sortArrayString(arrayString: anyString)
var f = String(newStr)

func priority (newStr: String) -> String {
    var a = [Character]()
    var b = [Character]()
    var c = [Character]()
    var d = [Character]()
    
    for ch in newStr {
        switch ch {
        case "a", "e", "i", "o", "u":
            a.append(ch)
        case "a"..."z":
            b.append(ch)
        case "0"..."9":
            c.append(ch)
        default:
            d.append(ch)
        }
    }
    print(a.sorted())
    let glas = a.sorted()
    let sogl = b.sorted()
    let cifr = c.sorted()
    return String(glas+sogl+cifr+d)
}

priority(newStr: f)

// 5. Проделайте задание №3 но для нахождения минимальной и максимальной буквы из массива букв (соответственно скалярному значению)

//func minMaxABC(charList: [Character], maxMin:(Character, Character?) -> Bool) -> Character {
//    var char = ""
//    var str: String = ""
//    for ch in charList {
//        str += String(ch)
//    }
//    for s in str.unicodeScalars {
//        print(s.value)
//        if maxMin(char, s) {
//            char = s
//        }
//    }
//    return Character(char)
//}
//
//let mixChar: [Character] = ["F", "A", "B"]
//let maxChar = minMaxABC(charList: mixChar){$0 > $1!}
//maxChar
//
//let minChar = minMaxABC(charList: mixChar){$0 < $1!}
//minChar

func dinam(a: Int, m:(_ u1: Int, _ u2:Int) -> Int) -> Int {
    var rez = 0
    let s:  = 0
    m(u1: a, u2: s){
        return rez
    }
    return rez
}

