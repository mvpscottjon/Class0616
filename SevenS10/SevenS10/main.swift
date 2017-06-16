//
//  main.swift
//  SevenS10
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation

var obj1 = MyClass01(x:2)
print(obj1[3]) //[] 帶物件的return值 應該說執行的是subscript
obj1.x = 3
print(obj1[7])

var obj2 = My99(x:2)
obj2.x = 9
for i in 1...9 {
    print(obj2[i])
}

print(obj2[3,4])  //兩個參數 為第二個腳本

print(obj2[3.14])  //ger
obj2[3.14] = 7.456  //set
print(obj2.x)

print("-------")


var obj3 = Sub1()
print(obj3.x)

obj3.f1()
obj3.f2(x:1)
obj3.f2(y:3)
print("-------")


var obj4 = Super3()
var obj5 = Sub3()
var obj6 = Sub4()

print(obj4 is Super3)  //是不是Super3 的物件型別嗎

print(obj5 is Sub3)
print(obj6 is Sub4)

print(obj5 is Super3)


print(obj4 is String)

print(obj4 is MyClass01)

var obj7:Super3 = Sub3()
print(obj7 is Super3)
print(obj7 is Sub3)
//print(obj7 is Sub4)

obj4.f1()
obj5.f1()
obj6.f1()

obj7.f1() //能呼叫的方法與屬性看宣告的型別  此例子只能為Super3


var obj8 = obj7 as! Sub3  //轉下又轉上  有風險要加！
print(type(of:obj8))

obj8.f1()


//var obj9 = obj7 as! Sub4  //錯了


if obj7 === obj8 {
    print("OK")

}else {
    print("XX")
}

obj7.f1()  //呼叫看型別:Super3  執行動作看呼叫的類別 = Sub3



func needSuper3 (obj:Super3){
    obj.f1()
}

//needSuper3(obj: <#T##Super3#>)

//後面太亂了要看老師講義










//============

//一種型別 表所有物件
func needObj(obj:AnyObject)
{ print(type(of:obj))
}
