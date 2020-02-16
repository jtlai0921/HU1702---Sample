//
//  main.swift
//  ch6-2
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

// chooseFunc 裡面有 2 個巢狀函式
func chooseFunc(boolVal: Bool) -> (Int) -> Int {
    // 現在 addOne 和 subOne 這 2 個函式稱為巢狀函式
    func addOne(input: Int) -> Int {
        return (input + 1)
    }
    func subOne(input: Int) -> Int {
        return (input - 1)
    }
    return boolVal ? addOne : subOne
}
let getFunc = chooseFunc(false)
print(getFunc(8))
// 輸出 "7"

