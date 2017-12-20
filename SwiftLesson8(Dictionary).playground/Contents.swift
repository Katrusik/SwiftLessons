/*  1. Создайте дикшинари как журнал студентов, где имя и фамилия студента это ключ, а оценка за контрольную значение. Некоторым студентам повысьте оценки - они пересдали. Потом добавьте парочку студентов, так как их только что перевели к вам в группу. А потом несколько удалите, так как они от вас ушли :(
 После всех этих перетрубаций посчитайте общий бал группы и средний бал
  */
var journal = ["Ivan": 5, "Ira": 2, "Olga": 4]
journal.updateValue(10, forKey: "Ivan")
journal.updateValue(9, forKey: "Ira")
journal["Vova"] = 10
journal["Nina"] = 12
journal
journal.removeValue(forKey: "Vova")
journal

var sum = 0

for rating in journal.values {
    sum+=rating
}
sum
print("Overall rating - \(sum), Average - \(sum/2)")


 /* 2. Создать дикшинари дни в месяцах, где месяц это ключ, а количество дней - значение.
 В цикле выведите ключ-значение попарно, причем один раз выведите через тюплы, а другой раз пройдитесь по массиву ключей и для каждого из них доставайте значения.
 */

let calendar = ["January":31, "February":28, "March":31, "April":30, "May":31, "June":30, "July":31, "August":31, "September":30, "October":31, "November":30, "December":31]

for (month, days) in calendar {
    print("\(month) - \(days)")
}

print("-----------")
for key in calendar.keys {
    print (key, calendar[key]!)
}

/* 3. Создать дикшинари , в которой ключ это адрес шахматной клетки (пример: a5, b3, g8), а значение это Bool. Если у клетки белый цвет, то значение true, а если черный - false. Выведите дикшинари в печать и убедитесь что все правильно.
 */
var chessboard = [String: Bool]()
let horizontalLine = ["A", "B", "C", "D", "I", "F", "G", "H"]

for i in 0..<horizontalLine.count {
    for j in 1...8 {
        if i%2 == j%2 {
            chessboard["\(horizontalLine[i])\(j)"] = true
        } else {
            chessboard["\(horizontalLine[i])\(j)"] = false
        }
    }
}

for (key, value) in chessboard {
    print(key, value)
}

