/* 1. Выполните задание #1 урока о базовых операторах: http://vk.com/topic-58860049_31536965
только вместо forced unwrapping и optional binding используйте оператор ??
Когда посчитаете сумму, то представьте свое выражение в виде строки
Например: 5 + nil + 2 + 3 + nil = 10
но в первом случае используйте интерполяцию строк, а во втором конкатенацию
*/
import Foundation

var one  = "10"
let two = "15sss"
let three = "30"
let four = "four40"
let five = "5"

var oneInt: Int = Int(one) ?? 0
let twoInt: Int = Int(two) ?? 0
let threeInt: Int = Int(three) ?? 0
let fourInt: Int = Int(four) ?? 0
let fiveInt: Int = Int(five) ?? 0


let sum  = oneInt + twoInt + threeInt + fourInt + fiveInt
// Интерполяция строк
let str1 = "\(oneInt)+\(twoInt)+\(three)+\(fourInt)+\(fiveInt) = \(sum)"
print(str1)

//Конкатенация строк
let strSum = String(sum)
let strOne = String(oneInt)
let strTwo = String(twoInt)
let strThree = String(threeInt)
let strFour = String(fourInt)
let strFive = String(fiveInt)
let str2 = strOne + "+" + strTwo + "+" + strThree + "+" + strFour + "+" + strFive + " = " + strSum
print(str2)


/* 2. Поиграйтесь с юникодом и создайте строку из 5 самых классных по вашему мнению символов,
можно использовать составные символы. Посчитайте длину строки методом SWIFT и Obj-C
 */

let char1: Character = "\u{1F1FA}\u{1F1F8}"
let char2: Character = "\u{265E}"
let char3: Character = "\u{2602}"
let char4: Character = "\u{266B}"
let char5: Character = "\u{0B87}"

let str: String = "\(char1)\(char2)\(char3)\(char4)\(char5)"
print("length of string \(str.count)")
(str as NSString).length


/*3. Создайте строку английский алфавит, все буквы малые от a до z
задайте константу - один из символов этого алфавита
Используя цикл for определите под каким индексов в строке находится этот символ
 
 for index in greeting.indices {
 print("\(greeting[index]) ", terminator: "")
 }
 // Prints "G u t e n   T a g ! "
 
 */
let alphabet = "abcdefghijklmnopqrstuvwxvz"
var letter: Character = "n"
var index = 0
for lett in alphabet {
    index+=1
    if lett == letter {
        print("index = \(index)")
    }
}

