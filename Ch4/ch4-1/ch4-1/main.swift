//
//  main.swift
//  ch4-1
//
//  Created by dah.com on 2015/9/24.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

var hunk = [String]()
hunk.append("")
// 我們可以使用 append 將空字串放入陣列中
hunk = []
// 如果要將陣列清空可使用兩個中括號



var array1 = [Int](count: 2, repeatedValue: 3) // array1 等於 [3,3]
var array2 = [Int](count: 3, repeatedValue: 5) // array1 等於 [5,5,5]

var addArray1 = array1 + array2
var addArray2 = array2 + array1
print(addArray1) // 等於 [3, 3, 5, 5, 5]
print(addArray2) // 等於 [5, 5, 5, 3, 3]



hunk = ["年輕"]
print("陣列中目前有： \(hunk.count) 筆資料")
// 輸出 "陣列中目前有： 1 筆資料"
if hunk.isEmpty {
    print("陣列目前：沒東西")
} else {
    print("陣列目前：有東西")
}
// 輸出 "陣列目前：有東西"


hunk.append("帥氣")
// hunk陣列中目前有2項數值

hunk += ["六塊肌", "150公分", "90公斤"]
var first = hunk[0]
print(first)
// 輸出 "年輕"

hunk [2] = "胸肌"
hunk[3...4] = ["185公分", "75公分"]
hunk.insert("幽默", atIndex: 0)
var item = hunk.removeAtIndex(0)
print(item)
let lastItem = hunk.removeLast()

for item in hunk {  // 將陣列中的數值一項一項取出並放到 item 中
    print(item)
}


for (index, value) in hunk.enumerate() {
    print("元素[\(index)]：\(value)")
}


var a = 10
var b = "哈摟"
var c = 3.5
a.hashValue
b.hashValue
c.hashValue


var number = Set<Int>()
print("Set 中有：\(number.count) 個元素")
// 輸出 "Set 中有：0 個元素"

number.insert(5)
print("Set 中有：\(number.count) 個元素")
// 輸出 "Set 中有：1 個元素"

// 將 Set 設置為空的 Set
number = []
print("Set 中有：\( number.count) 個元素")
// 輸出 "Set 中有：0 個元素"



var number1 = Set<Int>()
number1.insert(1)
number1.insert(2)
print("Set 中有：\(number1.count) 個元素") // 目前有 2 個元素
number1.insert(2)
number1.insert(2)
print("Set 中有：\(number1.count) 個元素") // 還是只有 2 個元素


var gameConsole: Set<String> = ["PS4","XBOXOne","Wii"]
print("Set 中有：\(gameConsole.count) 個元素")
// 輸出 "Set 中有：3 個元素"

if gameConsole.isEmpty {
    print("這個 Set 是空的")
} else {
    print("這個 Set 有東西喔")
}

gameConsole.insert("3DS")
if let removeVal = gameConsole.remove("XBOXOne") {
    print("\(removeVal) 被移除了")
} else {
    print("Set 中沒有這個元素喔")
}// 輸出 "XBOXOne 被移除了"


if gameConsole.contains("PS4") {
    print("找到 PS4 了")
} else {
    print("Set 中沒有 PS4 ")
}// 輸出 "找到 PS4 了"


for val in gameConsole {
    print(val)
}


for val in gameConsole.sort() {
    print(val)
}


let xSet: Set = [1, 2, 3, 4, 5]
let ySet: Set = [4, 5, 6, 7, 8]
print(xSet.intersect(ySet).sort())
print(xSet.exclusiveOr(ySet).sort())
print(xSet.union(ySet).sort())
print(xSet.subtract(ySet).sort())



let aSet: Set = ["貓", "狗"]
let bSet: Set = ["貓", "狗", "牛", "雞", "羊"]
let cSet: Set = ["鼠", "龍"]
print(aSet == bSet)
print(aSet.isSubsetOf(bSet))
print(bSet.isSubsetOf(bSet))
print(aSet.isStrictSubsetOf(bSet))
print(bSet.isStrictSubsetOf(bSet))
print(bSet.isSupersetOf(aSet))
print(bSet.isSupersetOf(bSet))
print(bSet.isStrictSupersetOf(aSet))
print(bSet.isStrictSupersetOf(bSet))
print(bSet.isDisjointWith(aSet))
print(bSet.isDisjointWith(cSet))




var strOfInt = [Int: String]()
strOfInt[1] = "壹"
strOfInt = [:]

//var star:Dictionary<Int, String> = [1979: "杰倫"]
var star:[Int:String] = [1979: "杰倫"]
print("目前有\(star.count)位明星")
if star.isEmpty {
  print("有值")
} else {
  print("沒有值")
}
star[1972] = "張惠妹"

if let oldValue = star.updateValue("羅志祥", forKey: 1979) {
    print("原本的值是：\(oldValue)")
}


if let name = star[1988] {
    print("姓名是：\(name)")
} else {
    print("找不到")
}
// 輸出 "找不到"

if let name = star[1972] {
    print("姓名是：\(name)")
} else {
    print("找不到")
}
star[1972] = nil

if let removedValue = star.removeValueForKey(2016) {
    print("\(removedValue)被移除")
} else {
    print("沒有這位明星")
}// 輸出 "沒有這位明星"



var starDic = [1979: "杰倫"]
starDic[1972] = "張惠妹"
starDic[1989] = "泰勒絲"

for (year, name) in starDic {
    print("出生年：\(year)，名字：\(name)")
}

for year in starDic.keys {
    print("出生年：\(year)")
}

for name in starDic.values {
    print("名字：\(name)")
}

let year = [Int](starDic.keys)
// year 是 [1979, 1972, 1989]

let name = [String](starDic.values)
// name 是 [杰倫, 張惠妹, 泰勒絲]









