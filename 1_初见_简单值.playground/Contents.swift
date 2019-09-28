import UIKit

/// 简单值
func zxtest1() {
    let i = 4
    print(i)

    let f1 = 7.0
    print(f1)

    let f2 : Float = 8
    print(f2)
}
zxtest1()

func zxtest2() {
    let name = "linzx"
    let age = 1989
    print(name + " is " + String(age))
}
zxtest2()

func zxtest3() {
    let count1 = 3
    var string = "I have \(count1) apples"
    print(string)
    
    let count2 = 5.0
    string = "I have \(Double(count1) + count2) apples"
    print(string)
}
zxtest3()

func zxtest4() {
    let str = """
    My name is Linzx.
    I am from China.
    """
    print(str)
}
zxtest4()

func zxtest5() {
    let array = ["a","b","c"]
    print(array[1])
}
zxtest5()

func zxtest6() {
    var dict = [
        "a":"1",
        "b":"2",
        "c":"3"
    ]
    dict["d"] = "4"
    print(dict["d"]!)
    
}
zxtest6()

func zxtest7() {
    let emptyArray = [String]()
    print(emptyArray)
    
    let emptyDictionary = [String : Int]()
    print(emptyDictionary)
}
zxtest7()
