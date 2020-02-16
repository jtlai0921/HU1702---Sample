//
//  main.swift
//  ch16-2
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

class Car {
    let licenseNum: Int
    init(licenseNum: Int) { self.licenseNum = licenseNum }
    
    // 宣告為弱參考，加上關鍵字 weak
    weak var person: Person?
    deinit { print("車牌為：\(licenseNum) 的車子被釋放了") }
}

class Person {
    let name: String
    init(name: String) { self.name = name }
    var car: Car?
    deinit { print("\(name) 被釋放了") }
}

var jason: Person?
var miniCooper: Car?
jason               = Person(name: "傑森")
miniCooper          = Car(licenseNum: 512)
jason!.car          = miniCooper
miniCooper!.person  = jason  // 這裡 person 是用弱參考指向 Person 實體



jason = nil  // 斷開和 Person 實體的強參考
miniCooper = nil
























