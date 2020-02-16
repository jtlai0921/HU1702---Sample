//
//  main.swift
//  ch6-1
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

func sayNo(personName: String) -> String { 
    let str = personName + "不行！"
    return str
}

var strReturn = sayNo("老爺")
print(strReturn)
// 輸出 "老爺不行！"


func sayILoveYou( ) -> String {
    return "我愛你"
}
print( sayILoveYou() )


func showWarning(count: Int, monster: String) -> String {
    return "有 \(count) 隻野生的 \(monster) 出現了！"
}
print( showWarning( 1 , monster: "小火龍" ) )


func sayGoodbye(Name: String) {
    print("\(Name)，掰掰！")
}
sayGoodbye("小熊")
sayGoodbye("小雞")



func getMonth(month: Int) -> (name: String, flower: String) {
    assert(month <= 12 && month >= 1, "月份超出範圍了！")
     let name   = ["正月","命月","蠶月","余月","皋月",
                  "焦月","蘭月","桂月","玄月","陰月","葭月","蠟月"]
     let flower = ["蘭花","桃花","薔薇","牡丹","石榴",
                  "荷花","秋葵","桂花","菊花","芙蓉","海棠","水仙"]
     return (name[month-1], flower[month-1])
}
let month = getMonth(11)
print("月份所代表顏色是 \(month.name)，花朵是 \(month.flower)")


func add(num1: Int, num2: Int){
    print(num1+num2)
}
add(1, num2:2)


func cal(integer a: Int, add b: Int, multiply c: Int) -> Int {
    return (a + b) * c
}
cal( integer:3 , add:5 , multiply:2 )


func myDinner(names: String...) {
    guard names.count != 0 else {
        print("今天不吃")
        return
    }
    
    print("我今天晚餐要吃：")
    // 把可變參數 names 當成"陣列"用，依序放入"val"中
    for val in names {
        print("\(val)")
    }
}

myDinner()
myDinner("雞排","奶茶")
myDinner("大阪燒","燒臘飯","可樂")


func myBrowser(var name: String) {

    // 加上 var 後就可以修改參數了
    name = "FireFox"
    print("請使用\(name)瀏覽器")
}
myBrowser("IE")

func addOne(inout num: Int) {
    num++
}


var val = 0
addOne(&val)   // 記得加上＆
print(val)


func addTwoInt(a: Int, b: Int) -> Int {
    return a + b
}

// myFun 是一個變數，類型為 (Int, Int) -> Int，所以可以指派函式 addTwoInts 給它
var myFun: (Int, Int) -> Int = addTwoInt
print( myFun(2, 3) ) // 就等於addTwoInts(2,3)
// 輸出 "5"


func multiplyTwoInt(a: Int, b: Int) -> Int {
  return a * b
}
// 可以將 myFun 改為指向 multiplyTwoInt 函式，因為函式類型相同
myFun = multiplyTwoInt
print(myFun(2, 3))
// 輸出 "6"


func addOne(input: Int) -> Int {
  return input + 1
}

func subOne(input: Int) -> Int {
  return input - 1
}

func chooseFunc(boolVal: Bool) -> (Int) -> Int {
  return boolVal ? addOne : subOne
}

let getFunc = chooseFunc(true)
/* chooseFunc 會回傳 addOne ，因為傳入 true
   所以現在 getFunc 就等於 addOne */

print(getFunc(11))
