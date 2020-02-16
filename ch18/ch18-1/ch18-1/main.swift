//
//  main.swift
//  ch18-1
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

class AppleProduct {
    var name: String
    init(name: String) {
        self.name = name
    }
}


class iPhone: AppleProduct {
    var color: String
    init(name: String, color: String) {
        self.color = color
        super.init(name: name)
    }
}

class MacBook: AppleProduct {
    var screenSize: Int
    init(name: String, screenSize: Int) {
        self.screenSize = screenSize
        super.init(name: name)
    }
}


let product = [
    iPhone(name: "iphone6", color: "金色"),
    MacBook(name: "MacbookAir", screenSize: 13),
    iPhone(name: "iphone6+", color: "灰色"),
    MacBook(name: "MacbookAir", screenSize: 11),
    MacBook(name: "MacbookPro", screenSize: 15)
]


print(product[0].name)
// 輸出 "iphone6"

//print(product[0].color) // 這行會出錯
/*
雖然陣列[0] 儲存iPhone 類型的實體， 不過取出時是 AppleProduct 類型
而 AppleProduct 類型沒有 color
*/


var iPhoneCount  = 0
var macBookCount = 0

for item in product {
    
    // 如果 item 是 iPhone 類型，則 iPhoneCount 加 1
    if item is iPhone {
        ++iPhoneCount
    }
    
    // 如果 item 是 MacBook 類型，則 macBookCount 加 1
    if item is MacBook {
        ++macBookCount
    }
}
print("product 陣列包含 \(iPhoneCount) 個 iPhone 和 \(macBookCount) 個 MacBook")



for item in product {
    
    if let iphone = item as? iPhone {
        print("iPhone 規格：\(iphone.name)，顏色：\(iphone.color)")
    } else if let macBook = item as? MacBook {
        print("MacBook 規格：\(macBook.name)，螢幕尺寸：\(macBook.screenSize)")
    }
}


let someObjects: [AnyObject] = [
    iPhone(name: "iphone6", color: "金色"),
    iPhone(name: "iphone6", color: "黑色"),
    iPhone(name: "iphone6+", color: "灰色"),
]


for object in someObjects {
    let iphone = object as! iPhone  // 轉型成功就放到常數 iphone
    print("iPhone 規格：\(iphone.name)，顏色：\(iphone.color)")
}

for object in someObjects as! [iPhone]{
    print("iPhone 規格：\(object.name)，顏色：\(object.color)")
}


var things = [Any]()
things.append(11_22)
things.append(3.14)
things.append(512)
things.append("你好")
things.append(("@_@", 777))
things.append(iPhone(name: "iphone6", color: "金色"))
things.append( { (number: Int) -> String in "輸入數字的平方是:\(number*number)" } )


for thing in things {
    switch thing {
    case let someInt as Int:
        print("Int 類型：\(someInt)")
        
    case let someDouble as Double:
        print("Double 類型：\(someDouble)")
        
    case let someString as String:
        print("String 類型：\(someString)")
        
    case let (x, y) as (String, Int):
        print("元祖類型： \(x), \(y)")
        
    case let iphone as iPhone:
        print("iPhone 規格：\(iphone.name)，顏色：\(iphone.color)")
        
    case let converter as Int -> String:
        print(converter(22))
        
    default:
        print("其它")
    }
}

















