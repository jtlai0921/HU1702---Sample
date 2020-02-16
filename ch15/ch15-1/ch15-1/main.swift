//
//  main.swift
//  ch15-1
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

class aClass {
    var a = 10
    deinit{  print("這是 A Class 解構器，a:\(a)") }
}

class bClass:aClass {
    var b = 20
    deinit{  print("這是 B Class 解構器，a:\(a) b:\(b)") }
}

class cClass:bClass {
    var c = 30
    deinit{  print("這是 C Class 解構器，a:\(a) b:\(b) c:\(c)") }
}

var myClass: cClass? = cClass()
myClass = nil