//
//  main.swift
//  ch23-1
//
//  Created by dah.com on 2015/9/26.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

// 設定為 public 類別
public class SomePublicClass {
    private func privateMethod() {}         // private
    public  var  publicProperty     = 0     // public
            var  internalProperty   = 0     // internal
}

// 沒有設定存取層級的類別
class SomeInternalClass {
    private func privateMethod() {}         // private
            var  internalProperty = 0       // internal
}

// 設定為 private 類別
private class SomePrivateClass {
    func    somePrivateMethod() {}          // private
    var     somePrivateProperty = 0         // private
}


public enum TrafficLight {
    case Green
    case Yellow
    case Red
}



public class A {
    private func someMethod() {}
}

internal class B: A {
    override internal func someMethod() {}
}


struct TrackInt {
    private(set) var numOfChange = 0
    var value: Int = 0 {
        didSet {
            numOfChange++
        }
    }
}

var trackInt = TrackInt()
trackInt.value = 1
trackInt.value++
trackInt.value++

print("總共更改了：\(trackInt.numOfChange) 次")
// 輸出 "總共更改了：3 次"


extension publicClass {
    var valDouble: Int { return valInt*valInt }
}

public struct publicClass {
    var valInt :Int = 0
}


private struct privateClass {
    var valInt :Int = 0
}

// 錯誤，類型別名的存取層級只能等於或低於此類型
//public typealias aliasClass = privateClass













