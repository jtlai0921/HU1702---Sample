//
//  main.swift
//  ch3-1
//
//  Created by dah.com on 2015/9/24.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

var str:String = "Swift"
(str as NSString).containsString("Swift")


let someString = " dah.com.tw"   
// someString 是常數 ，" dah.com.tw "是字串常值


var emptyString = "" // 建立空字串常值並指派給　emptyString
var anotherEmptyString = String()  
// 建立 String 實體並指派給 anotherEmptyString
// 上面兩種寫法都是OK的


if emptyString.isEmpty {   // emptyString 是空字串，所以會回傳 true
    print("什麼都沒有,什麼都沒賣")
}
// 輸出："什麼都沒有,什麼都沒賣"


for char in "逆轟高飛".characters {
    print(char)
}


let euro: Character = "€"      // euro（ 歐元 ）是一個字元常數
let earth: Character = "🌏"   // 也可以用Emoji


let str1 = "哈摟！"
let str2 = "有人嗎？"
var str3 = str1 + str2
// str3 等於"哈摟！有人嗎？"

var str4 = "啊"
str4 += "摟哈"
// str4 等於"阿摟哈"


var strVal = "哈摟"          // welcome是字串變數
let mark: Character = "!"   // mark是字元常數
strVal.append(mark)         // 利用字串方法 append 在字串後面加上一個字元
// strVal 等於"哈摟!"


let name    = "傑森"
let myName  = "我的名字是：\(name)"
let three  = 3
let msg    = "\(three) 乘以 2.5 是 \(Double(three) * 2.5)"
// msg 現在是 "3 乘以 2.5 是 7.5"



















