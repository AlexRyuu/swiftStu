//
//  main.swift
//  swiftStu
//
//  Created by liugang on 15/4/5.
//  Copyright (c) 2015年 liugang. All rights reserved.
//

import Foundation


println("Hello, World!")

//简单值
varTest()

//数组的声明及使用
arrTest()


//
//控制流
//

controlTest()

//
// func
//

var strHello = ""
strHello = hello("dogi", "boy")

println(strHello)


//使用元组让一个函数返回多个值
var scores = [34,64,78,47,85,99,1,52]

let calc = calculateStatistics(scores)

println("calc.min = \(calc.min)")
println("calc.max = " + String(calc.1))
println("calc.sum = \(calc.sum)")


//函数带有多个可变个数参数
prints()

prints(13,54,2224,12)


//嵌套函数
println("returnFifteen() = \(returnFifteen())")


//函数作为另一个函数的返回值

var getRet = firstLay()

//此处的getRet接收firstLay()的返回值，而firstLay()的
//返回值是一个函数，因此getRet可视为一个函数，即firstLay()
//返回的secondLay()


println("firstLay = \(getRet(5))")


//函数作为另一个函数的传入参数

var nums = [3,5,6,2,7]

let sortedNumbers = sorted(nums){$0 < $1}

for j in sortedNumbers{
    println("j = \(j)")
}
//hasMatch(nums,hasOverTen)
//
//
////函数  闭包
//
//for i in nums{
//    println("i = \(i)")
//}
//
//
//let mnums = nums.map({
//    (num:Int) -> Int in
//    let result = num * 3
//    return result
//})
//
//for j in mnums{
//    println("j = \(j)")
//}
//
//
//let onlyEven = nums.map({
//    (num:Int) -> Int in
////    var evenNum = 0
////    
////    if num % 2 != 0{
////        evenNum = 0
////    }else{
////        evenNum = num
////    }
////    
////    return evenNum
//    
//    return num % 2 == 0 ? num : 0
//})
//
//for k in onlyEven{
//    println("k = \(k)")
//}
