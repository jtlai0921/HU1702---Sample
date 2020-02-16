//
//  main.swift
//  ch13
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

class Role {
    var name = ""
    var hp   = 0.0
    var printHP: String {
        return "生命值：\(hp) "
    }
    
    func attack() {
        // 目前為空的方法
    }
}


let someRole = Role()
print("\(someRole.printHP)")
// 輸出 "生命值：0.0 "


class Warrior : Role {
    var hasWeapon = false    // 是否裝備武器的意思，初始值為沒有
}

let warrior = Warrior()         // 建立戰士實體
warrior.hasWeapon = true        // 幫戰士買個武器，所以改為 true
warrior.hp = 500                // 存取父類別 Role 的屬性，設定為 500
print("戰士\(warrior.printHP)")
// 輸出 "戰士生命值：500.0 "


class ShieldWarrior : Warrior {
    var canTakeShield = true    // 是否可拿盾牌意思，初始值為 true
}
let shieldWarrior = ShieldWarrior()
shieldWarrior.hasWeapon     = true
shieldWarrior.hp            = 650
shieldWarrior.canTakeShield = true
print("盾戰士\(shieldWarrior.printHP)")
// 輸出 "盾戰士生命值：650.0 "




class Mage: Role {
    // 覆寫 attack 方法
    override func attack() {
        print("火球術！")
    }
}
let mage = Mage()
mage.attack()
// 輸出 "火球術！"



class SuperClass {
    // 實體屬性
    var valA: Int = 1
    
    
    // 實體方法
    func myfunA() { }
    
    
    // 類別屬性
    class var valB:String {
        get{ return "" }
    }
    
    
    // 類別方法
    class func myfunB() { }

    // 下標
    subscript(index: Int) -> Int {
        get { return index*index }
    }
}



class SubClass:SuperClass {
    
    // 覆寫實體屬性
    override var valA:Int {
        get { return 2 }
        set { super.valA = newValue }
    }
    
    // 覆寫實體方法
    override func myfunA(){
        print("覆寫實體方法")
    }
    
    // 覆寫類別屬性
    override class var valB:String {
        get{ return "覆寫類別屬性" }
    }
    
    // 覆寫類別方法
    override class func myfunB(){
        print("覆寫實體方法")
    }
    
    // 覆寫下標
    override subscript(index: Int) -> Int {
        get { return index*index*index }
    }
}
let mySubClass = SubClass()

print(mySubClass.valA)
mySubClass.myfunA()
print(SubClass.valB)
SubClass.myfunB()
print(mySubClass[3])



class Super {
    var valA: Int = 1
}

class Sub:Super {
    
    // 替繼承屬性加上屬性觀察者
    override var valA:Int {
        willSet { print("修改前的 valA = \(valA)") }
        didSet  { print("修改後的 valA = \(valA)") }
    }
    
}

let subClass = Sub()
print("原本的 valA = \(subClass.valA)")
subClass.valA = 20












