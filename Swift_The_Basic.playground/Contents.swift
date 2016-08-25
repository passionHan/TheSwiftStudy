//: Playground - noun: a place where people can play

import UIKit

var variableStr = "用var来声明一个的变量"
let constantStr = "用let来声明一个常量，声明的字段不允许更改"
//constantStr = "jjj"

var message: String   //指定变量的类型
var red, green, blue: Double  //具有相同类型的变量可以这样指定

let π = 3.1415926
let 你好 = "nihao"  //swift 可以使用中文和特殊的字符来声明常量或者变量
let 🐶🐶 = "dog"
var 你好啊 = "nihaoa"

var friendName = "xiaoming"
friendName = "xiaoli"  //对变量进行赋值，let声明的是不可以更改的

print(friendName) //打印变量的内容
print("My friend name is \(friendName)") //使用\() 来拼接变量


/**
*  Integers
    Swift提供的有符号整形和无符号整形有8，16，32，64位的
*/

let minValue = UInt8.min //无符号八位的整数的最小值
let maxValue = UInt8.max

//在大多数情况下我们不用指定integer类型的长度，直接使用Int就行

///////Swift 是类型安全的语言，编译器能自动推断类型
var str = "This is String type" //编译器会自动推断str 为String类型
//str = 1 这样就报错了，不能将int 赋值给 string

//var specifiedStr: String = 1  //明确了变量的类型 就不能赋值int类型的数据给它

var pi = 3.1415  //不明确指定pi的类型的话 编译器会自动推断为Double 而不是float 


//swift integer类型也会有长度的限制，和其他语言类似

//let cannotBeNegative: UInt8 = -1 //无符号UInt8最小的是0

//两个类型不相同的变量是不允许相加的 需要转换成一样的类型才可以
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one) // 要将UInt8类型的one转成UInt16才能相加


/**
*  Type Aliases
类型的别名  和其他语言的typedefine 功能一样
*/
typealias AudioSameple = UInt16  //AudioSameple 就代表了 UInt16类型
var maxAmplitudeFound = AudioSameple.max

//////////////Booleans
//Swift 的布尔类型只有true和false
let orangesAreOrange = true
let turnipsAreDelicious = false

//swift 和其他语言不同的是 在逻辑判断中1并不是true 0也不是false
//let i = 1
//if i {
//    
//}


/**
*  Tuples元组
（由多个值组成的复合值类型）
*/
let http404Error = (404, "Not Found")

//元组中可以有你想要的不同的类型(Int, Int, Int)、（String, Bool)...

let (statusCode, statusMessage) = http404Error  //可以通过声明元组容量来获取声明的元组中的值
print("The statusCode is \(statusCode)")

//如果就想要元组中的一个值，忽略其他的值可以通过使用下划线省略其他的

let (statusCode1, _) = http404Error
print("The statusCode is \(statusCode1)")

//访问元组中的值还可以通过下标来访问
print("The statusCode is \(http404Error.0)")

//在元组中可以单独定义每一个元素
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)") //可以这样访问


/**
*  optionals(可选值)
    1.这是swift全新的语法，其他语言没有，swift里不会给变量赋初始值，声明一个optional值，如果不赋值的话默认为nil
    2.Optional值不能直接被使用，需要拆包才能使用，Optional其实是个enum，里面有None和Some两种类型，nil就是optional.none,然后会通过Some（T）包装（Wrap）原始值
*/

//一个关于optional值的例子，并不是所有的string都能转成int，在转换的时候结果就是一个可选值，能转换的拆包之后就能使用int值，转换不了的就会赋值为nil
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)   //covertedNumber 的类型为Int？
print(convertedNumber)  //Optional(123)

//声明一个optional值
var serverResponseCode: Int? = 404
print(serverResponseCode)  //Optional(404)
serverResponseCode = nil;
print(serverResponseCode) //变成nil了

var surveyAnswer: String?  //默认不赋值的话  是nil

//对optional值就行解包
//1. 在if判断中
if let actualValue = Int(possibleNumber) { //如果optional Int 包含值，把它的值赋值给一个新的常量
    
    print("hh\(actualValue)")
}


//2 使用！解包
let possibleString: String? = "An optional string."
print(possibleString)
let forcedString: String = possibleString!
print(forcedString)

let assumedString: String! = "An implicitly unwrapped optional string"


/**
*  Assertions  断言
    1.用来调试bug，程序运行过程中，条件满足的话继续运行，条件不满足，抛出自定义的异常
*/

let age = -3

//assert(age >= 0, "A person's age cannot be less than zero")








