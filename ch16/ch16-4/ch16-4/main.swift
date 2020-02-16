//
//  main.swift
//  ch16-4
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

class PersonName {
    
    let nickName: String    // 記錄名字
    let name    : String?   // 記錄小名
    
    // 將閉包指派給延遲屬性 desc
    lazy var desc: () -> String = {
        if let name = self.name {
            return "我的名字是：\(name)，我的小名是：\(self.nickName)"
        } else {
            return "[沒有名字]"
        }
    }
    
    // 建構器
    init(nickName: String, name: String? = nil) {
        self.nickName   = nickName
        self.name       = name
    }
    
    // 解構器
    deinit { print("\(name!) 被釋放了") }
}


var jason: PersonName? = PersonName(nickName: "阿龍", name: "傑森")
print(jason!.desc())

jason = nil

