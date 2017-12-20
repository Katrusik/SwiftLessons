
// 1.Выведите в консоль минимальные и максимальные значения базовых типов
print("Int8 min = \(Int8.min) max = \(Int8.max)")
print("UInt8 min = \(UInt8.min) max = \(UInt8.max)")
print("Int16 min = \(Int16.min) max = \(Int16.max)")
print("UInt16 min = \(UInt16.min) max = \(UInt16.max)")
print("Int64 min = \(Int64.min) max = \(Int64.max)")
print("UInt64 min = \(UInt64.min) max = \(UInt64.max)")
print("Int min = \(Int.min) max = \(Int.max)")
print("UInt min = \(UInt.min) max = \(UInt.max)")

/* 2.Создайте 3 константы с типами Int, Float и Double
Создайте другие 3 константы, тех же типов: Int, Float и Double,
при чем каждая из них это сумма первых трех, но со своим типом
 */
let intLet = 10
let floatLet : Float = 20.1
let doubleLet = 5.1

let sumInt = intLet + Int(floatLet) + Int(doubleLet)
let sumFloat = Float(intLet) + floatLet + Float(doubleLet)
let sumDouble = Double(intLet) + Double(floatLet) + doubleLet


//Сравните Int результат суммы с Double и выведите отчет в консоль
if Double(sumInt) >= sumDouble {
    print("Double(sumInt) \(sumInt) больше или равен sumDouble \(sumDouble)")
} else {
    print("Double(sumInt) \(sumInt) меньше sumDouble \(sumDouble)")
}

if Float(sumInt) >= Float(sumDouble) {
    print("Float(sumInt) \(Float(sumInt)) больше или равен Float(sumDouble) \(Float(sumDouble))")
} else {
    print("Float(sumInt) \(Float(sumInt)) меньше sumDouble \(Float(sumDouble))")
}






