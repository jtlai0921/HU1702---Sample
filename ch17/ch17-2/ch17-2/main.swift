//
//  main.swift
//  ch17-2
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

class Person {
    var car: Car?   // 可選 Car 類型的變數
}

class Car {
    var seats = [ Seat ]()          // 空的陣列，存放 Seat 類型的元素
    var numberOfSeats: Int {        // 計算屬性
        return seats.count
    }
    
    // 定義下標的 getter 和 setter
    subscript(i: Int) -> Seat {
        get {
            return seats[i]
        }
        set {
            seats[i] = newValue     // newValue 類型等於回傳類型 Seat
        }
    }
    
    // 輸出訊息方法
    func printNumberOfSeats() {
        print("總共 \(numberOfSeats) 個座位")
    }
    
    var licensePlate: LicensePlate?  // 可選 LicensePlate 類型屬性
}

class Seat {
    let name: String
    init(name: String) { self.name = name }
}

class LicensePlate {
    var numbers : String?
    
    func carNumbers() -> String? {
        if numbers != nil {
            return numbers
        }  else {
            return nil
        }
    }
}



let jason = Person()  // 建立 Person 實體
if let seatCount = jason.car?.numberOfSeats {
    print("Jason 的車子有 \(seatCount) 個座位")
} else {
    print("可選鏈取值失敗！")
}



let myLicensePlate       = LicensePlate()
myLicensePlate.numbers   = "AB-1234"


// 使用可選鏈來設定屬性
if (jason.car?.licensePlate  = myLicensePlate) != nil {
    print("設定屬性成功")
} else {
    print("設定屬性失敗")
}
// 輸出 "設定屬性失敗"


if jason.car?.printNumberOfSeats() != nil {
    print("呼叫 printNumberOfSeats 方法成功")
} else {
    print("呼叫 printNumberOfSeats 方法失敗")
}
// 輸出 "呼叫 printNumberOfSeats 方法失敗"


if let firstSeat = jason.car?[0].name {
    print("第一個座位材質是：\(firstSeat)")
} else {
    print("無法取得座位材質")
}


if ( jason.car?[0] = Seat(name: "皮椅")) != nil {
    print("使用下標設定屬性成功")
} else {
    print("使用下標設定屬性失敗")
}


let myCar = Car()                       // 建立 Car 實體
myCar.seats.append(Seat(name: "皮椅"))  // 將 Seat 實體加入陣列中
myCar.seats.append(Seat(name: "麂皮"))  // 將 Seat 實體加入陣列中
myCar.seats.append(Seat(name: "織布"))  // 將 Seat 實體加入陣列中
myCar.seats.append(Seat(name: "織布"))  // 將 Seat 實體加入陣列中


jason.car = myCar   // 將 myCar 實體指派給 jason.car
if let firstSeat = jason.car?[0].name {
    print("第一個座位材質是：\(firstSeat)")
} else {
    print("無法取得座位材質")
}




var testDictionary  = ["傑森": [1, 2, 3], "雪倫": [4, 5, 6]]
testDictionary["傑森"]?[0] = 11
testDictionary["雪倫"]?[0]++
testDictionary["麥可"]?[0] = 22

if (testDictionary["傑森"]?[0] = 11) != nil {
    print("成功")
} else {
    print("失敗")
}

if (testDictionary["雪倫"]?[0]++) != nil {
    print("成功")
} else {
    print("失敗")
}

if (testDictionary["麥可"]?[0] = 22) != nil {
    print("成功")
} else {
    print("失敗")
}
/*
輸出:
成功
成功
失敗
*/


if let carNumber = jason.car?.licensePlate?.numbers {
    print("Jason 車子的車牌號碼是：\(carNumber)")
} else {
    print("無法取得車子的車牌號碼")
}


// 因為前面有將 Car 實體指派給 jason.car 了，所以可以用強制解析取屬性 car
jason.car!.licensePlate  = myLicensePlate

if let carNumber = jason.car?.licensePlate?.numbers {
    print("Jason 車子的車牌號碼是：\(carNumber)")
} else {
    print("無法取得車子的車牌號碼")
}
// 輸出 "Jason 車子的車牌號碼是：AB-1234"


if let carNumber = jason.car?.licensePlate?.carNumbers() {
    print("Jason 車子的車牌號碼是：\(carNumber)")
}


if let carNumber = jason.car?.licensePlate?.carNumbers()?.hasPrefix("QR")  {
    print("車子的車牌號碼開頭是 QR 嗎? \( carNumber ) ")
}
