//1. Посчитать количество секунд от начала года до вашего дня рождения (ДР 04.12). Игнорируйте високосный год и переходы на летнее и зимнее время. Но если хотите - не игнорируйте :)
print("-----1---")

let secInMinute = 60
let secInHour = 60 * secInMinute // Seconds in one hou
let secInDay = secInHour * 24 // Seconds in one day

let januaryDays = 31
let februaryDays = 28
let marchDays = 31
let aprilDays = 30
let mayDays = 31
let juneDays = 30
let juleDays = 31
let augustDays = 31
let septemberDays = 30
let octoberDays = 31
let novemberDays = 30
let desemberDays = 4

let secondsTotal = secInDay * (januaryDays + februaryDays + marchDays + aprilDays + mayDays + juneDays +  juleDays + augustDays + septemberDays + octoberDays + novemberDays + desemberDays)
print(secondsTotal)

//2. Посчитайте в каком квартале вы родились
print("-----2---")
let firstQuarter = januaryDays + februaryDays + marchDays
let secondQuarter = firstQuarter + aprilDays + mayDays + juneDays
let thirdQuarter = secondQuarter + juleDays + augustDays + septemberDays
let fourthQuarter = thirdQuarter + octoberDays + novemberDays + desemberDays + 27

let myBirthDay = fourthQuarter - 27

if myBirthDay <= firstQuarter {
    print ("1")
} else if myBirthDay <= secondQuarter {
    print ("2")
} else if myBirthDay <= thirdQuarter {
    print ("3")
} else if myBirthDay <= fourthQuarter {
    print ("4")
}


/*3. Создайте пять переменных типа Инт и добавьте их в выражения со сложением, вычитанием, умножением и делением. В этих выражениях каждая из переменных должна иметь при себе унарный постфиксный или префиксный оператор. Переменные могут повторяться.
 Убедитесь что ваши вычисления в голове или на бумаге совпадают с ответом. Обратите внимание на приоритет операций */
print("-----3---")

var a = 21
var b = 19
var c = 9
var d = 11
var e = 6

var sum = a + b - c * d / e

/* 4. Шахматная доска 8х8. Каждое значение в диапазоне 1…8. При заданных двух значениях по вертикали и горизонтали определите цвет поля. Если хотите усложнить задачу, то вместо цифр на горизонтальной оси используйте буквы a,b,c,d,e,f,g,h */
print("-----4---")

let board = (6,9)

if (board.0 % 2 == board.1 % 2) {
    print("white")
} else {
    print("black")
}









