//
//  main.swift
//  ch12-1
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

print("Hello, World!")

struct SearchWeb { // 常數儲存屬性
    let webName:[String] = ["Google","Yahoo","Bing"]
    
     // 定義唯讀下標,會回傳 webName 元素
    subscript(index: Int) -> String {
        return webName[index]
    }
}


let searchWeb = SearchWeb()
print(" 取出第一個搜尋網站 : \(searchWeb[0])")
print(" 取出第三個搜尋網站 : \(searchWeb[2])")




class MutiSubscript {
    // 第一個下標,將參數乘上自己 
    subscript(index: Int) -> Int {
         return index * index
    }
    
    // 第二個下標,判斷傳入字串是否為 LuckyNumber 
    subscript(index: String) -> Int {
        if index=="LuckyNumber" {
            return 777
        }else {
            return 0
        }
    }

    // 第三個下標,判斷傳入數字是否為 520
    subscript(index: Int) -> String {
        if index==520 {
            return " 我愛你 "
        }else {
            return " 無 "
        }
    }
}

let mySubscript = MutiSubscript()
let val1: Int   = mySubscript[3]
let val2: Int   = mySubscript["LuckyNumber"]
let str: String = mySubscript[520]
print(val1)
print(val2)
print(str)




class Test {
    // 傳入一個參數
    subscript(index: String) -> String {
      print(" 傳入的參數是 :\(index)")
      return index
    }

    // 傳入可變參數
   subscript(index: Int...) -> Int {
   // 可變參數可以當作陣列使用 
        for val in index {
          print(" 傳入的參數是 :\(val)")
        }
        return index[0]
    }
                
    /* 不可傳入 In-Out 參數
    subscript(inout index: Int) -> Int {
                return index
        }
    */
                
    /* 不可設定參數預設值
    subscript(index: Int = 10) -> Int {
                return index
        }
    */
}
let myTest = Test()
print(myTest[" 傑森 "])
print(myTest[11,22])



struct StudentList {
    
    var grades: Int = 2        // 班級
    var ids: Int    = 3        // 學號
    
    // 學生姓名
    var studentName: [String] = ["宥翔","雅婷","柏宇","子晴",
                                 "品妍","承恩"]
    
    
    // 驗證傳入的參數是不是在正確範圍內
    func indexIsValid(grade: Int, id: Int) -> Bool {
      return grade >= 0 && grade < grades && id >= 0 && id < ids
    }
    
    /*
    定義下標，傳入兩個參數
    　　　先用 assert 來確認有沒有在範圍中，沒有的話就停止運作。
    這裡的 set 省略參數名字，不過一樣可以用預設的 newValue 代替傳入的參數。
    */
    subscript(grade: Int, id: Int) -> String {
        get {
            assert(indexIsValid(grade, id: id), "超出範圍")
            return studentName[(grade * ids) + id]
        }
        set {
            assert(indexIsValid(grade, id: id), "超出範圍")
            studentName[(grade * ids) + id] = newValue
        }
    }
}

var myStudentList = StudentList()
var grades  = 2
var id      = 3
print(myStudentList[grades-1,id-1]) // 使用下標 getter
// 輸出 “承恩”

grades  = 1
id      = 2
myStudentList[grades-1,id-1] = "詩涵"
print(myStudentList[grades-1,id-1]) // 使用下標 setter
// 輸出 “詩涵”


























