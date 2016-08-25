//: Playground - noun: a place where people can play

import UIKit

/**
 *  Swift进行流程控制的有where、if、guard、for in 使用break和continu来终止循环和跳转当前循环
 */

/*for in*/

for index in 1...5 {
    
    print("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1
//如果不想使用每次遍历的值，可以用 _
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}


/*while */

var index = 5
while index < 5{
    
    print("和其他语言的while语法一样")
}

/*repeat while */

/*repeat while 类似于其他语言的do while*/

var hh = 1
var jj = 2

repeat {
    
    print(hh)
    
}while hh > jj

/*if  和其他语言一样*/
if hh == 1{
    
}

/*
    switch
    switch 和其他语言不同的是，switch不用加break 如果default语句中不需要执行可以增加break
 
 */

let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) is a consonant")
default:
    print("\(someCharacter) is not a vowel or a consonant")
}

let anotherCharacter: Character = "a"
switch anotherCharacter {
//case "a":  //不能空写一个case语句,后面要跟上执行的语句
case "A":
    print("The letter A")
default:
    print("Not the letter A")
}

let anotherThreeCharacter: Character = "a"
switch anotherThreeCharacter {
case "a":
    print("The letter a")
    fallthrough           //使用fallthrough 关键字可以执行到当前满足条件的case的下一个case
case "A":
    print("The letter A")
default:
    print("Not the letter A")
}

//支持区间运算符
let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")

//支持元组
let somePoint = (1, 1) //只有全部相同的时候才会执行
switch somePoint {
case (0, 0):
    print("(0, 0) is at the origin")
case (_, 0):                                                //_ 代表匹配所有的字符
    print("(\(somePoint.0), 0) is on the x-axis")
//case (_, 1):
//    print("jjj")                                          //这句话会执行
case (0, _):
    print("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}

//针对元组，value binding（类似值绑定），能把元组中的值提取出来，在case后直接使用
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):      //检测到0相同，那么x就被赋值为2了，
    print("on the x-axis with an x value of \(x)")

case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):                                //如果前面两个都不执行，走到这里就打印下面的内容了
    print("somewhere else at (\(x), \(y))")
}

//switch的case语句中可以 增加额外的条件来辅助检查

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

//swift 有个新的控制流程的关键字guard 和if相反，当条件满足的时候不执行，不能像if else那样有多重判断
/*
 与if语句相同的是，guard也是基于一个表达式的布尔值去判断一段代码是否该被执行。
 与if语句不同的是，guard只有在条件不满足的时候才会执行这段代码。你可以把guard近似的看做是Assert，但是你可以优雅的退出而非崩溃
 
 一篇比较好的文章：http://www.jianshu.com/p/3a8e45af7fdd
 */

func fooGuard(x: Int?) {
    guard let x = x where x > 0 else {
        // 变量不符合条件判断时，执行下面代码
        return
    }
    
    // 使用x
    x.description
}



