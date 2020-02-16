//
//  main.swift
//  ch9-1
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

// 結構
struct BodyInfo {
    var weight = 0
    var height = 0
}

// 類別
class Man {
    var bodyInfo = BodyInfo()
    var hasCar   = false
    var money    = 0.0
    var name: String?
}

let someBodyInfo = BodyInfo()
let someMan      = Man()


print("身高是：\(someBodyInfo.height) cm")
print("男士的身高是：\(someMan.bodyInfo.height)cm")

someMan.bodyInfo.height = 175
print("男士的身高是：\(someMan.bodyInfo.height)cm")



let otherBodyInfo = BodyInfo(weight:70, height: 175)


var intOne = 10
var intTwo = intOne
intTwo+=30
print(intOne) // 還是 10
print(intTwo) // 變為 40



var jasonBodyInfo   = BodyInfo(weight:70, height: 175)
var sharonBodyInfo  = jasonBodyInfo
sharonBodyInfo.weight = 40

print("Jason 的體重是：\(jasonBodyInfo.weight)")
// 輸出 "Jason 的體重是：70"

print("Sharon 的體重是：\(sharonBodyInfo.weight)")
// 輸出 "Sharon 的體重是：40"


// 定義一個表示方向的列舉
enum Direction {
    case Up, Down, Right , Left
}

var oneDirection  = Direction.Up
var twoDirection  = oneDirection

oneDirection = .Right //改變 oneDirection 為　Right
if twoDirection == .Up {
    print("twoDirection 是 Up")
}


let jason           = Man()     //建立 Man 的實體
jason.bodyInfo   = jasonBodyInfo
jason.hasCar     = true
jason.money      = 50000.0
jason.name       = "傑森"


let alsoJason   = jason
alsoJason.money = 100.0   //改變 alsoJason 的屬性值
print("Jason 的 money 為\(jason.money)")
// 輸出 "Jason 的 money 為100.0"


let sam  = Man()
if alsoJason === jason {
    print("參考到同個實體")
}

if sam !== jason {
    print("參考到不同實體")
}




