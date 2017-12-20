/* 1. Создать пять строковых констант

Одни константы это только цифры, другие содержат еще и буквы

Найти сумму всех этих констант приведя их к Int

(Используйте и optional binding и forced unwrapping)
 */
print ("--------task 1---------")
let one  = "10"
let two = "15sss"
let three = "30"
let four = "four40"
let five = "5"

var sumOptBind : Int? = 0

//Optional binding
if let oneInt = Int(one){
    sumOptBind = sumOptBind! + oneInt
}

if let twoInt = Int(two) {
    sumOptBind = sumOptBind! + twoInt
}

if let threeInt = Int(three) {
    sumOptBind = sumOptBind! + threeInt
}

if let fourInt = Int(four) {
    sumOptBind = sumOptBind! + fourInt
}

if let fiveInt = Int(five) {
    sumOptBind = sumOptBind! + fiveInt
}
print(sumOptBind!)

//Forced unwrapping
var sumForcedUnw : Int? = 0
if Int(one) != nil {
    sumForcedUnw = sumForcedUnw! + Int(one)!
}

if Int(two) != nil {
    sumForcedUnw = sumForcedUnw! + Int(two)!
}

if Int(three) != nil {
    sumForcedUnw = sumForcedUnw! + Int(three)!
}

if Int(four) != nil {
    sumForcedUnw = sumForcedUnw! + Int(four)!
}

if Int(five) != nil {
    sumForcedUnw = sumForcedUnw! + Int(five)!
}
print(sumForcedUnw!)



/* 2. С сервера к нам приходит тюпл с тремя параметрами:
statusCode, message, errorMessage (число, строка и строка)
в этом тюпле statusCode всегда содержит данные, но сама строка приходит только в одном поле
если statusCode от 200 до 300 исключительно, то выводите message,
в противном случает выводите errorMessage
После этого проделайте тоже самое только без участия statusCode
  */
print ("--------task 2---------")
 print("--------1)----------")
var status1 : (statusCode: Int, message: String?, errorMessage: String?) = (201, "ok text", nil)
if status1.statusCode >= 200 && status1.statusCode < 300 && status1.message != nil {
        print("Message is \(status1.message!)")
} else if status1.errorMessage != nil{
        print("error is \(status1.errorMessage!)")
}
 print("--------2)----------")
var status2 : (message: String?, errorMessage: String?) = (nil, "error text")

if let messageOk = status2.message {
    print("Message is \(messageOk)")
} else if let messageError = status2.errorMessage {
    print("Error is \(messageError)")
}



/* 3. Создайте 5 тюплов с тремя параметрами:
имя, номер машины, оценка за контрольную
при создании этих тюплов не должно быть никаких данных
после создания каждому студенту установите имя
некоторым установите номер машины
некоторым установите результат контрольной
выведите в консоль:

- имена студента
- есть ли у него машина
- если да, то какой номер
- был ли на контрольной
- если да, то какая оценка
 */
print ("--------task 3---------")
var user1, user2, user3, user4, user5  : (name: String, numberCar: Int?, rating: Int?)
user1 = ("Ivan", nil, 8)
user2 = ("Dima", nil, 5)
user3 = ("Anya", 444, 4)
user4 = ("Sonya", nil, 3)
user5 = ("Katya", 888, 2)
print ("---Student 1 ---")
print("My name is \(user1.name)")
if let car = user1.numberCar {
    print("I have is car, number \(car)")
}
if user1.rating != nil {
    print("My rating \(user1.rating!)")
}


print ("---Student 2 ---")
print("My name is \(user2.name)")
if let car = user2.numberCar {
    print("I have is car, number \(car)")
}
if user2.rating != nil {
    print("My rating \(user2.rating!)")
}


print ("---Student 3 ---")
print("my name is \(user3.name)")
if let car = user3.numberCar {
    print("I have is car, number \(car)")
}
if user3.rating != nil {
    print("My rating \(user3.rating!)")
}


print ("---Student 4 ---")
print("my name is \(user4.name)")
if let car = user4.numberCar {
    print("I have is car, number \(car)")
}
if user4.rating != nil {
    print("My rating \(user4.rating!)")
}


print ("---Student 5 ---")
print("my name is \(user5.name)")
if let car = user5.numberCar {
    print("I have is car, number \(car)")
}
if user5.rating != nil {
    print("My rating \(user5.rating!)")
}


