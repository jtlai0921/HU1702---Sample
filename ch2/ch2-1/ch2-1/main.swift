//
//  main.swift
//  ch2-1
//
//  Created by dah.com on 2015/9/24.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

var num = 17.85
print( num % 3 )    // 結果是 2.85 ，是不是很厲害


let b = 30
var a = b
// 將 b 的值指派給 a，a 現在等於 30

let (x, y) = ("戰士","法師")
print(x)
print(y)
// 元祖裡面的字串"戰士"和"法師"，可以被分解並指派給常數 x 和 y


var num1 = 2 + 2       // 等於 4
var num2 = 7 - 2       // 等於 5
var num3 = 8 * 3       // 等於 24
var num4 = 10.0 / 2.5  // 等於 4.0


var xVal = 2
++xVal
var yVal = 5.5
++yVal
print( xVal )     // xVal = 3
print( yVal )     // yVal = 6.5



let three       = 3
let minusThree  = -three        // minusThree 等於 -3
let plusThree   = -minusThree   // plusThree 等於 3, 因為"負負得正"


let minusSix        = -6
let alsoMinusSix    = +minusSix  
// alsoMinusSix 還是等於 -6 不會變正數喔！特別特別注意


var aVal   = -10
var bVal   =  20
var cVal   = +aVal
var dVal   = +bVal
// 加上正號的程式碼是不是看起來舒服許多


var numA = 10
numA -= 2

var numB = 8
numB += 3
// numA  等於  8（numA -=  2是 numA = numA -2 的縮寫）
// numB  等於 11（numB +=  3是 numB = numB +3 的縮寫）

let name = "傑森"
if name == "傑森" {
    print("哈摟!傑森")
} else {
    print("我不認識你")
}
// 輸出 "哈摟!傑森", 因為 name 等於"傑森"


/*
let boyWeight = 75
var girlSay   = ""
if boyWeight >= 90 {
    girlSay = "Pass"
} else {
    girlSay = "OK"
}
*/
let boyWeight = 75     //男生體重
var girlSay   = ( boyWeight >= 90 ? "Pass": "OK")


var opt:String? 
var val = "我是 val"
var check = ( opt != nil ? opt! : val)
// check 等於"opt 為 nil" ，因為 opt 是 nil


for var index = 1 ; index <= 5 ; ++index {
    print("\(index) * 5 = \(index * 5)")
}

for index in 1...5 {
    print("\(index) * 5 = \(index * 5)")
}

for index in 1..<5 {
    print("\(index) * 5 = \(index * 5)")
}


let names = ["安妮", "賈克斯", "提摩"]
// names.count 會回傳 3，表示陣列大小
for i in 0..<names.count {
    print("第 \(i + 1) 個人名字叫做： \(names[i])")
}

let allowe = false
print(!allowe)
// 輸出 "true"


let oneBool = true
let twoBool = false
if oneBool && twoBool {
    print("歡迎")
} else {
    print("再見")
}
// 輸出 "再見"