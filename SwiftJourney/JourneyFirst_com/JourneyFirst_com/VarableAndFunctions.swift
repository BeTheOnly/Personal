//
//  VarableAndFunctions.swift
//  JourneyFirst_com
//
//  Created by Liora on 14-6-17.
//  Copyright (c) 2014年 Liora. All rights reserved.
//

import Foundation
//    常量与变量
func ConstantAndVariable()
{
    //        let:常量  var  变量 变量与它赋的值保持一致
    let c1 = 40
    var v1 = 60
    //        可以显示的指定变量的类型 类型与最初的不一致 首字母大写
    let explicitDouble:Double = 70
    let explicitFloat:Float = 30
    
    //        nslog无 @
    NSLog("%i %i", c1,v1);
}



//    变量类型转换（强转）
func TypeConvert()
{
    //        变量通常隐示地转换为另一种类型的变量而是显示的转换
    let label = "The width is"
    let width = 94
    //        String 将int型数据转为String （NSString）
    //        否则会给出编译时的错误，找不到重载符同实现两个不同类型的变量的计算
    let widthLabel = label + String(width)
    
    NSLog("%@ %@ ", label,widthLabel)
    
}


//    字符串拼接
func StringPutTogether()
{
    let apples = 3
    let oranges = 5
    //       拼接字符串，即在字符串中插入变量 \(varName)  usage \(waht you want to put into String)
    let appleSummary = "i have \(apples) apples"
    let fruitSummary = "i have \(apples+oranges) pieces of fruit"
    NSLog("%@", appleSummary)
    NSLog("%@", fruitSummary)
    
    let f1 = 30.0
    let f2 = 15.0
    let name = "Mary"
    let greeting = "the age of \(name) and her son's sums up to \(f1+f2)"
    NSLog("%@",greeting)
    
}


func HandleArrayAndDict()
{
    //    数据组，根据下标取值
    var shoppingList = ["fruits","milk","meat","cookis"]
    shoppingList[1] = "water"
    NSLog("array is %@",shoppingList);
    
    
    //    字典 （键值对）
    var occupations = ["Mary":"Doctor",
        "Helen":"layer"]
    occupations["Liora"] = "Programmer"
    NSLog("dictionary is  %@ ",occupations)
    
    //    取值符 !
    NSLog("the occupation of Helen is : %@ ",occupations["Helen"]!)
    
    
    //    定义一个String 类型的空数组
    let emptyArray = String[]()
    //    定义一个String键Float值的空字典
    let emptyDictionary = Dictionary<String,Float>()
    
    //    空数组和空字典
    var names = []
    var ages = [:]
    
    
}

func ConditionsUage()
{
    let individualScores = [75,34,88,100,13]
    var teamScore = 0
    for score in individualScores
    {
        if score > 50
        {
            teamScore += 3
        }else
        {
            teamScore += 1
        }
    }
    let summary = "the score of the team is \(teamScore)"
    NSLog("%@",summary)
}


func OptionalValue()
{
    //    the difference between "fdaf" String the former is char set while the later is object string so when it comes to get the value of variables is the former direct while later  use !
    var optionalString: String? = "Hello"
    optionalString == nil//what's this ???
    
    var optionalName: String? = "John Smith"
    
    var puttoGetherStrings = "name is \(optionalName)"
    NSLog("%@", puttoGetherStrings)
    var greeting = "Hello!"
    
    optionalName = nil
    
    //    当可选变量非nil时 执行，否则不执行计算
    //    if let 与可选变量
    if let name = optionalName
    {
        greeting = "Hello, \(name)"
    }
    
    
    
    NSLog("%@ ",optionalString!)
    //    NSLog("%@  ",optionalName!) //nil cannot be !
    NSLog("%@ ",greeting)
}



func SwitchConditions()
{
    //    switch语句不需要break
    let vegetable = "red pepper"
    switch vegetable {
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log."
        NSLog("%@",vegetableComment);
    case "cucumber","watercress":
        let vegetableComment = "That would make a good tea sandwich."
        NSLog("%@",vegetableComment);
    case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is it a spicy \(x)?"
        NSLog("%@",vegetableComment);
        //      必须
    default:
        let vegetableComment = "Everything tastes good in soup."
        NSLog("%@",vegetableComment);
        
    }
    
}

