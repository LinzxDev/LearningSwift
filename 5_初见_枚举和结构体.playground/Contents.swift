import UIKit

/// 枚举和结构体

enum Direction {
    case horizontal
    case vertical
}
print(Direction.horizontal)


enum Movement: Int {
    case left, right, top, bottom
}
print(Movement.bottom)
print(Movement.bottom.rawValue)


enum Payment: Int {
    case cash
    case wxpay
    case alipay
    case unionpay
    
    func descString() -> String {
        switch self {
        case .wxpay:
            return "微信支付"
        case .alipay:
            return "支付宝支付"
        case .unionpay:
            return "银联云闪付"
        default:
            return "其他支付方式"
        }
    }
    
    func color() -> String {
        switch self {
        case .cash:
            return "black"
        default:
            return "white"
        }
    }
}
print(Payment.alipay)
print(Payment.alipay.rawValue)
print(Payment.alipay.descString())

if let x = Payment(rawValue: 4) {
    let str = x.descString()
    print(str)
}

print(Payment.cash.color())


/// 使用 struct 来创建一个结构体。结构体和类有很多相同的地方，包括方法和构造器。它们之间最大的一个区别就是结构体是传值，类是传引用。
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let threeOfSpades = Card(rank: .three, suit: .spades)
print(threeOfSpades.simpleDescription())



