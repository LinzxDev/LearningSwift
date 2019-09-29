import UIKit

/// 函数和闭包

/// 使用 func 来声明一个函数，使用名字和参数来调用函数。使用 -> 来指定函数返回值的类型。
func zxtest1(name:String, age:Int) -> String {
    return "\(name) is \(age)."
}
print(zxtest1(name: "linzx", age: 17))

/// 默认情况下，函数使用它们的参数名称作为它们参数的标签，在参数名称前可以自定义参数标签，或者使用 _ 表示不使用参数标签。
func zxtest2(_ name:String, age:Int) -> String {
    return "\(name) is \(age).."
}
print(zxtest2("linzx", age: 17))

func zxtest3(_ name:String, _ age:Int) -> String {
    return "\(name) is \(age)..."
}
print(zxtest3("linzx", 17))

func zxtest4(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(zxtest4("John", on: "Wednesday"))

/// 使用元组来生成复合值，比如让一个函数返回多个值。该元组的元素可以用名称或数字来获取。
func calculate(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores {
        if score < min {
            min = score
        } else if score > max {
            max = score
        }
        sum += score
    }
    return (min, max, sum)
}
let result = calculate(scores: [14, 16, 17, 23, 24, 27, 49, 58, 89])
print("min is \(result.min), max is \(result.max), sum is \(result.2)")

/// 函数可以嵌套，被嵌套的函数可以访问外侧函数的变量
func welcome(country: String) -> String {
    func append(country: String) -> String {
        return "Welcome to \(country)"
    }
    return append(country: country)
}
print(welcome(country: "China"))

/// 函数作为另一个函数的返回值
func zxtest5() -> ((Int) -> Int) {
    func aFun(count: Int) -> Int {
        return count + 100
    }
    return aFun(count:)
}
var aFunction = zxtest5()
print(aFunction(5))

/// 函数也可以当做参数传入另一个函数。
func isOdd(number: Int) -> Bool {
    return number % 2 == 1
}
func hasAnyMatches(list: [Int], condition:(Int) -> Bool) -> Bool {
    for number in list {
        if condition(number) {
            return true
        }
    }
    return false
}
let numbers = [1, 2, 4, 6, 8]
print(hasAnyMatches(list: numbers, condition: isOdd(number:)))

/// 函数实际上是一种特殊的闭包:它是一段能之后被调取的代码。
/// 闭包中的代码能访问闭包作用域中的变量和函数，即使闭包是在一个不同的作用域被执行的 - 你已经在嵌套函数的例子中看过了。
/// 你可以使用 {} 来创建一个匿名闭包。使用 in 将参数和返回值类型的声明与闭包函数体进行分离。
func block1() {
    let numbers = [1, 2, 3, 4]
    let result = numbers.map({
        (number: Int) -> Int in
        return isOdd(number: number) ? 0 : 2 * number
    })
    print(result)
}
block1()

/// 有很多种创建更简洁的闭包的方法。
/// 如果一个闭包的类型已知，比如作为一个代理的回调，你可以忽略参数，返回值，甚至两个都忽略。
/// 单个语句闭包会把它语句的值当做结果返回。
func block2() {
    let numbers = [1, 2, 3, 4]
    let result = numbers.map({
        number in
        return isOdd(number: number) ? 0 : 3 * number
    })
    print(result)
}
block2()

/// 你可以通过参数位置而不是参数名字来引用参数——这个方法在非常短的闭包中非常有用。
/// 当一个闭包作为最后一个参数传给一个函数的时候，它可以直接跟在括号后面。
/// 当一个闭包是传给函数的唯一参数，你可以完全忽略括号。
func block3() {
    let numbers = [3, 2, 1, 4]
    let result = numbers.sorted {
        $0 < $1
    }
    print(result)
}
block3()
