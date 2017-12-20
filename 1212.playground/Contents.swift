//: Playground - noun: a place where people can play

import UIKit

class  Human {
    var name: String
    let maxAge = 80
    var age: Int {
        didSet {
            if age > maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String,age: Int) {
        self.name = name
        self.age = age
    }
}

struct Cat {
    var name: String
    static let maxAge = 20
    static var totalCats = 0
    var age: Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    
    init (name: String, age: Int) {
        var self.name = name
        var self.age = age
        Cat.totalCats += 1
        
    }
}

let human = Human(name: "Peter", age: 20)
var cat = Cat(name: "Barsik", age: 10)

human.age = 100
cat.age = 50
