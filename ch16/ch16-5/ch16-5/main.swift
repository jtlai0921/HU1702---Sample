//
//  main.swift
//  ch16-5
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

class PersonName {
    
    let nickName: String
    let name    : String?
    
    lazy var desc: () -> String = {
        [unowned self] in // 設定閉包參考 self 的時候使用無主參考
        if let name = self.name {
            return "我的名字是：\(name)，我的小名是：\(self.nickName)"
        } else {
            return "[沒有名字]"
        }
    }
    
    init(nickName: String, name: String? = nil) {
        self.nickName   = nickName
        self.name       = name
    }
    
    deinit { print("\(name!) 被釋放了") }
}


var jason: PersonName? = PersonName(nickName: "阿龍", name: "傑森")
jason = nil





