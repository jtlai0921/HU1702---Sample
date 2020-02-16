//
//  main.swift
//  ch14-2
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

// 使用原始值列舉
enum Length: String {
    case Cm = "公分", M = "公尺", Km = "公里"
}


let cmUnit = Length(rawValue: "公分")
if cmUnit != nil {
    print("初始化成功")
}
// 輸出 "初始化成功"


let unknownUnit = Length(rawValue: "X")
if unknownUnit == nil {
    print("初始化失敗")
}
// 輸出 "初始化失敗"


class Person {
    let name: String!
    init?(name: String) {
        self.name = name
        if name.isEmpty { return nil }
    }
}

if let man = Person(name: "小陳") {
    //  不需要檢查 man.name == nil
    print("此人的名稱為：\(man.name)")
}


class Office: Person {
    let workHour: Int!
    
    init?(name: String, workHour: Int) {
        self.workHour = workHour
        super.init(name: name)
        if workHour < 1 { return nil } // 錯誤檢查
    }
}

if let man = Office(name: "小陳", workHour: 8) {
    print("\(man.name)工作了\(man.workHour)小時")
}
// 輸出 "小陳工作了8小時"


// 嘗試將參數 workHour 傳入 0，就會發生初始化錯誤：
if let man = Office(name: "小陳", workHour: 0) {
    print("\(man.name)工作了\(man.workHour)小時")
} else {
    print("工作時數不可填 0")
}
// 輸出 "工作時數不可填 0"


// 傳入空字串到參數 name 也會出錯：
if let man = Office(name: "", workHour: 1) {
    print("\(man.name)工作了\(man.workHour)小時")
} else {
    print("姓名不可為空")
}
// 輸出 "姓名不可為空"



class Architecture {
    var name: String?
    
    // 用此建構器會建立一個 name 為 nil 的實體
    init() {}
    
    // 用此建構器會建立一個 name 為非 nil 的實體
    init?(name: String) {
        self.name = name
        if name.isEmpty { return nil }
    }
}


class Apartment: Architecture {
    override init() {
        super.init()
        self.name = "「沒有名稱」"
    }
    
    // 覆寫父類別的失敗建構器
    override init(name: String) {
        /*
        這裡呼叫父類別的 init() {}，而不是init?(name: String)
        因為在一般建構器中無法委派失敗建構器
        */
        super.init()
        if name.isEmpty {
            self.name = "「沒有名稱」"
        } else {
            self.name = name
        }
    }
}



func getThisYyar()->String{
    return "2015"
}

struct Year {
    
    // thisYear 屬性使用全域函式來初始化
    let thisYear:String = getThisYyar()
    
    // numberArray 屬性使用閉包來初始化
    let numberArray: [Int] = {
        var numbers = [Int]()
        for i in 1...12 {
            numbers.append(i)
        }
        return numbers
        }()
    
    
    func printYear(numArray:[Int]) {
        for item in numArray {
            print("\(item)月")
        }
    }
}

let myYear = Year()
myYear.printYear(myYear.numberArray)
print("今年是：\(myYear.thisYear)")









