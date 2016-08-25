//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print("hello")

let label = "The width is"
let width = 94
let widthLabel =  label + String(width)
print(widthLabel)  //the width is 94

let apples = 3
let orange = 5
let appSummary = "I have \(apples) apples"

//声明一个数组
var shoppingList = ["catifsh","water","dog"];
shoppingList[1] = "hhh";//数组的第二个元素变成了hhh
print(shoppingList)

//声明一个字典
var occupations = [
    
    "name":"xiaoming",
    "age" : "12",
]
occupations["Jayne"] = "Public Relations"; //添加一条字典
print(occupations)

let emptyArray = [String]();//初始化一个空的数组
let emptyDict = [String : Float](); //初始化一个空的字典

//流程控制
let scores = [12, 45, 55, 67];

var teamScore = 0;

for score in scores {
    
    if score > 50{
        
        teamScore += 3;
        
    }else {
        
        teamScore += 1;
    }
    
}
print(teamScore);

var optionalString: String? = "hhh";
let hh = optionalString!  //使用！解包才能使用optionalString的值或者
print(hh)
print(optionalString == nil);

var optionalName: String? = "xiaoming";
var greeting = "nihaoa";

print(optionalName)

let name = optionalName
print(name!)

if let name = optionalName {
    
    print(name)
    
    greeting = "hello ,\(name)";
}
print(greeting);


let nickName: String? = nil;
let fullName: String? = "hhhhh";
let informalGreeting = "Hi \(nickName ?? fullName)"

let possibleValue = "123"
let convertedValue = Int(possibleValue)
print(convertedValue) //转换成了Optional Int


if let firstNum = Int("4"), secondNum = Int("44") where firstNum < secondNum {
    
    print("\(firstNum) < \(secondNum)")
}

let possibleString: String? = "An optional string"
let forcedString: String = possibleString!;  //
print(forcedString)








