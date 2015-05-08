//
//  FuncTest.swift
//  swiftStu
//
//  Created by liugang on 15/4/6.
//  Copyright (c) 2015年 liugang. All rights reserved.
//

import Foundation


func hello(name:String,sex:String)->String{
    return "Hello \(name),you are a \(sex)."
}

//使用元组让一个函数返回多个值
func calculateStatistics(scores:[Int])->(min:Int,max:Int,sum:Int){
    
   var min = scores[0]
   var max = scores[0]
   var sum = 0
   
    for score in scores {
        if score > max{
            max = score
        } else if score < min {
            min = score
        }
        
        sum += score
    }
    
    return(min,max,sum)
    
}

//函数带有多个可变个数参数
func prints(numbers:Int...){
    var iCnt = 0
    for num in numbers{
        
        println("numbers[\(iCnt)] = \(num)")
        iCnt += 1
    }
    
    if iCnt == 0 {
        println("numbers = nil")
    }
    
}

//嵌套函数

func returnFifteen() ->Int{
    var y:Int = 10
    
    func add(){
        y += 5
    }
    
    add()
    
    return y
}


//函数作为另一个函数的返回值

func firstLay()->(Int -> Int){
    
    func secondLay(number:Int)->Int{
        return number
    }
    return secondLay
}



//函数作为另一个函数的传入参数

func hasMatch(list:[Int],conditions:Int -> Bool) -> Bool{
    
    for item in list{
        if conditions(item){
            println("item:\(item) > 10")
            return true
        }
    }

    println("no item > 10")
    return false
}

func hasOverTen(num:Int) -> Bool{
    
    return num > 10
}
