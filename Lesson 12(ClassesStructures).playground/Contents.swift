/*1. Создайте структуру студент. Добавьте свойства: имя, фамилия, год рождения, средний бал. Создайте несколько экземпляров этой структуры и заполните их данными. Положите их всех в массив (журнал).*/

struct StudentStructura {
    var name: String
    var surname: String
    var rating: Int
}

let student1 = StudentStructura(name: "Olga", surname: "Aishenko", rating: 10)
let student2 = StudentStructura(name: "Misha", surname: "Barasenko", rating: 6)
let student3 = StudentStructura(name: "Katya", surname: "Aishenko", rating: 9)

var journal = [StudentStructura]()
journal.append(student1)
journal.append(student2)
journal.append(student3)


/*2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого. Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.
*/
print("_____2________")
func infoStudent(arrayStudent: [StudentStructura]) {
    for (number, student) in arrayStudent.enumerated() {
        print("\(number+1).\(student.surname) \(student.name), rating:\(student.rating)")
    }
}

/*3. С помощью функции sorted отсортируйте массив по среднему баллу, по убыванию и распечатайте “журнал”.
*/
print("_____3________")
infoStudent(arrayStudent: journal.sorted(by: {$0.rating > $1.rating}))

/*4. Отсортируйте теперь массив по фамилии (по возрастанию), причем если фамилии одинаковые, а вы сделайте так чтобы такое произошло, то сравниваются по имени. Распечатайте “журнал”.
*/
print("_____4________")

infoStudent(arrayStudent: journal.sorted(by: { (student1, student2)  in
    if student1.surname == student2.surname {
        return student1.name < student2.name
    }
    return student1.surname < student2.surname
} ))


/*5. Создайте переменную и присвойте ей ваш существующий массив. Измените в нем данные всех студентов. Изменится ли первый массив? Распечатайте оба массива.
*/
print("_____5________")

var newArray = journal
newArray[0].name = "Ira"
newArray[0].surname = "Voloshuk"
newArray[0].rating =  2

/*
1)Массив не изменился,так как при создании экземпляра структуры, просиходит полное копирование значений
 */
infoStudent(arrayStudent: newArray)
print("_____________")
infoStudent(arrayStudent: journal)



/*6. Теперь проделайте все тоже самое, но не для структуры Студент, а для класса. Какой результат в 5м задании? Что изменилось и почему?
*/
print("_____6_1________")
class StudentClass {
    var name: String
    var surname: String
    var rating: Int
    init(name: String, surname: String, rating: Int) {
        self.name = name
        self.surname = surname
        self.rating = rating
    }
}

let student4 = StudentClass(name: "Olga", surname: "Aishenko", rating: 10)
let student5 = StudentClass(name: "Misha", surname: "Barasenko", rating: 6)
let student6 = StudentClass(name: "Katya", surname: "Aishenko", rating: 9)
var journal2 = [StudentClass]()
journal2.append(student4)
journal2.append(student5)
journal2.append(student6)

print("_____6_2________")
func infoStudent(arrayStudent: [StudentClass]) {
    for (number, student) in arrayStudent.enumerated() {
        print("\(number+1).\(student.surname) \(student.name), rating:\(student.rating)")
    }
}
print("_____6_3________")
infoStudent(arrayStudent: journal2.sorted(by: {$0.rating > $1.rating}))
print("_____6_4________")
infoStudent(arrayStudent: journal2.sorted(by: { (student1, student2)  in
    if student1.surname == student2.surname {
        return student1.name < student2.name
    }
    return student1.surname < student2.surname
} ))

print("_____6_5________")
var newArray2 = journal2
newArray2[0].name = "Ira"
newArray2[0].surname = "Voloshuk"
newArray2[0].rating =  2

/*
Массив изменился,так как при создании экземпляра класс, создается указатель на предыдущий класс. Т.е. изменения происходят по ссылке на первый массив
 */
infoStudent(arrayStudent: newArray2)
print("_____________")
infoStudent(arrayStudent: journal2)


