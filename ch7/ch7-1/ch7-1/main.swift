//
//  main.swift
//  ch7-1
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

var names = ["Hero", "Eric", "Lily", "Sharon", "Jason"]
func forwards(s1: String, s2: String) -> Bool {
    return s1 < s2
}
print(names.sort(forwards))


var result = names.sort(
    // 閉包表達式
    { (s1: String, s2: String) -> Bool in
        return s1 < s2
    }
)


let numArray    = [1, 2, 3]
let resultArray = numArray.map(
                    {
                      (var number) -> Int in
                      return number*3
                    }
)
print(resultArray)
// 輸出 "[3, 6, 9]"


func makeAdd(forIncrement amount: Int) -> () -> Int {
    var total = 0
    func add() -> Int {
        total += amount
        return total
    }
    var below = 10 //在閉包之後才宣告的變數無法捕獲
    return add
}

let addTen = makeAdd(forIncrement: 10) 
//makeAdd 會回傳 add 函式給常數 addTen

print( addTen() )  // 回傳的值為 10
print( addTen() )  // 回傳的值為 20
print( addTen() )  // 回傳的值為 30


let addThree = makeAdd(forIncrement: 3)
let addTwo   = makeAdd(forIncrement: 2)
print( addThree() )    // 回傳 3
print( addTwo()   )    // 回傳 2
























