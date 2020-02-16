//
//  main.swift
//  ch5-1
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

for index in 1...5 {
    print("\(index) 乘 7 = \(index * 7)")
}


for _ in 1...3 { 
  print("我愛你")
}


let nameArray = ["迪西", "丁丁", "小波"]  // 宣告儲存字串的陣列
for name in nameArray {  // 將陣列中的元素依次取出，並指派給 name
    print("你好 \(name)")
}


let fruits = ["蘋果": "紅" , "香蕉": "黃", "西瓜":"綠"]
for ( fruitsName,  fruitsColor) in fruits {
  print("\(fruitsName) 是 \(fruitsColor)色")
}


for character in "Swift".characters {
    print(character)
}


for var index = 0; index < 3; ++index {
    print("index 是 \(index)")
}


var index = 0
while index < 3 {
  print("index 是 \(index)")
  index++
}


index = 0
repeat {
    print("index 是 \(index)")
    index++
}while(index<3)


var knife = 5
if knife < 9 {
  print("他不是九把刀 ")
}

knife = 5
if knife == 3 {
  print("他是索隆")
} else if knife == 9 {
  print("他是九把刀")
} else {
  print("無法判別")
}


let browser = "FireFox"
switch browser {
  case "FireFox", "Chrome","Safari":
    print("選得好")
  case "IE":
    print("建議更換瀏覽器")
  default:
    print("無法辨識")
}


let dog = "貴賓狗"
switch dog {
    case "貴賓狗","馬子狗","柴犬",
         "西施犬","牧羊犬","鬥牛犬":
        print("都是狗")
    default:
        print("不是狗")
}


let count = 3_000_000      // 用底線增加可讀性
var strCount: String
switch count {
  case 0:
    strCount = "0"
  case 1...100:
   strCount = "100之內"
  case 101...1_000:
   strCount = "1000之內"
  default:
    strCount = "超過 1_000_000"
}
print("\(strCount)")


let point = (1, 1)    // 建立一個元祖
switch point {
   case (0, 0):
    print("(0, 0) 是原點")

    /* 使用底線代表不管任何 x 都表示符合成功
       所以你傳入 ( 1 , 2 )或（ 5 , 2 ）都屬於此 case */
   case ( _, 2):
    print("(\(point.0), 2)")
   case ( 0 , 0...3): // 可用一個區間來判斷喔，很厲害吧！    
    print("(\(point.0), \(point.1)) ")
   default:
    print("(\(point.0), \(point.1))")
}


let person = ("傑森",26)
switch person {
    // 如果此 case 比對成功，會直接把值"傑森"綁定到 name 常數上
    case (let name, 0...30):
        print("此人姓名：\(name),年齡小於 30 ")

    //　因為有加上此 case ，所以已經符合全面性了，不用再加上 default
    case let (name, age):
        print("此人姓名：\(name),年齡：\(age))")
}


let person1 = ("傑森", 180, 100)
switch person1 {
    case let ( name, height, annualSalary ) where height >= 180  && annualSalary >= 100 :
       print("高富帥")
    case let ( name, height, annualSalary ):
       print("謝謝再聯絡")
}


let strInput    = "S@w#i!!f&&t !ea***s#y!!"
var strResult   = ""

for char in strInput.characters {
    switch char {
    // 把不需要的字元跳過並再次繼續迴圈
    case "!","@","#","*","&":
        continue
    default:
        strResult.append(char)
    }
}
print(strResult)


for index in 1...10 {   // 原本這個迴圈會跑 10 次
  print("\(index) 乘 5 是 \(index * 5)")
  if index == 3 {     // 如果 index 等於 3 就 break 跳出迴圈
    break
  }
}

let val = 1
var num = 0
switch val {
  case 1:
    num++
    fallthrough
  case 2:
    num++
    fallthrough
  default:
    num++
}
print("num = \(num)")


var runKm = 1
while runKm <= 5 {
    switch runKm {
        case 3:
          print("3 公里了，休息一下")
          break
       default:
         print("跑了：\(runKm) 公里")
    }
    runKm++
}


























