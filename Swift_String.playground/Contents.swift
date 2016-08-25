//: Playground - noun: a place where people can play

import UIKit

/////String

//声明一个空字符串
var emptyString = ""
var otherEmptyString = String()  //这两个的作用相同

if emptyString.isEmpty {
    
    print("Nothing to show")
}

/*字符串自加*/

var variableString = "Horse"
variableString += "and horse"

/*遍历字符串*/
for character in "Dog!".characters {
    
    print(character)
}

/*将数组拼接成字符串*/
let catCharacters: [Character] = ["c", "a", "t", "!"]
let catString = String(catCharacters)

/*字符串相加*/
let string1 = "wo ai ni"
let string2 = "china"
var hh = string1 + string2

/*字符串拼接 append */
let exclamationMark: Character = "!"
hh.append(exclamationMark)

/*访问和修改字符串*/
var greeting = "Hello World"
greeting[greeting.startIndex] //H startIndex 获取字符串的第一个字符

greeting[greeting.endIndex.predecessor()] //d endIndex并不是看到的字符串的最后一个字符的下标 predecessor获取前一个元素的下标
print(greeting.endIndex.predecessor()) // 10

greeting[greeting.startIndex.successor()] //successor 后一个


/*获取字符串指定索引的下标*/
let index = greeting.startIndex.advancedBy(6)

/*字符串下标不能越界*/
//greeting[greeting.endIndex]
//greeting[greeting.endIndex.successor()]

/*使用indices创建一个下标范围*/
for index in greeting.characters.indices { //0...10
    
    print("\(greeting[index])")
}


/*字符串插入和移除*/
var welcome = "hello"
welcome.insert("!", atIndex: welcome.endIndex) //指定下标插入
welcome.insertContentsOf(" world".characters, at: welcome.endIndex.predecessor()) //插入一个新的字符串

welcome.removeAtIndex(welcome.endIndex.predecessor()) //hello world

let range = welcome.endIndex.advancedBy(-6)..<welcome.endIndex
welcome.removeRange(range) //hello


/*字符串比较*/
let compareString1 = "hh"
let compareString2 = "hh"
if compareString1 == compareString2 {  // == or !=
    
    print(compareString1)
}

/*Prefix and Suffix 判断字符串的开头和结尾*/
var prefixStr = "hhhh"
if prefixStr.hasPrefix("h") && prefixStr.hasSuffix("h"){
    
    print("jjjjj")
}

/*判断是否包含某个字符串*/
let str1 = "hello world"
let subStr1 = "hello"
if (str1 .rangeOfString(subStr1) != nil) {
    
    print("hhhh")
}

















