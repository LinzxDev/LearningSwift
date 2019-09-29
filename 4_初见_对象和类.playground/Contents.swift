import UIKit
import Foundation

/// 对象和类

class Person {
    var name: String = ""
    var age: Int = 0
    let adult: Int = 18

    func infoString() -> String {
        return "name is \(name), age is \(age)"
    }
    
    func isChild() -> Bool {
        return age < adult
    }
}

var person = Person()
person.name = "Wu Kong"
person.age = 18
print(person.infoString() + ", and " + (person.isChild() ? "is a child" : "is an adult"))

class Animal {
    var name: String = ""
    var color: String = ""
    
    /// 使用 init 来创建一个构造器。
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    
    /// 如果你需要在对象释放之前进行一些清理工作，使用 deinit 创建一个析构函数。
    deinit {
        self.name = ""
        self.color = "";
    }
    
    func infoString() -> String {
        return "The animal is \(name), it's color is \(color)"
    }
}
var animal = Animal.init(name: "horse", color: "white")
print(animal.infoString())

/// 子类的定义方法是在它们的类名后面加上父类的名字，用冒号分割。
/// 创建类的时候并不需要一个标准的根类，所以你可以根据需要添加或者忽略父类。
class Dog: Animal {
    
    /// 子类如果要重写父类的方法的话，需要用 override 标记
    /// 如果没有添加 override 就重写父类方法的话编译器会报错。
    /// 编译器同样会检测 override 标记的方法是否确实在父类中。

    override init(name: String, color: String) {
        super.init(name: name, color: color)
        self.name = "dog"
    }
    
    override func infoString() -> String {
        return "The dog's color is \(color)"
    }
}
var dog = Dog.init(name: "cat", color: "black")
print(dog.infoString())

/// 除了储存简单的属性之外，属性可以有 getter 和 setter 。
class Cat: Animal {
    var count: Int = 5
    var pawsCount: Int {
        get {
            return 4 * count
        }
        set {
            count = newValue / 4
        }
    }
    
    override init(name: String, color: String) {
        super.init(name: "Cat", color: color)
    }
}
var cat = Cat.init(name: "Dog", color: "blue")
print(cat.pawsCount)
cat.pawsCount = 16
print(cat.count)

/// 处理变量的可选值时，你可以在操作（比如方法、属性和子脚本）之前加 ?。
/// 如果 ? 之前的值是 nil，? 后面的东西都会被忽略，并且整个表达式返回 nil。
/// 否则，? 之后的东西都会被运行。在这两种情况下，整个表达式的值也是一个可选值。
let optionalCat: Cat? = Cat(name:"", color:"Red")
let color = optionalCat?.color
print(color!)
