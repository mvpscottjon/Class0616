//
//  main.swift
//  sevenS08
//
//  Created by user on 2017/6/15.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation



var s1 = Student("S01", 90, 45, 32)
var s2 = Student("S02", 90, 45, 32)
print(s1.sum())
print(s1.avg())
print(s2.sum())
print(s2.avg())
print(s1 === s2)  ////物件比較要用三個等號  值一樣 但為不同物件實體


var s3 = s1  //非只傳值 是為傳址  指向同一個記憶體空間
print(s3.sum())
print(s3.avg())

s1.c = 100   //把s1 c變一百
print(s1.sum())
print(s1.avg())

print(s3.sum())  //s3會跟著改變  指向記憶體  與struct不一樣
print(s3.avg())


print(s1 === s3)  // 同一物件實體


print("------")


var b1 = Bike(0)
b1.upSpeed();b1.downSpeed();b1.upSpeed();b1.upSpeed();b1.upSpeed()
//print(b1.speed)  //如為 private 不能這樣用
print(b1.getSpeed())



var b2 = b1.clone()
print(b2.getSpeed())
print(b1 === b2)  //clone 不同物件實體  

var b3 = b1
print(b3 === b1)  //同物件實體

print("------")


var b4 = c5()
b4.dosth()
b4.dosth()

print("------")

var struc1 = MyClass3()
struc1.x = 33; struc1.y = 44

var struc2 = MyClass4()
print(struc2.v1.x)
print(struc2.v1.y)
struc2.v2 = struc1
print("------")
print(struc2.v2.x)
print(struc2.v2.y)
print(struc2.v1.x)   //class4 的set影響
print(struc2.v1.y)

print("------")

var struc3 = struc2.v2   //   struc3 is a struct(Myclass3)

print(struc2.v1.x)
print(struc2.v1.y)
print(struc2.v2.x)
print(struc2.v2.y)
print(struc3.x)
print(struc3.y)

print("------")


var ss1 = MyScore()
ss1.x = 100; ss1.y = 50; ss1.z = 70;
//print(ss1.sum)
print(ss1.avg)

print("------")
var ss5 = MyClass5()
//print(ss5.x)
//ss5.x = 123
