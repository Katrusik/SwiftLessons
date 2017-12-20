//1. Создать строку произвольного текста, минимум 200 символов. Используя цикл и оператор свитч посчитать количество гласных, согласных, цифр и символов.
print("task 1")
let text = "There are many big and small libraries everywhere in our country." +
                "They have millions of books in different languages." +
                "You can find there the oldest and the newest books." +
                "Every school has a library. Pupils come to the library to take books on different subjects."

print("----solution 1------")
var vowelSum = 0
var consonantSum = 0
var numeralSum = 0
var otherCharacters = 0

for char in text {
    switch char {
    case "a", "e", "i", "o", "u":
        vowelSum += 1
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z" :
        consonantSum += 1
    case "0", "1", "2", "3", "5", "6", "7", "8", "9":
        numeralSum += 1
    default:
        otherCharacters += 1
    }
}
print(vowelSum)
print(consonantSum)
print(numeralSum)
print(otherCharacters)

print("----solution 2------")
let vowelsList: [Character] = ["a", "e", "i", "o", "u"]
let consonantsList: [Character] = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z" ]
let numeralList:[Character] = ["0", "1", "2", "3", "5", "6", "7", "8", "9"]

var vowelSum2 = 0
var consonantSum2 = 0
var numeralSum2 = 0
var otherCharacters2 = 0

for char in text {
    switch char {
    case _ where vowelsList.contains(char):
        vowelSum2 += 1
    case _ where consonantsList.contains(char):
        consonantSum2 += 1
    case _ where numeralList.contains(char):
        numeralSum2 += 1
    default:
        otherCharacters2 += 1
    }
}
print(vowelSum2)
print(consonantSum2)
print(numeralSum2)
print(otherCharacters2)

//2. Создайте свитч который принимает возраст человека и выводит описание жизненного этапа
print("task 2")
let age: Float = 0.2

switch age {
case 0...1:
    print("newborn")
case 1..<7:
    print("preschool age")
case 7...15:
    print("schoolchild")
case 16...21:
    print("student")
default:
    print("most senior")
}

/*3. У вас есть имя отчество и фамилия студента (русские буквы). Имя начинается с А или О, то обращайтесь к студенту по имени, если же нет, то если у него отчество начинается на В или Д, то обращайтесь к нему по имени и отчеству, если же опять нет, то в случае если фамилия начинается с Е или З, то обращайтесь к нему только по фамилии. В противном случае обращайтесь к нему по полному имени.
 */
print("task 3")
let student = (surname: "Трифонова", name:"Екатерина", patronymic: "Владимировна")

switch student {
case (_, let name, _) where name.hasPrefix("A") || name.hasPrefix("О"):
    print("Привет \(student.name)")
case (_, _, let patronymic) where patronymic.hasPrefix("В") || patronymic.hasPrefix("Д"):
    print("Привет \(student.name) \(student.surname)")
case (let surname, _, _) where surname.hasPrefix("Е") || surname.hasPrefix("З"):
    print("Привет \(student.surname)")
default:
    print("Привет \(student.surname) \(student.name) \(student.patronymic)")
}


/*4. Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 (можно буквы и цифры, а можно только цифры). Вы должны создать свитч, который примет тюпл с координатой и выдаст один из вариантов: мимо, ранил, убил.
 */
print("task 4")
let horizontal = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let vertical = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for h in horizontal {
    for v in vertical {
        let point = (h, v)
        switch point {
        case (1, 1), (3, 5), (4,5), (7, 6):
            print("Wounded!")
        case (10, 3), (7, 5), (6, 9), (7, 6), (10, 10):
             print("Killed!")
        default:
            print("Past!")
        }
    }
}

