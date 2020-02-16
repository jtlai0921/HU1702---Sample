//
//  main.swift
//  ch10-1
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

struct Engineer {
    var workingHours: Int  // 變數儲存屬性，代表工作時間
    let salary: Int           // 常數儲存屬性，代表薪水
}

// 建立一個結構實體， 這裡使用結構專屬的『成員建構器』來初始化
var bill = Engineer(workingHours: 10, salary: 22000)
bill.workingHours = 12



class CountVal {
    init() {
        var i = 0
        for _ in 0...999999999 {
            i++
        }
    }
}

class Data {
    var result = CountVal()
}


var startTime = NSDate()
print("建立實體開始")

let data = Data()

let elapsedTime = NSDate().timeIntervalSinceDate(startTime)
print("建立實體結束，共花費"+String(format:"%.5f",elapsedTime)+"秒")


struct YearConvert {
    var yearAD = 0 // 這是儲存屬性
    
    /* yearROC 是計算屬性，類型是 Int
       取值時會使用 get 方法，yearROC 的值可藉由 yearAD 屬性計算出來 */
    var yearROC: Int {
        get {
            return (yearAD - 1911)
        }
    }
}
// 建立一個 YearConvert 實體
var thisYear = YearConvert( yearAD: 2015)

print("今年是民國：\(thisYear.yearROC) 年")
// 輸出 "今年是民國：104 年"




class Account {
    var money: Int = 0 {
        
        willSet(newMoney) {
            print("設定存款為：\(newMoney)元")
        }//willSet-End
        
        didSet {
            print("原始存款為：\(oldValue) 元")
            print("目前存款為：\(money) 元")
        }//didSet-End
        
    }
}

let myAccount = Account() // 建立 Account 實體
myAccount.money = 5000    // 改變存款為 5000
myAccount.money = 200     // 改變存款為 200


var str: String = "可以給我你的Msn嗎?" {
    willSet(newString) {
        print("設定新字串為：\(newString)")
    }

    didSet {
        print("目前字串為：\(str) ")
    }
}
print(str)
str = "可以給我你的Line嗎?"


func sayHello(personName: String) {

    // 區域變數 str
    var str:String = "你好"{
        willSet(newString) {
            print("設定新字串為：\(newString)")
        }
        
        didSet {
            print("目前字串為：\(str) ")
        }
    }
    
    str = str + personName
    print(str)
}

sayHello("傑森")
sayHello("雪倫")



struct Car {
    static  var wheel   =  4
            var mileage = 3000
}

// 建立結構實體
let myCar = Car()
print(myCar.mileage)  // 使用『實體名稱』來取得『儲存屬性』
print(Car.wheel)      // 使用『類型名稱』來取得『類型屬性』



struct BodyWeight {
    
    // 看到 static 就知道此屬性是類型屬性
    static let maxMeasuredValue            = 100
    
    /*
     這個屬性沒加 static所以是一般的儲存屬性
     另外加上屬性觀察者來觀察此屬性的變化
    */
    var currentWeight: Int = 0 {
        didSet {
            if currentWeight > BodyWeight.maxMeasuredValue {
                // 如果傳進來的值超過最大值"100"，則設為"100"
                currentWeight = 100
                print("超過體重機負荷!")
            }
        }
    }
}






