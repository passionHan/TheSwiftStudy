//: Playground - noun: a place where people can play

import UIKit


/**
 *  声明一个函数
 */

//声明带一个参数返回值类型为String的函数
func sayHello(personName: String) -> String {
    
    let greeting  = "Hello" + personName + "!"
    
    return greeting
}

print(sayHello("jjj"))

//声明不带参数返回值类型为String的函数
func sayHelloworld() ->String {
    
    return "hello world"
}

//声明带两个参数返回值类型为String的函数
func sayHello(personName: String, alreadyGreeted: Bool) -> String{
    
    if alreadyGreeted {
        
        return sayHello(personName)
    } else {
        
        return sayHelloworld()
    }
    
}

//声明带一个参数没有返回值的函数
func sayGoodBye(persionName: String) {
    
    print(persionName)
}

//swift 的函数和其他语言不同的是可以返回两个值

func minMax(array: [Int]) -> (min: Int, max: Int) {

    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax([6, 7, 9, 0, -9])
print("min is \(bounds.min) and max is \(bounds.max)")

//函数返回optional值，上一个函数如果传入数组为空的时候就会出错，所以使用optional值做为返回值可以避免crash

func minMax1(array: [Int]) -> (min: Int, max: Int)? {
    
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

if let bounds = minMax1([8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}

//可以为函数的参数指定要在调用的时候显示的参数名称 这样调用的时候更能直观的显示
func sayHello(to person: String, and anotherPerson: String) -> String {
    return "Hello \(person) and \(anotherPerson)!"
}

print(sayHello(to: "Bill", and: "Ted"))
