//
//  main.swift
//  sevenS09
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation

//var obj1 = Seven01()
//print(obj1.x)
//print(Seven02.x1) //不用物件實體也可以存取
//
//var obj2 = Seven02()
//
//Seven03.f2()
//
//var bike1 = Bike()
//var bike2 = Bike()
//var bike3 = Bike()
//var bike4 = Bike()
//print(Bike.counter)  //static
//print(bike1.counter)  //物件
//print(bike2.counter) //物件
//print(bike3.counter) //物件
//print(bike4.counter) //物件
//
//var obj4 = Super1()
//var obj3 = Sub1()
//var obj5 = Sub2()
//print("-----")
//var obj6 = Sub3(1)
//
//print("-----")
//
//var obj7 = Sub4(1)  //parent 是有參數的建構式
//var obj7a = Sub4(1.1) //parent 有兩個有參數的建構式
//var obj7b = Sub4()  //三種建構式 都可以用
//print("-----")
//
//var obj8 = Sub5()
//print("-----")
//
//var obj8a = Sub5(3)
//print("-----")
//var obj9 = Sub6()
//var obj9a = Sub6(1)

var obja = Sub7(x:1.0)
var objb = Sub7(x:1)

var objc = Sub8()
var objd = Sub8(x:1)


print("-----")

var myid = TWId("A123456789")
if myid = nil {
    print("XX")
}else {
    print("ok")
}
