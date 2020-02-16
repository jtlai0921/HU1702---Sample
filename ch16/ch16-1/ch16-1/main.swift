//
//  main.swift
//  ch16-1
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

class PersonClass {
    // 常數屬性 name
    let name: String
    
    // 建構器
    init(name: String) {
        self.name = name
        print("\(name) 被初始化了")
    }
    
    // 解構器
    deinit {
        print("\(name) 被釋放了")
    }
}


var reference1: PersonClass?
var reference2: PersonClass?
var reference3: PersonClass?

reference1 = PersonClass(name: "石內卜")
reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil
reference3 = nil


class Car {
    // 代表此車子的車牌
    let licenseNum: Int
    
    // 建構器，用來初始化屬性 number
    init(licenseNum: Int) {
        self.licenseNum = licenseNum
    }
    
    // 類型是 Person 的可選屬性，代表這輛車的擁有者
    var person: Person?
    
    deinit { print("車牌為：\(licenseNum) 的車子被釋放了") }
}

class Person {
    // 代表此人的名字
    let name: String
    
    // 建構器，用來初始化屬性 name
    init(name: String) {
        self.name = name
    }
    
    // 類型是 Car 的可選屬性，初始化為 nil，代表此人是否擁有自己的車子
    var car: Car?
    
    // 解構器
    deinit { print("\(name) 被釋放了") }
}


var jason: Person?
var miniCooper: Car?

jason      = Person(name: "傑森")
miniCooper = Car(licenseNum: 512)


jason!.car          = miniCooper   // 傑森有了一輛 Mini Cooper
miniCooper!.person  = jason        // Mini Cooper 的主人是傑森

jason       = nil
miniCooper  = nil


















