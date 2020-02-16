//
//  main.swift
//  ch21-4
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

protocol Korean {
    func asKorean() -> String
}


extension String: Korean {
    func asKorean() -> String {
        return self+"，思密達"
    }
}



var hello  = "大家好"
var byebye = "再見"
var sorry  = "抱歉"
let things: [Korean] = [ hello , byebye , sorry]

for thing in things {
    print(thing.asKorean() )
}


protocol EmoticonKorean: Korean {
    func asKoreanAndFace() -> String
}


extension String: EmoticonKorean {
    func asKoreanAndFace() -> String {
        let output = asKorean() + "ヽ( ^∀^)ﾉ"
        return output
    }
}

var goodMorning  = "早安"
print(goodMorning.asKoreanAndFace ())






protocol Name {
    var name: String { get }
}
protocol Age {
    var age: Int { get }
}
// 結構 Person 採用這兩個協定
struct Person: Name, Age {
    var name: String
    var age : Int
}

/*
定義此函式的參數需要同時符合 Name 和 Age 協定
可以使用協定合成 protocol<Name, Age> 代表參數的類型符合這兩個協定
*/
func printPersonInfo(person: protocol<Name, Age>) {
    print("生日快樂！\(person.name)，現在你已經\(person.age)歲了")
}
printPersonInfo( Person(name: "傑森", age: 26) )





protocol HasName {
    var name: String { get }
}
class Singer: HasName {
    var song: String   // 歌曲名稱
    var name : String  // 歌手名稱
    init(song: String,name: String) {
        self.song  = song
        self.name  = name
    }
}

class Bicycle: HasName {
    var brand: String  // 廠牌
    var name : String  // 型號
    init(brand: String,name: String) {
        self.brand = brand
        self.name  = name
    }
}
class Animal {
    var legs: Int
    init(legs: Int) {
        self.legs = legs
    }
}
let objects: [AnyObject] = [
    Singer(song: "Sweet Child O' Mine",name: "Guns N'Roses,"),
    Bicycle(brand: "KHS",name: "T3FB"),
    Animal(legs: 4)
]

for object in objects {
    if let objectWithArea = object as? HasName {
        print("名稱： \(objectWithArea.name)")
    } else {
        print("沒有符合 HasName 協定")
    }
}





@objc protocol someProtocol {
    optional func optFunc()                 // 可選方法
    optional var  optVar: String { get }    // 可選屬性
}


class someClass: someProtocol {
    
}

class otherClass: someProtocol {
    @objc func optFunc(){  }
    @objc var  optVar: String = ""
}








