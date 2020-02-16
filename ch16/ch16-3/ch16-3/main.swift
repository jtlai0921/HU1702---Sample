//
//  main.swift
//  ch16-3
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

class Person {
    let name: String
    var driverlicence: DriverLicence?
    init(name: String) { self.name = name }
    deinit { print("使用者：\(name) 被釋放了") }
}

class DriverLicence {
    let number: Int
    
    // 宣告為無主參考，使用關鍵字 unowned
    unowned let person: Person
    
    // 建構式一定要傳入駕照序號和使用者
    init(number: Int , person: Person) {
        self.number = number
        self.person = person
    }
    deinit { print("汽車駕照序號：\(number) 被釋放了") }
}


var jason: Person?
jason                   = Person(name: "傑森")
jason!.driverlicence    = DriverLicence(number: 1122_0512,person: jason!)
jason  = nil



class Country {
    let name: String           // 國家名稱
    var president: President!  // 此屬性宣告為隱含解析可選
    init(name: String, presidentName: String) {
        self.name      = name
        
        /* 這裡會建立 President 實體來初始化 president，
        所以會呼叫到 President 的建構器 */
        self.president = President(name: presidentName, country: self)
    }
}

class President {
    let name: String              // 總統名稱
    unowned let country: Country  // 此屬性為無主參考，代表永遠要有值
    
    init(name: String, country: Country) {
        self.name    = name
        self.country = country
    }
}


var country = Country(name: "美國", presidentName: "歐巴馬")
print("\(country.name)的總統是：\(country.president.name)")
// 輸出 "美國的總統是：歐巴馬"

