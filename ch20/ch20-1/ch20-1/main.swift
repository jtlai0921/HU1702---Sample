//
//  main.swift
//  ch20-1
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

extension Int {
    var square: Int { return self * self }
    var cube: Int   { return self * self * self }
    var half: Int   { return (self / 2) }
}


var someInt = 3.square
print("3 的平方是：\(someInt)")

someInt = 7.cube
print("7 的立方是：\(someInt)")

someInt = 100.half
print("100 的一半是：\(someInt)")



extension String {
    var sayEnglishHello: String{  return "\(self) Hello！"  }
    var sayChineseHello: String{  return "\(self) 你好！"   }
}

var sayHello = "傑森".sayEnglishHello
print(sayHello)
sayHello = "傑森".sayChineseHello
print(sayHello)

struct BodyInfo {
    var height  = 0.0
    var weight  = 0.0
    var bmi     = 0.0
}
struct Person {
    var bodyInfo = BodyInfo()
}


// 使用預設建構器建立實體
let sharon = Person()

// 使用成員建構器建立實體
let jason  = Person(bodyInfo: BodyInfo(height: 176.0, weight: 75.0,bmi: 24.2))


extension Person {
    // 定義新的建構器
    init(height: Double, weight: Double) {
        let m   = ( height / 100 )
        let bmi = ( weight / (m*m) )
        self.init(bodyInfo: BodyInfo(height:height, weight:
            weight,bmi: bmi))
    }
}

let sam  = Person(height: 176.0, weight: 75.0)
print(sam.bodyInfo.bmi)


extension Character   {
    func morseCode() -> String {
        switch self {
        case "A", "a":
            return "·-"
        case "B", "b":
            return "-···"
        case "C", "c":
            return "-·-·"
        default:
            return "還沒定義"
        }
    }
}


var someCharacter: Character = "A"
print("A 的摩斯密碼是：\(someCharacter.morseCode())")

someCharacter = "B"
print("B 的摩斯密碼是：\(someCharacter.morseCode())")

someCharacter = "C"
print("C 的摩斯密碼是：\(someCharacter.morseCode())")

