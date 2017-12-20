import Foundation
// 1. Повторить код Алексея из урока по памяти.
/* 2. Для этого же студента добавить свойства:
 -дата рождения (используя другую структуру)
 -возраст (вычисляется на основании даты рождения)
 -количество лет учебы (начиная с 6 лет, либо 0 если возраст меньше чем 6) */
//    http://www.knowstack.com/swift-nsdateformatter/
//      let dateFormat = DateFormatter.dateFormat(fromTemplate: "MMM yyyy", options: 0, locale: NSLocale.current)
struct Student {
    
    struct BirthDay {
        var day: Int
        var month: Int
        var year: Int
    }
    
    var firstName: String {
        willSet{
            print("Will set name " + newValue + " instead of " + firstName)
        }
        didSet{
            print("Did set name " + firstName + " instead of " + oldValue)
            firstName = firstName.capitalized
        }
    }
    
    var lastName: String {
        didSet{
            lastName = lastName.capitalized
        }
    }
    
    var fullName: String {
        get {
            return firstName + " " + lastName
        }
        set {
            print("fullName wants to be set to" + newValue)
            let words = newValue.components(separatedBy: "")
            if words.count > 0 {
                firstName = words[0]
            }
            if words.count > 1 {
                lastName = words[1]
            }
        }
    }
    
    var birthDay: BirthDay
    
    var age: Int {
        let date = Date()
        let calendar = Calendar.current
        let nowYear = calendar.component(.year, from: date)
        let age = nowYear - birthDay.year
        return age
    }
    
    var yearsStudy: Int {
        let goToSchool = 6
        if age <= goToSchool {
            return 0
        } else {
            return age - goToSchool
        }
    }
}
var student1 = Student(firstName: "Olya", lastName: "Trifonova", birthDay: Student.BirthDay(day: 04, month: 12, year: 1989))
student1.age
student1.yearsStudy
var student2 = Student(firstName: "Ira", lastName: "Efimova", birthDay: Student.BirthDay(day: 10, month: 12, year: 1966))
student2.age


/* 3. Создать структуру "отрезок", у которой два свойства - точка "А" и точка "В", которые в свою очередь тоже структуры (не стандартные, а наши собственные)
 Также отрезок имеет вычисляемые свойства (они изменяют точки "А" и "В", если мы изменяем следующие свойства):
 -midPoint - середина отрезка (при её изменении, отрезок смещается на параллельную прямую, проходящую через наш midPoint?)
 -длина отрезка (при изменении, точка "А" остается, а точка "В" движется) */
print("-----3-----")


