//
//  main.swift
//  JourneyFirst_com
//
//  Created by Liora on 14-6-17.
//  Copyright (c) 2014年 Liora. All rights reserved.
//

import Foundation

//var shape = Shape()
//shape.numberOfSides = 7
//var shapeDescription = shape.simpleDescription()
//NSLog("%@ ",shapeDescription);


//var nameShape = NamedShape.init(name: "Triangle")
//nameShape.numberOfSides = 3
//var triangleDescription = nameShape.simpleDescription();
//NSLog("%@ ",triangleDescription);


//let square = Square(sideLength: 5.0, name: "PureSquare")
//square.area()
//NSLog("%@  %lf ",square.simpleDescription(),square.area())


/*可直接显示或者隐示调用init（函数名）*/
//let circle = Circle(radius:5.0,name:"Circle")
//let circle = Circle.init(radius:5.0,name:"Circle")
//NSLog("%@ ",circle.simpleDescription())


/* -- --  -- --  -- -- -- --  -- --  -- --  -- --  -- --  -- --  -- --  -- --
important:
init方法参数名与成员变量名保持一致，调用时需要使用到参数名
其他方法中的可以指定供外部使用的参数名，

函数 VS 方法 （method VS function）
函数： 类外
方法： 类内
-- --  -- --  -- --  -- --  -- --  -- --  -- --  -- --  -- --  -- --  -- --  */


//var equalTriangle = EquilateralTriangle(sideLength: 5.0,name:"EqualTriangle")
//NSLog("the perimeter of equalTriangle is : %lf ", equalTriangle.perimeter)
//equalTriangle.perimeter = 21.0
//NSLog("the sideLength of equalTriangle of peremter 21 is : %lf ", equalTriangle.sideLength)


//var counter = Counter()
//counter.incrementBy(4, numberOfTimes: 3)
//NSLog("increase by 4 for 3 times : %d ",counter.count)


let ace = Rank.Ace
let aceRawValue = ace.toRaw()
NSLog("%@",aceRawValue)
