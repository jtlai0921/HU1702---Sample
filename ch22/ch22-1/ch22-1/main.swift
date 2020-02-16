//
//  main.swift
//  ch22-1
//
//  Created by dah.com on 2015/9/26.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

func swapValue <T>(inout a: T, inout b: T) {
    let temp = a
    a = b
    b = temp
}


var aInt = 11
var bInt = 22

/*
現在呼叫 swapValue 函式，因為你傳入參數類型是 Int ，
所以現在 Swift 會推斷 T的實際類行為 Int 類型
*/
swapValue(&aInt, b: &bInt)

print("aInt 現在是：\(aInt)，bInt 現在是：\(bInt)")
// 輸出 "aInt 現在是：22，bInt 現在是：11"


var cStr = "你好"
var dStr = "再見"

// 因為你傳入參數類型是 String ，所以 T 現在推斷為 String 類型
swapValue(&cStr, b: &dStr)
 
print("cStr 現在是：\(cStr)，dStr 現在是：\(dStr)")
// 輸出 "cStr 現在是：再見，dStr 現在是：你好"


struct Queue<T> {
    var items = [T]()
    
    mutating func enqueue(item: T) {
        items.append(item)
    }
    
    mutating func dequeue() -> T {
        return items.removeAtIndex(0)
    }
}


var queueStr = Queue<String>()  // 建立存放 String 類型的佇列
queueStr.enqueue("鼠")
queueStr.enqueue("牛")
queueStr.enqueue("虎")
queueStr.enqueue("兔")
queueStr.enqueue("龍")

for item in queueStr.items {
    print(item)
}
queueStr.dequeue()


extension Queue {
    func printQueue() {
        for item in items {
            print(item)
        }
    }
}
queueStr.printQueue()


func findMax<T:Comparable>(a: T, b: T) -> T {
    return a > b ? a : b
}
let doubleMax = findMax( 3.14159, b: 0.25 )
let stringMax = findMax( "柯比", b: "林書豪")
print(doubleMax)
print(stringMax)

protocol Container {
    typealias ItemType
    mutating func append(item: ItemType)
    subscript(i: Int) -> ItemType { get }
    var count: Int { get }
}












