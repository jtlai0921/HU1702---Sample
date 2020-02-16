//
//  main.swift
//  ch11-1
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

class BugCounter {
    var numOfBug = 0
    func increment() {
      numOfBug++
    }
    
    func incrementBy(num: Int) {
      numOfBug += num
    }

    func clean() {
      numOfBug = 0
    }
}


// 建立 BugCounter 類別的實體 bugCounter,此時屬性 numOfBug 初始化為 0
let bugCounter = BugCounter()
// 呼叫 increment() 方法 
bugCounter.increment()
print("Bug 數量 :\(bugCounter.numOfBug)") // 輸出 "Bug數量:1"
// 呼叫 incrementBy() 方法 
bugCounter.incrementBy(3)
print("Bug 數量 :\(bugCounter.numOfBug)") // 輸出 "Bug數量:4"
// 呼叫 clean() 方法
bugCounter.clean()
print("Bug 數量 :\(bugCounter.numOfBug)") // 輸出 "Bug數量:0"



struct Test {
     var x = 10.0
    //方法參數名稱是 x,與屬性 x 名稱一樣
    func checkSelfWithVal(x: Double) -> Bool {
      return x >= x
    }
}
let myTest = Test()
print(myTest.checkSelfWithVal(20)) // 輸出 "trun"



enum DayOfLift {
     case Eat,Drink,Piss,Sleep
     mutating func next() {
         switch self {
         case Eat:
             self = Drink
         case Drink:
             self = Piss
         case Piss:
             self = Sleep
        case Sleep:
            self = Eat
        }
    }
}
// 建立列舉實體,初始化為列舉成員"Eat" 
var myLife = DayOfLift.Eat
myLife.next()
myLife.next()
myLife.next()
myLife.next()


class SomeClass {
    class func someTypeMethod() {
      // 直接呼叫 otherTypeMethod , 不用再加上類別名稱
      otherTypeMethod()
      // 不需要這樣寫SomeClass.otherTypeMethod()
    }
    
    class func otherTypeMethod() {
        print("我是 otherTypeMethod()")
    }
}

SomeClass.someTypeMethod()
// 輸出 "我是otherTypeMethod()

