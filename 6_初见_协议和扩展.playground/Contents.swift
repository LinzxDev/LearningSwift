import UIKit

/// 协议和扩展

///类、枚举和结构体都可以遵循协议。
// 类
protocol Delegate {
    var voiceDescription: String { get }
    mutating func voiceTest() -> String
}


class Animal: Delegate {
    var voiceDescription: String = "animal voice"
    func voiceTest() -> String {
        return "voice"
    }
}

class Cat: Animal {
    override init() {
        super.init()
        voiceDescription = "cat voice"
    }
    override func voiceTest() -> String {
        return "miao"
    }
}

var a = Animal()
print(a.voiceDescription)
print(a.voiceTest())

var cat = Cat()
print(cat.voiceDescription)
print(cat.voiceTest())

// 枚举
protocol ExampleProtocol {
    var simpleDescription: String { get }
    func test() -> String
}

enum Result: ExampleProtocol {
    case success(String)
    case failure(String)
    case error
    
    var simpleDescription: String {
        get {
            switch self {
            case let .success(msg):
                return "success message:" + msg
            case let .failure(msg):
                return "failure message:" + msg
            default:
                return "a error message:发生错误"
            }
        }
    }
    func test() -> String {
        switch self {
        case let .success(msg):
            return "成功信息:\(msg)"
        case let .failure(msg):
            return "失败信息:\(msg)"
        default:
            return "错误信息"
        }
    }
}
print(Result.success("请求成功200").simpleDescription)
print(Result.failure("请求失败404").test())

// 结构体
protocol Component {
    var year:  Int { get }
    var month: Int { get }
    var day:   Int { get }
    func dateString() -> String
}

struct Date: Component {
    var year: Int = 0
    var month: Int = 0
    var day: Int = 0
    func dateString() -> String {
        return "\(year)" + "-" + "\(month)" + "-" + "\(day)"
    }
}

var today = Date()
today.year = 2019
today.month = 10
today.day = 18
print(today.dateString())

/// 扩展
protocol Add {
    var desc: String { get }
    func addNum(num:Int) -> Int
}

extension Int: Add {
    var desc: String {
        return "the number is \(self)"
    }
    func addNum(num: Int) -> Int {
        return self + num
    }
}

var num = 4
print(num.desc)
print(num.addNum(num: 3).desc)
