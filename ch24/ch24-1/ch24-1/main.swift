//
//  main.swift
//  ch24-1
//
//  Created by dah.com on 2015/9/26.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

let bitData: UInt8  = 0b00101011  // 0b 表示後面的數字是二進制
let bitDataNot      = ~bitData    // 等於 11010100


func printData(input:UInt8){
    print("二進制：\(String(input, radix: 2))")
    print("十進制：\(String(input, radix: 10))")
    print("十六進制：\(String(input, radix: 16))")
}

printData(bitDataNot)


let bitDataOne: UInt8  = 0b11000011
let bitDataTwo: UInt8  = 0b10101111
let bitDataAnd         = bitDataOne & bitDataTwo
printData(bitDataAnd)


let bitDataOR    = bitDataOne | bitDataTwo
printData(bitDataOR)


let bitDataXOR    = bitDataOne ^ bitDataTwo
printData(bitDataXOR)


let bitDataLeftShift    = bitData << 1
printData(bitDataLeftShift)

let bitDataRightShift    = bitData >> 2
printData(bitDataRightShift)



struct Point {
    var x = 0.0
    var y = 0.0
}

func + (left: Point, right: Point) -> Point {
    return Point(x: left.x + right.x, y: left.y + right.y)
}

let onePoint = Point(x: 1.0, y: 1.0)
let twoPoint = Point(x: 3.0, y: 4.0)
let combinePoint = onePoint + twoPoint
print("X 座標：\(combinePoint.x), Y 座標：\(combinePoint.y)")


func == (left: Point, right: Point) -> Bool {
    return (left.x == right.x) && (left.y == right.y)
}

func != (left: Point, right: Point) -> Bool {
    return !(left == right)
}


var aPoint   = Point(x: 45.0, y: 45.0)
var bPoint   = Point(x: 45.0, y: 45.0)
var cPoint   = Point(x: 11.0, y: 22.0)

if aPoint == bPoint {
    print("兩點座標一樣")
}

if aPoint != cPoint {
    print("兩點座標不一樣")
}


prefix operator √ {}
prefix func √ (number: Double) -> Double {
    return sqrt(number)
}
print("81 開根號是 \( √81 )")
// 輸出 "81 開根號是 9.0"














