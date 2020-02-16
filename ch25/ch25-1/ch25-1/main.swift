//
//  main.swift
//  ch25-1
//
//  Created by dah.com on 2015/9/26.
//  Copyright © 2015年 jason. All rights reserved.
//

import Foundation

enum RegisterMemberError: ErrorType {
    case InvalidAccount
    case HaveSameAccount
    case InvalidCaptcha(errorMsg: String)
}

var dataBaseAccount = ["Jason","Lily","Sharon"]
func RegisterMember(memberAccount mAccount: String?,captchaNumber captchaNum:Int) throws {

    // 如果帳號是空的，會丟出 InvalidAccount 錯誤
    guard var _ = mAccount else {
        throw RegisterMemberError.InvalidAccount
    }
    
    // 檢查帳號是不是已經有人註冊了
    for dbAccount in dataBaseAccount {
        guard dbAccount != mAccount else {
            throw RegisterMemberError.HaveSameAccount
        }
    }
    
    // 檢查驗證碼是否輸入錯誤，如果錯誤會回傳一段我們自訂的訊息
    if captchaNum <= 0 {
        let msg = "驗證碼必須大於零"
        throw RegisterMemberError.InvalidCaptcha(errorMsg: msg)
    }
}


do {
    
    var memberName : String? = "Jason"
    try RegisterMember(memberAccount: memberName, 
                       captchaNumber: 5566)
}catch RegisterMemberError.InvalidAccount {
    print("請輸入帳號名稱")
}catch RegisterMemberError.HaveSameAccount{
    print("帳號名稱已經被註冊過了")
}catch RegisterMemberError.InvalidCaptcha(let msg){
    print("\(msg)")
}


func openFile() {
    print("打開檔案")
    defer { print("關閉檔案") }
    print("讀寫檔案")
}
openFile()












