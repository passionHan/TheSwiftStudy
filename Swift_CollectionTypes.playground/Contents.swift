//: Playground - noun: a place where people can play

import UIKit

/**
 *  swift 有三种集合的方式、array、set、dictionary
 */

///array

/*初始化空的数组*/
var someInts = [Int]()
//给数组添加一个元素
someInts.append(3)
someInts = [] //数组又空了

/*初始化有默认值的数组*/
var threeDoubles = [Double](count: 3, repeatedValue:0.0); //系统的方法


/*两个数组相加*/
var anotherThreeDoubles = [Double](count:3, repeatedValue:2.4);
var sixDoubles = threeDoubles + anotherThreeDoubles

/*用数组初始化一个数组*/
var shoppingList: [String] = ["eggs", "milk"] //存储String类型的数组

var shoppingOtherList = ["eggs", "milk"] //因为编译器会自动推断类型，可以用这样简单的声明一个string数组

/*数组常用方法*/
print("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty {
    
}

shoppingList.append("hh") //添加元素

shoppingList += ["hello", "world"]

var firstItem = shoppingList[0]

//使用下标语法一次性更改指定范围的值
shoppingList[1...3] = ["Bananas", "Apples"]//将下标1至3的三个元素替换成了两个

//指定下标处插入元素
shoppingList.insert("Maple Syrup", atIndex: 0)

//移除指定下标的元素
let mapleSyrup = shoppingList.removeAtIndex(0)

//移除数组最后一个元素
let apples = shoppingList.removeLast()


/*遍历数组*/

for item in shoppingList {
    
    print(item)
}

//遍历数组获得相应下标和元素
for (index, value) in shoppingList.enumerate() {
    
    print("Item \(index + 1): \(value)")
}

/**
 *  集合set
 */

/*初始化空的集合*/
var letters = Set<Character>()

/*向集合中插入元素*/
letters.insert("3")

/*用数组内容初始化一个set*/
var favoriteGenres: Set<String> = ["jjjj", "jhjjjj"]

//获得集合的个数
favoriteGenres.count
//判空
favoriteGenres.isEmpty
favoriteGenres.insert("jjj")
favoriteGenres.remove("jjj")
favoriteGenres.contains("jjjj")//是否包含某个值

//遍历集合
for genre in favoriteGenres.sort() {
    
    print("\(genre)")
}


/**
 *  Dictionaries 字典
 */

/*初始化一个空的字典*/
var nameOfIntegers = [Int: String]()

/*用字典内容初始化一个字典*/
var airports:[String: String] = ["name": "xiaoming", "age": "18"]
var airports1 = ["name": "xiaoming", "age": "18"]

/*字典的常用方法*/
airports.count
airports.isEmpty

//向字典中添加一个元素
airports["LHR"] = "London"
//修改指定key的值
airports["LHR"] = "America"

/*更新制定key的value*/
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") { //返回的是optional类型
    
    print("The old value for DUB was \(oldValue).")
    
}

let airportName = airports["DUB"]
print(airportName) //optional类型的需要解包

/*移除字典中指定的key*/

if let removedValue = airports.removeValueForKey("DUB") {
    
    print("The removed airport's name is \(removedValue).")
    
} else {
    
    print("The airports dictionary does not contain a value for DUB.")
}

/*使用元组遍历字典*/
for (airportCode, airportName) in airports {
    
    print("\(airportCode): \(airportName)")
}

/*遍历字典所有的key或者value*/

for airportCode in airports.keys {
    
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    
    print("Airport name: \(airportName)")
}

/*声明一个数组存储字典所有的key或者value*/
let airportCodes = [String](airports.keys)

let aiiportNames = [String](airports.values)
/*初始化一个空的字典*/

/*初始化一个空的字典*/


















