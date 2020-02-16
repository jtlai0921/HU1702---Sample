//
//  main.swift
//  ch14-1
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

// 定義結構
struct Hero {
    // 儲存屬性，類型是 String
    var spiderMan: String
    
    // 建構器，將儲存屬性初始化
    init() {
        print("呼叫建構器")
        spiderMan = "蜘蛛人"
    }
}

var hero = Hero()  // 建立實體
print("我最喜歡的英雄是：\(hero.spiderMan)")



// 浩克結構
struct Hulk {
    var weigh: Double
    init(fromPound Pound: Double) {
        weigh = ( Pound / 2.207 )
    }
    
    init(fromOunce Ounce: Double) {
        weigh = ( Ounce / 35.27 )
    }
}
// 根據外部參數名來判斷是哪個建構器
var hulkWeighOfPound = Hulk(fromPound:1103.5)  // 傳入磅單位
print("浩克體重是：\(hulkWeighOfPound.weigh)　公斤")

var hulkWeighOfOunce = Hulk(fromOunce:17635)   // 傳入盎司單位
print("浩克體重是：\(hulkWeighOfOunce.weigh)　公斤")


struct Light {
    let status : Bool
    init(status: Bool) {
        self.status   = status
    }
}

// 建立實體
let light  = Light(status: false)


class Question {
    var text: String
    var response: String?
    
    //建構器只需要將text屬性初始化，response 屬性會自動初始化為 nil
    init(text: String) {
        self.text = text
    }
    
    func ask() {
        print(text)
    }
}

let question = Question(text: "小姐要喝杯咖啡嗎？")

question.ask()
// 輸出 "小姐要喝杯咖啡嗎？"

// 這時候才將 response 設定值
question.response = "不好意思，我要去洗澡了"


class PersonClass {
    var name: String?
    var age = 25
    var hasCar = false
}


// 有沒有看到這裡使用『 () 』，這就是預設建構器啦！
var person = PersonClass()


struct Size {
    var width = 0.0, height = 0.0
}
let size1 = Size(width: 2.0, height: 2.0) // 使用成員建構器
let size2 = Size()


/*
看到結構的屬性都有預設值，而且沒有自訂建構器
代表會自動產生預設建構器以及成員建構器
*/
struct BodyInfo {
    var height = 0.0
    var weight = 0.0
}

struct Person {
    var myBodyInfo  = BodyInfo()
    var myName      = ""
    
    // 第一種建構器：
    init() { }
    
    /*
      第二種建構器：
      傳入 BodyInfo 實體以及字串來初始化屬性 myBodyInfo、myName
    */
    init(bodyInfo: BodyInfo,name: String) {
        self.myBodyInfo = bodyInfo
        self.myName     = name
    }
    
    /*
      第三種建構器：
      傳入 BodyInfo 實體以及字串來初始化屬性 myBodyInfo、myName
      但是會將 BodyInfo 中的 height 和 weight 乘以 2
    */
    init(halfBodyInfo: BodyInfo,name: String) {
        let halfHeight = (halfBodyInfo.height * 2)
        let halfWeight = (halfBodyInfo.weight * 2)
        self.myBodyInfo = BodyInfo(height:halfHeight,weight:halfWeight)
        self.myName     = name
    }
}


// =使用第一種建構器=
let person1 = Person()

// =使用第二種建構器=
//使用方式一
let currbodyInfo   = BodyInfo(height: 176.0, weight: 70.0)
let currname       = "傑森"
let person2        = Person( bodyInfo:currbodyInfo , name:currname )

// 使用方式二
let person3        = Person( bodyInfo: BodyInfo(height: 176.0, weight: 70.0), name: "傑森")

// =使用第三種建構器=
let person4        = Person( halfBodyInfo: BodyInfo(height: 88.0, weight: 35.0), name: "傑森")
// person4 的身高176.0體重是70.0，姓名是：傑森



class Animal {
    // 儲存屬性
    var numberOfLags = 0
    
    // 計算屬性
    var description: String {
        return "\(numberOfLags) 條腿"
    }
}

let animal = Animal()
print("動物：\(animal.description)")

class Dog: Animal {
    
    // 只有覆寫父類別的"指定建構器"才要加上"override"
    override init() {
        
        /*
         符合前述的安全檢查 1，因為 Dog 本身沒有自訂屬性
         不用先檢查本身的屬性有沒有初始化，
		所以可以直接呼叫父類別的"指定建構器"
        */
        super.init()
        
        /*
         numberOfLags 是繼承的屬性
         呼叫完父類別的"指定建構器"
         現在可以自訂操作了，把屬性修改為 2，符合安全檢查 2
        */
        numberOfLags = 4
    }
}



class Pet {
    var name: String
    
    // 指定建構器，將傳入的參數指派給屬性 name
    init(name: String) {
        self.name = name
    }
    
    // 便利建構器，它會呼叫本身的"指定建構器"，同時傳入參數"[沒有名字]"
    convenience init() {
        self.init(name: "[沒有名字]")
    }
}

let namedDog = Pet(name: "小黑")
let namePet = Pet()    // 呼叫便利建構器

class PetInfo: Pet {
    var weight: Int
    
    // 指定建構器
    init(name: String, weight: Int) {
        self.weight = weight
        super.init(name: name)
    }
    
    // 便利建構器
    override convenience init(name: String) {
        self.init(name: name, weight: 0)
    }
}


let petInfo1 = PetInfo()                        // 繼承的便利建構器
let petInfo2 = PetInfo(name: "小黑")             // 便利建構器
let petInfo3 = PetInfo(name: "阿花", weight: 20) // 指定建構器


class PetList: PetInfo {
    var takeBath = false
    
    var description: String {
        var output = "\(name) 是否有洗過澡"
        output += takeBath ? " ✔" : " ✘"
        return output
    }
}


var myPet = [
    PetList(),
    PetList(name: "小黑"),
    PetList(name: "阿花", weight: 20)
]
myPet[0].name      = "來福"
myPet[0].takeBath  = true
for item in myPet {
    print(item.description)
}


struct Vehicle {
    let type: String
    
    init?(type: String) {
        if type.isEmpty { return nil }
        self.type = type
    }
}
let someVehicle = Vehicle(type: "跑車")
// someVehicle 的類型是可選 Vehicle 也就是 Vehicle?


if let sportsCar = someVehicle {
    print("這輛車是\(sportsCar.type)")
}
// 輸出 "這輛車是跑車"


let otherVehicle = Vehicle(type: "") // 此處會回傳 nil ，因為傳入空字串
// someCreature 現在會等於 nil

if otherVehicle == nil {
    print("初始化失敗")
}
// 輸出 "初始化失敗"


enum Length {
    case Cm, M, Km
    
    init?(symbol: String) {
        switch symbol {
        case "公分":
            self = .Cm
        case "公尺":
            self = .M
        case "公里":
            self = .Km
        default:
            return nil   // 這裡代表錯誤發生
        }
    }
}

let cmUnit = Length(symbol: "公分")
if cmUnit != nil {
    print("初始化成功")
}
// 輸出 "初始化成功"


let unknownUnit = Length(symbol: "X")
if unknownUnit == nil {
    print("初始化失敗")
}
// 輸出 "初始化失敗"
