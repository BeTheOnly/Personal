//
//  ObjectsAndClasses.swift
//  JourneyFirst_com
//
//  Created by Liora on 14-6-17.
//  Copyright (c) 2014年 Liora. All rights reserved.
//

import Foundation
class Shape
{
    var numberOfSides = 0
    func simpleDescription() -> String
    {
        return "A shape with \(numberOfSides) sides"
    }
}

class NamedShape{
    var numberOfSides: Int = 0
    var name: String
    
    init(name:String)
    {
        self.name = name;
    }
    
    func simpleDescription() -> String
    {
        return "\(name) shape with \(numberOfSides) sides"
    }
}


class Square : NamedShape
{
    var sideLength: Double
    init(sideLength: Double,name: String)
    {
        self.sideLength = sideLength;
        super.init(name: name)
        numberOfSides = 4
    }
    
    
    func area() -> Double
    {
        return sideLength * sideLength;
    }
    
    override func simpleDescription() -> String
    {
        return "A square with sides of length \(sideLength)"
    }
}






class Circle:NamedShape
{
    var radius:Double
    init(radius:Double,name: String)
    {
        self.radius = radius;
        super.init(name:name)
        numberOfSides = 1
    }
    
    func area() -> Double
    {
        return 3.14 * radius * radius;
    }
    
    override func simpleDescription() -> String
    {
        return "Circle with area \(String(area()))"
    }
}



//变量的set get方法
class EquilateralTriangle:NamedShape
{
    var sideLength: Double = 0.0
    init(sideLength: Double,name: String)
    {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double{
    get{
        return 3.0 * sideLength
    }
    set
    {
        sideLength = newValue / 3.0
    }
    }
}





class EqualSquareAndTriangle
{
    var esquare:Square
    {
    willSet
    {
        esquare.sideLength = newValue.sideLength
    }
    }
    
    
    var etriangle:EquilateralTriangle
    {
    willSet
    {
        etriangle.sideLength = newValue.sideLength
    }
    }
    
//    init(esquare: Square, etriangle: EquilateralTriangle)
//    {
//        self.esquare = esquare;
//        self.etriangle = etriangle;
//    }
    
    init(size: Double, name: String)
    {
        esquare = Square(sideLength:size ,name: name)
        etriangle = EquilateralTriangle(sideLength: size ,name: name)
    }

}



class Counter
{
    var count: Int = 0
//    非init方法，默认传参不需要参数名，若需要传实参名，则需要指定参数名
//    former参数名供类外使用，latter参数名供类内使用
    func incrementBy(amount: Int ,numberOfTimes times: Int)
    {
        count += amount * times
    }
}





