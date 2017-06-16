//
//  myfunc2.swift
//  sevenS07
//
//  Created by user on 2017/6/13.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation


func  myfunc2() {
    
    func f1() -> () -> () {
        func f2() {
            print("f2")
        }
        return f2  //by value
    }
    
    let f4 = f1
    let f3 = f4()
    f3()
    
    func f5(myfunc: ()->()){
        myfunc()
        print("f5")
    }
    let f6 = f5   //只給定義部分 {  裡面的東西}
    
    func f7() {print("f7")}
    
    f5(myfunc: f7)
    f6(f7)
    
    f6() {
        print("tail")
    }

    
    
    
    func f10(){
        print("f10")
        
    }
    
    func f10(a:Int){    //overload  函數名稱一樣  傳入參數不一樣
        
    }
    
//    func f10() -> Int {   //傳回值不同
//        return 1
//    }
//    
//    
//    func f10() -> Bool {   //傳回值不同
//        return true
//    }
    
    
    func f10(a:Int, b:Bool) {   //傳回值不同
        
    }
    
    
    f10(a:3)
    
    
    func f11() {
        
        print("f3")
    }
    
    
    func f11(by:(Int,Int) -> Bool){
        print("f3:bool")
    }
    
    f11()
    
    f11(by: {(a,b) -> Bool in a < b})
    
    f11(){(a,b) ->Bool in
        print("ok")
        return a < b
    }
    
    print("----")
    
    
    
    
//    func createTWId() ->String {
//        return createTWId(gender: false)
//    }
//    func createTWId(gender:Bool) ->String {
//        return createTWId(gender: gender, area: 4)
//    }
//    func createTWId(area:Int) ->String {
//        return createTWId(gender: true, area: area)
//    }
//    func createTWId(gender:Bool, area:Int) ->String {
//        return ""
//    }
    
    
    
}
