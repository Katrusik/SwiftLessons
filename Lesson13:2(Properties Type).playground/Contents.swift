/* 1. Создать структуру “Описание файла” содержащую свойства:
- путь к файлу
- имя файла
- максимальный размер файла на диске
- путь к папке, содержащей этот файл
- тип файла (скрытый или нет)
- содержимое файла (можно просто симулировать контент)
Главная задача - это использовать правильные свойства там, где нужно, чтобы не пришлось хранить одни и те же данные в разных местах и т.д. и т.п.
 */

let pathToFolder = "/NameFolder/"
let contentFile = "Content my file"

struct DescriptionFiles {
    static let maxSizeFile: Double = 200.00
    var nameFile: String
    var pathToFile: String {
        return pathToFolder + nameFile
    }
    var isHidden: Bool
    var content: String {
        get{
            if isHidden {
                return "File is hidden"
            } else {
                return contentFile
            }
        }
    }
    var size: Double = 0.0 {
        didSet {
            if size > DescriptionFiles.maxSizeFile {
                size = DescriptionFiles.maxSizeFile
                print("BIG FILE!!!")
            }
        }
    }
}
var a = DescriptionFiles(nameFile: "Hello my friend", isHidden: true, size: 100)
a.content

a.size

/* 2. Создайте энум, который будет представлять некую цветовую гамму. Этот энум должен быть типа Int и как raw значение должен иметь соответствующее 3 байтное представление цвета. Добавьте в этот энум 3 свойства типа: количество цветов в гамме, начальный цвет и конечный цвет.
 */
enum ColorSpectrum: Int {
    case red = 0xff00000
    case green = 0xff11110
    case blue = 0xff00011
    
    static let countColors = 3
    static var startColor = ColorSpectrum.red
    static var endColor = ColorSpectrum.blue
    
}
ColorSpectrum.green.rawValue

/*3. Создайте класс человек, который будет содержать имя, фамилию, возраст, рост и вес. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:
- минимальный и максимальный возраст каждого объекта
- минимальную и максимальную длину имени и фамилии
- минимально возможный рост и вес
- самое интересное, создайте свойство, которое будет содержать количество созданных объектов этого класса
 */

class Human {
    class CountHumans {
        static var count = 0
    }
    
    static var minAge = 18
    static var maxAge = 60
    static var minLenghtName = 2
    static var maxLenghtName = 12
    static var minLenghtSurname = 3
    static var maxLenghtSurname = 15
    static var minGrowth = 155
    static var minWeigth = 45
    
    var name = String()
    var surname = String()
    var age = Int()
    
    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
        
        Human.CountHumans.count += 1
    }
}
