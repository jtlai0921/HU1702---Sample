//
//  main.swift
//  ch21-2
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

protocol SomeProtocol {
    static func typeFunction()       // 定義類型方法
    func normalFunction()           // 定義一般方法
}

// 定義類別採用協定 SomeProtocol
class someClass: SomeProtocol {
    class func typeFunction(){}     // 實作類型方法
    func normalFunction(){}         // 實作一般方法
}

// 定義結構採用協定 SomeProtocol
struct someStruct: SomeProtocol {
    static func typeFunction(){}    // 實作類型方法
    func normalFunction(){}         // 實作一般方法
}



protocol Random {
    // 定義實體方法
    func random() -> String
}

class TodayFortune: Random {
    
    // 實作協定規定的方法
    func random() -> String {
        /* 這裡呼叫 arc4random_uniform 方法，
        他會產生一個亂數，範圍在 0～2 之間 */
        switch arc4random_uniform(3){
        case 0:  return "大吉"
        case 1:  return "普通"
        case 2:  return "大兇"
        default: return "失敗"
        }
    }
}
let todayFortune = TodayFortune()
print("今天的運勢是:\(todayFortune.random())")


protocol Change {
    mutating func change()
}

enum TrafficLights: String , Change {
    // 列舉成員
    case Red     = "紅燈"
    case Yellow  = "黃燈"
    case Green   = "綠燈"
    
    // 變異方法，用來改變 self 屬性
    mutating func change() {
        switch self {
        case Green : self = Yellow
        case Yellow: self = Red
        case Red   : self = Green
        }
    }
}
var trafficLights = TrafficLights.Green
print(trafficLights.rawValue)
trafficLights.change()
print(trafficLights.rawValue)




protocol Dog {
    func bark() -> String
}

// 此類別採用 Dog 協定
class Bulldog: Dog {
    func bark() -> String {
        return "汪汪"
    }
}

// 定義一個 Pet 類別
class Pet {
    let dog: Dog  // 這邊把 Dog 協定當作一般類型來使用
    
    init(dog: Dog) {
        self.dog = dog
    }
    
    func makeSound() { print( dog.bark() )  }
}

var myPet = Pet( dog: Bulldog() )
myPet.makeSound()
// 輸出 "汪汪"





class DayLife {
    
    var time = 0
    
    func run() {
        print("早上起床摟")
        for time = 8 ; time<=18 ; ++time {
            sleep(1) //程式休息一秒
            switch time {
            case 8:  print("現在\(time)點，騎機車上班")
            case 9:  print("現在\(time)點，吃早餐")
            case 12: print("現在\(time)點，吃中餐休息")
            case 16: print("現在\(time)點，聊天")
            case 18: print("現在\(time)點，吃晚餐")
            default: print("現在\(time)點，工作中")
            }
        }
        print("下班回家拉")
    }
}

let daylife = DayLife()
daylife.run() //開始執行一天的行程












