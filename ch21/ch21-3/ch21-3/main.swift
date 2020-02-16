//
//  main.swift
//  ch21-3
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

protocol PrintMsg {
    func daylifeStart()
    func daylifeWork(daylife: DayLife)
    func daylifeEnd()
}

class PrintDaLifeMsg: PrintMsg {
    var numberOfTurns = 0
    
    func daylifeStart() {
        print("早上起床摟")
    }
    
    func daylifeWork(daylife: DayLife) {
        switch daylife.time {
        case 8:  print("現在\(daylife.time)點，騎機車上班")
        case 9:  print("現在\(daylife.time)點，吃早餐")
        case 12: print("現在\(daylife.time)點，吃中餐休息")
        case 16: print("現在\(daylife.time)點，聊天")
        case 18: print("現在\(daylife.time)點，吃晚餐")
        default: print("現在\(daylife.time)點，工作中")
        }
    }
    
    func daylifeEnd() {
        print("下班回家拉")
    }
}



class DayLife {
    var time = 0
    
    // 委派給 delegate 屬性幫我們輸出訊息
    var delegate: PrintDaLifeMsg?
    func run() {
        delegate?.daylifeStart()
        for time = 8 ; time<=18 ; ++time {
            sleep(1)
            delegate?.daylifeWork(self)
        }
        delegate?.daylifeEnd()
    }
}

let delegate    = PrintDaLifeMsg() //建立 PrintDaLifeMsg 實體
let daylife     = DayLife()
daylife.delegate = delegate //將PrintDaLifeMsg 實體指派給屬性
daylife.run()

















