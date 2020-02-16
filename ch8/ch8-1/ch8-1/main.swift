//
//  main.swift
//  ch8-1
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

enum Direction {
    case Up
    case Down
    case Right
    case Left
}

var direct = Direction.Left
direct = Direction.Right
direct = .Down


switch direct {
  case Direction.Up:
    print("上")
  case Direction.Down:
    print("下")
  case Direction.Right:
    print("右")
  case Direction.Left:
    print("左")
}


switch direct {
    case .Up:
      print("上")
    case .Down:
      print("下")
    case .Right: 
      print("右")
    case .Left: 
      print("左")
}


switch direct {
    case .Up:
      print("上")
    case .Down:
      print("下")
    case .Right: 
      print("右")
    default:
      print("default")
}


enum Role {
    case Warrior(Int,String)  // 戰士（血量,武器名稱）
    case Mage(Int,Int)        // 法師（血量,魔法值）
    case Rogue(Int, Bool)     // 盜賊（血量,隱藏狀態）
}
var role = Role.Mage(20,120)
role = .Rogue(45,false)


switch role {
    case .Warrior(let HP, let weaponName):
      print("戰士的血量為：\(HP)，武器名稱是：\(weaponName)")
    case .Mage(let HP, let Mana):
      print("法師的血量為：\(HP)，魔法值為：\(Mana)")
    case .Rogue(let HP, let hideStatus):
      print("盜賊的血量為：\(HP)，隱藏狀態是：\(hideStatus)")
}


switch role {
    case let .Warrior( HP,  weaponName):
      print("戰士的血量為：\(HP)，武器名稱是：\(weaponName)")
    case let .Mage( HP,  Mana):
      print("法師的血量為：\(HP)，魔法值為：\(Mana)")
    case let .Rogue( HP,  hideStatus):
      print("盜賊的血量為：\(HP)，隱藏狀態是：\(hideStatus)")
}


enum Family: String {
  case DadName      = "菲爾"
  case MomName      = "克萊爾"
  case DaughterName = "海莉"
  case SonName      = "盧克"
}


enum AnimalSign: Int {
  case Rat = 1, Ox    , Tiger  , Rabbit  , Dragon , Snake
  case Horse  , Sheep , Monkey , Rooster , Dog    , Pig
}
print("龍排行第：\(AnimalSign.Dragon.rawValue)")
var animal = AnimalSign(rawValue: 9)


if let someAnimal = AnimalSign(rawValue: 20) {
  print("此生肖排行是：\(someAnimal.rawValue)")
} else {
  print("找不到對應的列舉成員")
}

/*
enum Expression {
    case Num(Int)
    indirect case Add(Expression, Expression)
}
*/

indirect enum Expression {
    case Num(Int)
    case Add(Expression, Expression)
}

func calculate(val: Expression) -> Int {
    switch val {
        case .Num(let a):
            return a
        case .Add(let a, let b):
            return calculate(a) + calculate(b)
    }
}
let two    = Expression.Num(2)
let ten    = Expression.Num(10)
let result = Expression.Add(two,ten)
print(calculate(result))



















