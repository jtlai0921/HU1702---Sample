//
//  main.swift
//  ch20-2
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

extension Int {
    mutating func square() {
        self = self * self
    }
    mutating func cube() {
        self = self * self * self
    }
    mutating func half() {
        self = self / 2
    }
}

var someInt = 2
someInt.square()
print("someInt 等於：\(someInt)")
someInt.cube()
print("someInt 等於：\(someInt)")
someInt.half()
print("someInt 等於：\(someInt)")


extension Int {
    subscript(var index: Int) -> String {
        var base = 1
        while index > 0 {
            base *= 10
            --index
        }
        
        switch (self / base) % 10 {
        case 0:   return "零"
        case 1:   return "壹"
        case 2:   return "貳"
        case 3:   return "參"
        case 4:   return "肆"
        case 5:   return "伍"
        case 6:   return "陸"
        case 7:   return "柒"
        case 8:   return "捌"
        case 9:   return "玖"
        default:  return "沒有定義"
        }
        
    }
}
print(79979[0])
print(79979[1])



extension Int {
    // 新增巢狀列舉 Player
    enum Player: String {
        case HanamichiSakuragi  = "櫻木花道"
        case KaedeRukawa        = "流川楓"
        case TakenoriAkagi      = "赤木剛憲"
        case RyoutaMiyagi       = "宮城良田"
        case HisashiMitsui      = "三井壽"
        
    }
    
    var getPlayerName: String {
        switch self {
        case 10:
            return Player.HanamichiSakuragi.rawValue
        case 11:
            return Player.KaedeRukawa.rawValue
        case 4:
            return Player.TakenoriAkagi.rawValue
        case 7:
            return Player.RyoutaMiyagi.rawValue
        case 14:
            return Player.HisashiMitsui.rawValue
        default:
            return "無此球員"
        }
    }
}

var player = 10
print("10 號球員是：\(player.getPlayerName)")
player = 14
print("14 號球員是：\(player.getPlayerName)")


















