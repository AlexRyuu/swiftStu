//
//  VarTest.swift
//  swiftStu
//
//  Created by liugang on 15/4/9.
//  Copyright (c) 2015年 liugang. All rights reserved.
//

import Foundation


func varTest(){
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
}

func arrTest(){
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
}