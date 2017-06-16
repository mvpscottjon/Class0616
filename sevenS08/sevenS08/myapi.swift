//
//  myapi.swift
//  sevenS08
//
//  Created by user on 2017/6/15.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation


class c1 {
    
}
var obj1 = c1()
//print(type(of:obj1))

class c2 {
    init(){   //建構式 ＝>物件初始化=>屬性初始化  1.沒有func 2.沒有return
        print("init")
    }
}
var obj2 = c2()

//print(type(of:obj2))


class c3 {
    var x = 1
    var y = 1
    init() {}
}

var obj3 = c3()
//print(obj3.x)   //x 表屬性的成員(member)
//print(obj3.y)

class c4 {
    var x:Int
    var y:Int
    //    init(){  //不能兩個init
    //    }
    init(x:Int, y:Int) {
        //        x = newx; y = newy
        self.x = x; self.y = y
    }
    func m1()->Int {
        return 123
    }
    
}

//var obj4 = c4(newx:3, newy:4)
var obj4 = c4(x:3,y:4)
//print(obj4.x)
//print(obj4.m1())





class Student {
    var m:Int
    var e:Int
    var c:Int
    var sid:String
    
    init( _ sid:String ,_ m:Int, _ e:Int, _ c:Int) {
    self.m = m
    self.e = e
    self.c = c
    self.sid = sid
    }
    
    func sum() ->Int {
        return c + e + m
    }
    
    func avg() ->Double {
        return Double(sum()) / 3.0
    }
    
    
}




class Bike {
    private var speed: Double
//    var a:Double
    init(_ speed:Double) {
        self.speed = speed
//        self.a = a
    }
        func upSpeed() {
            speed = speed < 1 ? 1 : speed * 1.2
            
        }
        
        func downSpeed() {
             speed = speed < 1 ? 0 : speed * 0.7
        }
        
        func getSpeed() ->Double{
            return speed
        }
        
        func clone() ->Bike {
            return Bike(speed)
        }
        
        
        
    }
    
class c6 {
    init() {
        print("c6:init()")
    }
    
    func m1() {
        print("c6:m1()")
    }
    
}


class c5 {
    var p1 = c6()
    lazy var p2:c6 = c6()  //不馬上跑建構式 第一次叫用 會初始化
    func dosth() {
        print("ok")
        p2.m1()
    }
}



struct MyClass3 {
    var x = 1
    var y = 1

}

struct MyClass4 {
    var v1 = MyClass3()
    var v2:MyClass3 {
        get {    //取值要return
            let newx = v1.x + 10
            let newy = v1.y + 20
            return MyClass3(x:newx, y:newy)
        }
        set(aClss3Obj) {    //給值要帶參數---aClss3Obj僅為參數名稱
            v1.x = aClss3Obj.x - 10
            v1.y = aClss3Obj.y - 30
        }
    }
    var v3:MyClass3 {
        //{...} 中可以使用原先定義的屬性
        //定義 getter & setter
        //透過v3 的 取值(getter) ==> xxx = v3
        // setter ==> v3 = xxx
        
        get {   //有set的話一定要有set
            return MyClass3(x:1, y:2)
        }
        set(aVar) {
            // aVar 一定要是 MyClass3
            //set 沒給參數會是預設的newValue
//            newValue.x-100
            
        
        }
        
    }
}




class MyScore {
    var x = 0, y = 0, z = 0;
    var sum:Int {  //值 因 x, y, z 而不同
//        get { 只get的話可省略
            return x + y + z
//        }
    
    }
    
    var avg:Double {
//        get{
            return Double(sum) / 3.0
        
//        }
    
    }
    
}

    class MyClass5 {
        var x :Int = 0 {
            willSet(newx){  //before set
                print("brfore : \(x) --> \(newx)")
            }
            didSet {   //after set
                
                
                print("brfore : \(x)")
            }
        }
        
    
    }
    
    


struct MyStruct111 {
    var a = 1
    func f1(){
//        a = 2  不能改值
        print(a)
    }
    mutating func f2(){   //要改值需加  mutating
        a = 2
        print(a)
        self = MyStruct111(a:100)
    }
    
    
}

class MyClass111 {
    var a = 1
    func f1() {
        a = 2
        print(a)
    
    }
}


