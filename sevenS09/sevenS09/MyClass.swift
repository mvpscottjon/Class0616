//
//  MyClass.swift
//  sevenS09
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation

class MyClass01 {
    
}

class MyClass02 {
    var x:Int
    init(x:Int) {
        self.x = x
    }
}

class MyClass03 {
    var x = 123

}


class MyClass04 {
    var x:Int?   //允許他空值 可不用init

}
//-----------------------------

class MyClass05 {
    var x:Int {
        get{  //壹定要有getter
            
            return 1
        }               //要有return 取值
    
        set{   //可以不要 setter
//            set(newx){  這個寫法要帶參數
            newValue
        }
    }
}


class MyClass06 {
    var y = 123
    var x:Int{  //Computed Property
        return y * y
    }
}



class MyClass07 {
    var x = 0 {
        willSet{  //before
            //newValue
        
        }
        didSet{  //after
        
        }
    
    }


}