func EnumerateDictionary()
{
    let interestingNumbers = [
        "Prime":[2,3,5,7,11,13],
        "Fibonacci":[1,1,2,3,5,8],
        "Square":[1,4,9,16,25],
    ]
    
    var largest = 0
    var kindName = ""
    
    for (kind,numbers) in interestingNumbers
    {
        for number in numbers
        {
            if number > largest
            {
                largest = number
                kindName = kind
            }
        }
    }
    NSLog("the largest number is : %d  %@",largest,kindName)
}


func WhileConditions()
{
    var n = 2
    while n < 100
    {
        n = n * 2
    }
    
    
    
    var m = 2
    do
    {
        m = m * 2
    }while m < 100
    
    NSLog("the value of n is : %d  m is %d ", n,m)
    
    
    var firstForLoop = 0
    for i in 0..3
    {
        firstForLoop += i
    }
    
    
    
    var secondForLoop = 0
    for var j = 0; j<3; ++j
    {
        secondForLoop += 1;
    }
    NSLog("the value of firstForLoop is : %d ",firstForLoop);
    NSLog("the value of secondForLoop is : %d ",secondForLoop);
    
    
    //    ..忽略最大值 ...包含最大和最小值
    var thirdForLoop = 0
    for i in 0...3
    {
        thirdForLoop += i
    }
    NSLog("the value of thirdForLoop is : %d ",thirdForLoop);
}


//the return value after the function use -> (funning....)
func functionWithPremeters(name:String,day:String)->String
{
    return "Hello \(name), today is \(day)"
}



//how to use this ???
func mutiReturnValues()->(Int,Int,Int)
{
    return (1,2,3)
}



//still don't know how to use the muti return value
func mutiUsage()
{
    let i1 = 1
    let i2 = 2
    let i3 = 3
    mutiReturnValues()
}



func TakeArrayPremeters(numbers:Int...)->Int
{
    var sum = 0
    var count = 0
    for num in numbers
    {
        sum += num
        count++
    }
    return sum/count
}

/**
函数是fisrt-class类型的
函数既可以作为返回值还可以作为形参
传递的是函数名

*/

//函数嵌套
func NestedFun()->Int
{
    var y = 10
    func add()
    {
        y += 5
    }
    add()
    return y
}





//函数作为返回值
func ReturnFunction()->(Int->Int)
{
    func addOne(number:Int)->Int
    {
        return 1 + number
    }
    return addOne
}




func hasAnyMatches(list:Int[],condition:Int -> Bool) ->Bool
{
    for item in list
    {
        if condition(item)
        {
            return true
        }
    }
    return false
}





func isBigThanHandred(number:Int) ->Bool
{
    //    % cannot be used in swift ???
    if number > 300
    {
        return true
    }
    return false
}



/**
函数是闭包的一个特列
函数可以是仅有{}而没有名字的闭包
在{}内部使用in 来分隔函数的参数及返回值和函数体
eg:
{
(premeterName:premeterType)->ReturnValueType in
function body
}


*/
func hasMatches(list:Int[],condition:Int -> Int) ->Int
{
    var sum = 0
    for item in list
    {
        sum += condition(item)
    }
    return sum
}




/** usage
var sum = hasMatches([1,2,3],{(num:Int)->Int in
let result = 3 * num
return result})
NSLog("the value of sum is : %d ", sum);

*/

func zeroToOdd(num:Int, condition:Int -> Bool) -> Bool
{
    return condition(num)
}


/**
if( zeroToOdd(3,{(num:Int) ->Bool in
if num > 5
{
return true
}
return false
}))
{
NSLog("is ture")
}
else
{
NSLog("is false")
}

*/


/**
可以省略掉闭包的数据类型
*/

func closureWithoutType(list:Int[],condition:Int -> Int) ->Int
{
    var sum = 0;
    for i in list
    {
        sum += condition(i)
    }
    return sum
}

/**
usage
NSLog("%d ",closureWithoutType([1,2,3],{num in  return 2 * num }));
*/



/**
多个参数时，可通过第几位参数来获取参数的值而不需要通过参数名来取值
闭包作为最后一个参数时传递实参时可直接写在括号之后
*/
func closureWithPremeterLast(var1:Int,var2:Int,condition:(Int,Int)->Bool) -> Bool
{
    //    compare the value of the two premereter
    return condition(var1,var2)
}


/*
usage:
if(closureWithPremeterLast(1,3){return  $0 > $1})
{
NSLog("the former is bigger than the latter")
}else
{
NSLog("the latter is bigger than the former")
}
*/
