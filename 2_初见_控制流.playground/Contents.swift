import UIKit

/// 控制流
func zxtest1() {
    let scoreArray = [50, 60, 70]
    var result = 0
    for score in scoreArray {
        result += score
    }
    print(result)
}
zxtest1()

func zxtest2() {
    let optionalName: String? = "name1"
    let optionalBirth: String? = "birth1"
    
    if optionalName != nil && optionalBirth != nil {
        print(optionalName! + optionalBirth!)
    }
}
zxtest2()

func zxtest3() {
    let optionalName: String? = nil
    if let name = optionalName {
        print(name)
    } else {
        print("值为空")
    }
}
zxtest3()

func zxtest4() {
    let optionalName: String? = "name3"
    let optionalBirth: String? = "birth3"
    
    if let name = optionalName {
        if let birth = optionalBirth {
            print(name + birth)
        }
    }
}
zxtest4()

func zxtest5() {
    let optionalName: String? = "name4"
    let optionalBirth: String? = "birth4"
    
    if let name = optionalName,
        let birth = optionalBirth {
        print(name + birth)
    }
}
zxtest5()

func zxtest6() {
    let optionalName: String? = "name5"
    let optionalBirth: String? = "birth5"
    
    if var name = optionalName,
        let birth = optionalBirth {
        name = "linzhixiong"
        print(name + birth)
    }
}
zxtest6()

func zxtest7() {
    let optionalName: String? = "name6"
    let optionalBirth: String? = "birth6"
    
    guard let name = optionalName,
        let birth = optionalBirth else {
            print("name或者birth的值为nil")
            return
    }
    print(name + birth)
}
zxtest7()

func zxtest8() {
    let name: String? = nil
    let placeholder = "wukong"
    print("my name is \(name ?? placeholder)")
}
zxtest8()

func zxtest9() {
    let array = ["apple","orange","banana","watermelon","mango"]
    for str in array {
        switch str {
        case "apple":
            print("i love apple")
            print("break")
        case "orange","banana":
            print("i like \(str)")
        case let x where x.hasSuffix("melon"):
            print("i hate melon")
        default:
            print("other fruits")
        }
    }
}
zxtest9()

func zxtest10() {
    let interestingNumbers = [
        "Prime": [2, 3, 5, 7, 11, 13, 17],
        "Fibonacci": [1, 1, 2, 3, 5, 8],
        "Square": [1, 4, 9, 16, 25],
    ]
    var largest = 0
    var kind = ""
    for (key, numbers) in interestingNumbers {
        for num in numbers {
            if num > largest {
                largest = num
                kind = key
            }
        }
    }
    print(kind + "\(largest)");
}
zxtest10()

func zxtest11() {
    print("...while...")
    var n = 0
    while n < 10 {
        print(n)
        n += 1
    }
}
zxtest11()

func zxtest12() {
    print("...repeat while...")
    var n = 17
    repeat {
        print(n)
        n += 2
    } while n < 20
}
zxtest12()

func zxtest13() {
    var total = 0
    for i in 0..<3 {
        total += i
    }
    print("total is \(total)")
    
    var result = 0
    for i in 0...3 {
        result += i
    }
    print("result is \(result)")
}
zxtest13()
