//
//  main.swift
//  ch1-1
//
//  Created by dah.com on 2015/9/24.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

let minPrice = 100              // 用 let 宣告代表 minPrice 為常數
var myMoney  = 30               // 用 var宣告代表 myMoney為變數


var x = 0.0, y = 0.0, z = 0.0   // 用逗號隔開
/*
var x = 0.0
var x = 0.0
var y = 0.0
*/

var myName: String
myName = "城武"

var red, green, blue: Int       // red, green, blue 皆為 Int 類型


let  π    = 3.14159

// 使用中文也可以（"搭訕"這兩個字現在等於"小姐要喝杯咖啡嗎" ）
let 搭訕   = "小姐要喝杯咖啡嗎"

// 使用 Emoji ( 😱 這個圖案現在等於"明天要上班")
var 😱 = "明天要上班"


var `var` = "哈摟"
print(`var`)


print("哈摟-1")
print("哈摟-2", terminator: "")
print("哈摟-3", terminator: "\n")


// 打我呀，笨蛋

/*
這
是一種

文
文
的多行註解
*/

/*
註解開始
    /* 包在多行註解中的註解 */
註解結束
*/

let apple = "小蘋果"; print(apple)
let minValue = UInt8.min  // minValue 為 0，代表 UInt8 類型的最小值
let maxValue = UInt8.max  // maxValue 為 255，代表 UInt8 類型的最大值


// 不需要特別加上 Int
let pizzaTel:Int = 8825252
let pi = 3.14159
let anotherPi = 3+0.14159


let binaryInt      = 0b10001    //  2 進制的 17
let octalInt       = 0o21       //  8 進制的 17
let decimalInt     = 17         // 10 進制的 17
let hexadecimalInt = 0x11       // 16 進制的 17

var num = 1.2523e2
let num1 = 000123.456           // 前面加上額外的 000
let num2 = 1_000_000            // 加上底線，數值還是為 1000000
let num3 = 1_000_000.000_1      // 加上底線，數值還是為 1000000.0001


let one: UInt8   = 1                   // 等於 1
let twoThousand: UInt16  = 2_000       // 等於 2000
let three = twoThousand + UInt16(one)  
// twoThousand 加上一個 UInt16 類型的新數字



// 使用 UInt8 是因為他可以儲存的範圍剛好是 0~255
typealias RedColor = UInt8
var maxRedColor = RedColor.max
// maxRedColor 現在是 255

let youAreHandsome          = true
let youHaveGirlfriend:Bool  = false

if youAreHandsome {
    print("你是大帥哥！")
}
// 輸出 "你是大帥哥！"


let manInfo = ("傑森", 1988)
let (name , bornYear ) = manInfo

print("\(name)")
// 輸出 "傑森"

print("\(bornYear)")
// 輸出 "1988"

let ( justName ,  _  ) = manInfo
print("\(justName)")
// 輸出 "傑森"

print("\(manInfo.0)")
// 輸出 "傑森"

print("\(manInfo.1)")
// 輸出 "1988"

let girlInfo = (myName: "雪倫", myBornYear: 1989)
print("\(girlInfo.myName)")
// 輸出 "雪倫"

print("\(girlInfo.myBornYear)")
// 輸出 "1989"


let numArray    = [1, 2, 3]
let strArray    = ["今天","天氣", "不錯"]
let myZip       = zip(numArray, strArray)
let zipArray    = Array(myZip)
print(zipArray)
// 輸出 "[(1, 今天), (2, 天氣), (3, 不錯)]"


var numOpt:Int?
print("\(numOpt)")
// 輸出 "nil"

let strNum          = "123"
let converNum       = Int(strNum)



var myGirlFriendName: String? = "雪倫"
// 指定 myGirlFriendName 類型是 String?


var myCar:String? = "Mini Cooper"
if myCar == nil  {
    print("我沒有車")
} else {
    print("我有車")
}
// 輸出 "我有車"


if myCar == nil  {
    print("我沒有車")
} else {
    print("我有一台 \(myCar!)")
}
// 輸出 "我有一台 Mini Cooper"

var someOpt:Int?
if let tempVar = someOpt {
    //如果 someOpt 有值會進入此區塊
}


// 原本的例子，利用 if 來判斷
/*
if myCar == nil  {
    println("我沒有車")
} else {
    println("我有一台 \(myCar!)")
}
*/

// 使用可選綁定寫法
/*
if let name = myCar {
    println("我有一台 \(name)")
} else {
    println("我沒有車")
}
*/



var myName1: String? = "雪倫"
var myName2: String? = "傑森"

if let Name1 = myName1 , Name2 = myName2{
    print("我的名字是\(Name1),他的名字是\(Name2)")
}
// 輸出 "我的名字是雪倫,他的名字是傑森"


// 可選類型
let strHello: String?  = "天線寶寶說你好"
let strTemp1: String   = strHello!
print("\(strTemp1)")


// 隱含解析可選類型
let strHelloAgain: String! = "天線寶寶說再見"
let strTemp2: String       = strHelloAgain  // 不需要『！』
print("\(strTemp2)")


if strHelloAgain != nil {
    print(strHelloAgain)
}
// 輸出 "天線寶寶說再見"


if let tempVar = strHelloAgain {
    print(tempVar)
}
// 輸出 "天線寶寶說再見"

let age =  70
assert(age < 18, "年齡小於18歲")














