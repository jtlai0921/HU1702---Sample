//
//  main.swift
//  ch3-2
//
//  Created by dah.com on 2015/9/24.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

let str1    = "你好\""
let str2    = "你好\t\t\t哈摟"
print(str1)
print(str2)



var mark       = "\u{21}"      //  驚嘆號，U+0021
var snowMan    = "\u{2603}"    //  雪人， U+2603
var policeCar  = "\u{1F694}"   //  警車， U+1F694
print(mark)
print(snowMan)
print(policeCar)


let eAcute: Character = "\u{E9}"               // 第一種方法表示 é
let combinedEAcute: Character = "\u{65}\u{301}"// 用 e結合  ́ 表示 é
print(eAcute)
print(combinedEAcute)


let char1: Character      = "\u{D55C}" // 韓文的:한
let char2: Character      = "\u{1112}\u{1161}\u{11AB}"

let text = "ABCDE"
print("總共有 \(text.characters.count) 個字元")
// 輸出 "總共有 5 個字元"


var word = "cafe"
print("\(word) 共有 \(word.characters.count)　個字元")
// 輸出 "cafe 共有 4 個字元"
word = "cafe\u{301}" // 最後加上 ́（U+0301）
print("\(word) 共有 \(word.characters.count)　個字元")
// 輸出 "café 共有 4個字元"


let strText = "I'm Coming Home"
print(strText.startIndex)
// 輸出 "0"
print(strText.endIndex)
// 輸出 "15"


let str = "哎呦！不錯喔"
print( str[str.startIndex.successor()] )
// startIndex 位置是 0，successor 取得位置後面一個字元所以是 "呦"

print( str[str.startIndex.successor().successor()] )
// 再取"呦"後面的一個字元，所以是"!"

print( str[str.endIndex.predecessor()] )
// endIndex 表示最後的位置，predecessor 直接取得目前位置個字元所以是 "喔"

var index = str.startIndex.advancedBy(4)
print(str[index])

for index in str.characters.indices {
    print("\(str[index])[\(index)] ")
}


var welcome = "你好"
welcome.insert("!", atIndex: welcome.endIndex)
// 將 "!" 插入字串最後的位置
print(welcome)
// 輸出 "你好!"


var welcome1 = "你好！"
welcome1.insertContentsOf("一起去環島吧!".characters,at: welcome1.endIndex.predecessor())


var welcome2 = "你好!一起去環島吧!"

// 方法一：想要移除"環島"，-4 代表由後往前數第 4 個
//let range = welcome2.endIndex.advancedBy(-4) ..< welcome2.endIndex.advancedBy(-2)

// 方法二：或是由開頭開始數也可以，比較直覺
let range = welcome2.startIndex.advancedBy(6) ..< welcome2.startIndex.advancedBy(7)
welcome2.removeRange(range)
print(welcome2)
// 輸出 "你好!一起去吧!"


let strA   = "上上下下左左右右ABAB"
let strB   = "上上下下左左右右ABAB"
if strA == strB {
    print("這兩字串是相同的")
}
// 輸出 "這兩字串是相同的"


let strC = "café"
let strD = "cafe\u{301}"
if strC == strD {
    print("這兩字串是相同的")
}

let charA:Character  = "\u{41}"        // 這是英文的 A
let charB:Character  = "\u{0410}"      // 這是俄文的 A
if char1 != char2 {
    print("這兩個字元是不同的")
}



let string = "管你小眾 大眾 我呸 管你是小清新 是重口味 我呸"
if string.hasPrefix("管你") {
    print("前綴相同")
}
// 輸出 "前綴相同"

if string.hasSuffix("我呸") {
    print("後綴相同")
}
// 輸出 "後綴相同"



let msg = "我愛 Swift"
for codeUnit in msg.utf8 {
    print(String(format:"0x%2X", codeUnit))
}

for codeUnit in msg.utf16 {
    print(String(format:"0x%04X", codeUnit))
}

for codeUnit in msg.unicodeScalars {
    print(String(format:"0x%08X", codeUnit.value))
}





