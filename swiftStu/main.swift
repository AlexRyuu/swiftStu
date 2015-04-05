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

//声明变量
var myVariable = 42
myVariable = 50

//声明常量
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0

//显示声明
let explicitDouble:Double=70

let expFloat:Float = 4

//类型显示转换，不会被隐式转换
let label = "The width is"
let width = 94
let widthLabel = label + String(width)

//使用\()进行类型转换
let apples = 3
let oranges = 5
let appleSummary = "I Have \(apples) apples."
let fruitSummary = "I Have \(apples + oranges) pieces of fruit."

println(fruitSummary)

let count = 3.5
let helloDog = "Hello \(count) Dogs"

println(helloDog)

//数组的声明及使用
var shoppingList = ["cat","dog","monkey","panda"]

println(shoppingList[1])

//字典的声明及使用
var occupations = [
    "malcolm":"Captain",
    "kay":"Mec",
]

//添加新的成员
occupations["add"] = "adds"

println(occupations["add"])

//创建空的数组或者字典，使用初期化语法
let emptyArray = [String]()
let emptyDictionary = [String:Float]()



//
//控制流
//

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



