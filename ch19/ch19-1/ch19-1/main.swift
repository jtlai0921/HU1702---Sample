//
//  main.swift
//  ch19-1
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

struct Person {
    
    // 巢狀列舉 Blood，代表血型
    enum Blood: String {
        case A = "A", B = "B", AB = "AB", O = "O"
    }
    
    // 巢狀列舉 Mood，代表心情
    enum Mood: Character {

        case Delight = "😃", Anger     = "😡"

        case Sorrow  = "😞", Happiness = "😍"
    }
    
    // 巢狀列舉 WeightResult，描述目前體重狀態
    enum WeightResult: String {
        case UnderWeight    = "體重過輕"
        case NormalWeight   = "體重正常"
        case OverWeight     = "體重過重"
        var value: String {
            return self.rawValue
        }
    }
    
    var height  = 0.0
    var weight  = 0.0
    var bmi     = 0.0
    var blood       :Blood
    var mood        :Mood
    var weightDes   :WeightResult?
   
    

    // 建構器，同時會根據傳入的參數來計算 BMI 
    init( height: Double  , weight: Double , 
           blood: Blood , mood: Mood ) {
        self.height  = height
        self.weight  = weight
        
        let m = ( height / 100 )
        self.bmi = ( weight / (m*m) )
        
        self.blood   = blood
        self.mood    = mood
        
        if self.bmi < 18.5 {
          self.weightDes = .UnderWeight
        } else if self.bmi >= 18.5 && self.bmi <= 24{
          self.weightDes = .NormalWeight
        } else if self.bmi > 24 {
          self.weightDes = .OverWeight
        }
        
    }
    
    // 描述方法
    func description() {
        print("身高:\(height)")
        print("體重:\(weight)")
        print("體重狀態:\(weightDes!.rawValue)")
        print("BMI:\(bmi)")
        print("血型:\(blood.rawValue)")
        print("心情:\(mood.rawValue)")
    }
}




let jason = Person(height: 176, weight: 72,blood: .A, mood: .Delight)
jason.description()


let bloodAB = Person.Blood.AB.rawValue
print("血型是：\(bloodAB)")































