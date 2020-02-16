//
//  main.swift
//  ch17-1
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

class Person {
    var car: Car?   // 可選 Car 類型的變數
}

class Car {
    var numberOfSeats:Int = 4
}


let jason = Person()
//let seatCount = jason.car!.numberOfSeats



let seatCount = jason.car?.numberOfSeats
if seatCount != nil{
    print("Jason 的車子有 \(seatCount!) 個座位")
}else{
    print("可選鏈取值失敗！")
}


if let seatCount = jason.car?.numberOfSeats {
    print("Jason 的車子有 \(seatCount) 個座位")
} else {
    print("可選鏈取值失敗！")
}


jason.car = Car()
if let seatCount = jason.car?.numberOfSeats {
    print("Jason 的車子有 \(seatCount) 個座位")
} else {
    print("可選鏈取值失敗！")
}













