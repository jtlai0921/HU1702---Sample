//
//  main.swift
//  ch21-1
//
//  Created by dah.com on 2015/9/25.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

protocol SomeProtocol {
    var readAndWrite : Int { get set }   // 要求變數屬性為"可讀寫"
    var readOnly     : Int { get }       // 要求變數屬性為"唯讀"
    
    // 要求屬性為"可讀寫"的"類型屬性"
    static var someTypeProperty: Int { get set }
}


protocol FullyNamed {
    var fullName: String { get }
}


struct Person: FullyNamed{
    
    // 協定規定要有 fullName 屬性就一定要加上去，名稱和類型都要和協定一樣
    var fullName: String
}

let tomCruise = Person(fullName: "湯姆克魯斯")




// 定義一個建築類別
class Build: FullyNamed {
    var location: String
    var name: String
    
    // 建構器
    init(location: String, name: String ) {
        self.location   = location
        self.name       = name
    }
    
    /*
    這裡將屬性改成『計算屬性』，但並不會有錯誤發生，
    因為協定並不會要求屬性是儲存屬性還是計算屬性
    */
    var fullName: String {
        return "\(name) 在 \(location)"
    }
}
var taipei101 = Build(location: "台北", name: "101")
print(taipei101.fullName)

































