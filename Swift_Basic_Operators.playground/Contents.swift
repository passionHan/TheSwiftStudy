//: Playground - noun: a place where people can play

import UIKit

/**
*   只说一下swift一些不同的地方
*/

//1.元组赋值
let (x, y) = (1, 2)

//2.swift 加法运算符支持两个string类型相加
let strPlus = "one" + "two"

//3.元组之间也能进行比较
(1, "hh") < (2, "jjj"); //true
(1, "hh") < (1, "jjj");//true

//4.Nil Coalescing Operator 空值合并运算符
//let c = a ?? b
/*
 使用要求：1.a必须是 optional类型，2.b的类型必须要和a解包后的值类型一致
 解释:c的值是a或b中的一个,前提条件是,当a解包后值不为nil时,就将a解包后的值赋值给c,如果a解包后为nil,那么就将b的值赋值给c
 三目运算符表示   let c  = a != nil ? a! : b
 */

let defaultColorName = "red"
var userDefinedColorName: String? //没有赋值的话默认是nil

var colorNameToUse = userDefinedColorName ?? defaultColorName // red

userDefinedColorName = "green"

colorNameToUse = userDefinedColorName ?? defaultColorName //green 

//5. Range Operators  范围操作符
for index in 1...5 { //代表1到5 ...
    
    print(index)
}

//Half-Open Range Operator
let name = ["a","j", "c", "d", "e"];

for i in 0..<name.count { //两个..
    
    print("Person \(i + 1) is called \(name[i])")
}
