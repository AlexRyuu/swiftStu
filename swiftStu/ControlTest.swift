//
//  ControlTest.swift
//  swiftStu
//
//  Created by liugang on 15/4/9.
//  Copyright (c) 2015年 liugang. All rights reserved.
//

import Foundation


func controlTest(){
    let individualScores = [75,43,103,87,24]
    var teamScore = 0
    
    for score in individualScores{
        if score > 50{
            teamScore += 3
        }else{
            teamScore += 1
        }
    }
    
    println(teamScore)
    
    
    //使用if和let处理变量值缺失的情况
    var optionalName:String? = "John"
    optionalName = nil
    var greeting = "Hello"
    
    if let name = optionalName{
        
        greeting = "Hello, \(name)"
    }else{
        
        greeting = "Hello,"
    }
    
    println(greeting)
    
    
    //switch
    
    var vegetable = "red pepper"
    
    
    //当程序匹配到子句后，会退出switch语句，不会继续向下执行！
    switch vegetable{
    case "celery":
        let vegetableComment = "add celery"
        println(vegetableComment)
    case "cucumber","watercress":
        let vegetableComment = "add cucumber "
        println(vegetableComment)
    case let x where x.hasPrefix("red"):
        let vegetableComment = "add red"
        println(vegetableComment)
    case let x where x.hasSuffix("pepper"):
        let vegetableComment = "add pepper"
        println(vegetableComment)
    default:
        let vegetableComment = "add default"
        println(vegetableComment)
    }
    
    //使用for－in来遍历字典
    let interestingNumbers = [
        "Prime": [2, 3, 5, 7, 11, 13],
        "Fibonacci": [1, 1, 2, 3, 5, 8],
        "Square": [1, 4, 9, 16, 25],
    ]
    
    //记录最大值与所在的类型
    var largest = 0
    var largestType = ""
    
    for (kind, numbers) in interestingNumbers {
        for number in numbers {
            if number > largest {
                largest = number
                largestType = kind
            }
        }
    }
    
    //输出最大值与所在的类型
    println(largest)
    println(largestType)
    
    
    // ..<   and  ...
    
    
    var forLoopCnt = 0
    
    for i in 0..<4 {
        
        forLoopCnt += i
    }
    
    println(forLoopCnt)
    
    var forLoopCnt2 = 0
    
    for var i = 0; i < 4; i++ {
        forLoopCnt2 += i
    }
    
    println(forLoopCnt2)

}