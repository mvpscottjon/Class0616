//
//  MyClass.swift
//  SevenS10
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation

class MyClass01 {
    var x:Int
    init(x:Int){
        self.x = x
    }
    
    subscript(y:Int) -> Int {
    
    return y * self.x
    
    }
}



class My99 {
    var x:Int
    init(x:Int){
        self.x = x
    }
    subscript(y:Int) -> String {
        
    return "\(x) * \(y) = \(x * y)"
    }
    subscript(y:Int, z:Int) ->Int {
        return 123
    }  //多個腳本 差別在於傳遞的參數
    subscript(y:Double) -> Double {
        get {
            print("get")
            return floor(y)
        }
        
        set{
            print("set")
        self.x = Int(ceil(newValue))
        }
        
    }
}


///-------------------

//屬性方法 override

class Super1 {
    private var x = 10 //不會被繼承 外部也看不到
//    var x = 10
        var y = 3
    
        var z = 2
    var a:Int{
        get{
            return 3
        }
        set{
        }
    
    }
    
    
    func f1() {
        print("Super1:f1()")
    }
    func f2(x:Int) -> Double {
        print("f2(x:Int)")
    return 1.0
    }
    
}


class Sub1 : Super1 {
    var x = 3
//    var y = 9   錯的
//    var y:Int
//    init(y:Int){
//    self.y = y
//    } 還是錯
    override var y:Int {
//        return 3
        get {
        return 3
        }
        set {
        
        }
    }
    
    override var z:Int {
        willSet{
        
        }
        didSet{
        
        }
    }
    override var a:Int {  //子代override 不能storage 一定要變動 如 get set willSet didSet
        get{
        return 3
        }
        set{
        }
    
    }
    
    
    override func f1() {  //名字相同要override  之後呼叫f1為子類別的
        super.f1()  //呼叫父類方法  可以不用  僅為邏輯特性
        print("Sub1:f1()")
    }
    func f2(y:Int){  //參數不同 不是override
        print("f2(y:Int)")
    }
    
    override func f2(x:Int) -> Double ///傳回值也要一樣
    {   f1() //self
        super.f1()  //parent
        return 8.0
    }
    
}
//---------------
final class Super2 { //final class 不能被繼承

}

//
//class Sub2 : Super2{
//
//}


//============

//多型  型別轉換

class Super3 {
    func f1(){
    print("Super3:f1()")
    }

}

class Sub3 :Super3 {
    override func f1() {
        print("Sub3:f1()")
    }
    func f2(){
        print("Sub3:f2()")
    }
    func f3(){
        print("Sub3:f3()")
        }
}
class Sub4 :Super3 {
    override func f1() {
        print("Sub4:f1()")
    }
    func f2(){
        print("Sub4:f2()")}

}






        
 
