//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.textColor = .black
        let threeMoreDoubleQuotationMarks = #"""
        Here are  quotes: """
        """#
        label.text = threeMoreDoubleQuotationMarks

        view.addSubview(label)
        self.view = view
/*
//字符串 值类型
        let softWrappedQuotation = """
            The White Rabbit put on his spectacles.  "Where shall I begin, \
            please your Majesty?" he asked.

            "Begin at the beginning," the King said gravely, "and go on \
            till you come to the end; then stop."
        """
        print("\(softWrappedQuotation)")
        
        let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
        // "Imageination is more important than knowledge" - Enistein
        let dollarSign = "\u{24}"             // $，Unicode 标量 U+0024
        let blackHeart = "\u{2665}"           // ♥，Unicode 标量 U+2665
        let sparklingHeart = "\u{1F496}"      // 💖，Unicode 标量 U+1F496
        
        print("\(wiseWords)")
        print("\(dollarSign)")
        print("\(blackHeart)")
        print("\(sparklingHeart)")

        
        //使用 """ 的话，就需要使用至少一个转义符（\）
        let threeDoubleQuotes = """
        Escaping the first quote \"""
        Escaping all three quotes \"\"\"
        """
        print("\(threeDoubleQuotes)")
        
      //  引号（"）不必加上转义符（\
        let threeDoubleQuote = """
        Escaping the first quote"
        Escaping all three quotes"
        """
        print("\(threeDoubleQuote)")
        
    //扩展字符串分隔符
        //将字符串放在引号（"）中并用数字符号（#）括起来
        let has = ##"Line1 \##nLine2"##
        print("\(has)")

    //字符串初始化
        let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
        let catString = String(catCharacters)
        print(catString)
    //字符串插值 兼容扩展字符串分隔符
        print(#"Write an interpolated string in Swift using \(multiplier)."#)
        
    //Unicode
    //字符串索引 index
        //不同的字符可能会占用不同数量的内存空间，所以要知道 Character 的确定位置，就必须从 String 开头遍历每一个 Unicode 标量直到结尾。因此，Swift 的字符串不能用整数（integer）做索引。
        /*
         startIndex：属性可以获取一个 String 的第一个 Character 的索引
         endIndex： 属性可以获取最后一个 Character 的后一个位置的索引
         如果 String 是空串，startIndex 和 endIndex 是相等的。
         index(before:)
         index(after:)
         index(_:offsetBy:)
         indices:创建一个包含全部索引的范围（Range）
         */

        let greeting = "Guten tag!"
        greeting[greeting.startIndex]
        greeting[greeting.index(before: greeting.endIndex)]
        greeting[greeting.index(after: greeting.startIndex)]
        greeting[greeting.index(greeting.startIndex, offsetBy: 7)]
        
        for index in greeting.indices {
            print("\(greeting[index])",terminator:"\t")
        }
    //增删改查
        /*
         insert(_:at:)
         insert(contentsOf:at:)
         remove(at:)
         removeSubrange(_:)
         */
            
        var welcome = "hdaiy"
        welcome.insert("1", at: welcome.endIndex)
        welcome.insert(contentsOf: "bcahk", at: welcome.index(before: welcome.endIndex))
        print("\(welcome)")
        welcome.remove(at: welcome.index(before: welcome.endIndex))
        let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
        welcome.removeSubrange(range)

    // 子字符串
        /*
         subetring 重用了原 String 的内存空间
         当你需要长时间保存结果时，就把 Substring 转化为 String 的实例
         */
        let greeting = "hello, world"
        let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
        let beginning = greeting[..<index]
        print(beginning)
        
        // 把结果转化为 String 以便长期存储。
        let newString = String(beginning)
    
        
//集合类型 array set dictionary
        
    //数组
        /*
         Array<Element> == [Element]
         */
        
        //构造语法创建数组
        var someInts = [Int]()
        var threeDoubles = Array(repeating: 0.0, count: 3)
        var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

        var addArrays = threeDoubles + anotherThreeDoubles
        print("\(addArrays)")

        //用字面量构造数组
        var shoppingList: [String] = ["Eggs","milk"]
        var shoppingList1 = ["Eggs", "Milk"]
        
        //访问和修改
        for (index, value) in shoppingList.enumerated() {
            print("Item \(String(index + 1)): \(value)")
        }
        
    //集合
        /*
         存储在集合中，该类型必须是可哈希化
         Set<Element>
         
         */
        
        var letters = Set<Character>()
        letters.insert("a")
        letters = []
        var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
        
*/

//控制流
        
        
        
        
        
        
        
        
        

//函数
        /*
         参数与返回值
            无、多参数
            无、多（元组）、可选返回值
            隐式返回函数：整个函数体是一个单行表达式
         参数标签与参数名称
            参数名称默认就是参数标签
            如果特别指定标签，那么使用标签
            参数有默认参数的话，可以不传参数
         可变参数
            一个函数只能有一个可变参数func arithmeticMean(_ numbers: Double...) -> Double {}
         输入输出参数
         func swapTwoInts(_ a: inout Int, _ b: inout Int) {}
         swapTwoInts(&someInt, &anotherInt)
         
         函数类型
         var mathFunction: (Int, Int) -> Int = addTwoInts
         函数类型做为返回值
         
         func stepForward(_ input: Int) -> Int {
             return input + 1
         }
         func stepBackward(_ input: Int) -> Int {
             return input - 1
         }
         
         func chooseStepFunction(backward: Bool) -> (Int) -> Int {
             return backward ? stepBackward : stepForward
         }
        
         
         
         
         */
        
        
//闭包
        
        /*
         全局函数（有名字但不会捕获任何值）和嵌套函数（有名字并可以捕获其封闭函数域内值）都算是特殊闭包
         闭包表达式是一个利用轻量级语法所写的可以捕获其上下文中变量或常量值的匿名闭包
         闭包表达式语法
         { (parameters) -> return type in
             statements
         }
         
         尾随闭包（将一个很长的闭包表达式作为最后一个参数传递给函数，将这个闭包替换成为尾随闭包的形式很有用）
            一个书写在函数圆括号之后的闭包表达式，函数支持将其作为最后一个参数调用。
            在使用尾随闭包时，你不用写出它的参数标签
             func someFunctionThattakesAClosure(closure:() -> Void){
                 print("13")
             }
         
             //不使用尾随闭包进行函数调用
             someFunctionThattakesAClosure(closure: {
             
             })
            //使用尾随闭包进行函数调用
             someFunctionThattakesAClosure() {//（只有一个参数的时候 （）也可以省略）
                 
             }
             let strings = numbers.map {
                 (number) -> String in
                 var number = number
                 var output = ""
                 repeat {
                     output = digitNames[number % 10]! + output
                     number /= 10
                 } while number > 0
                 return output
             }
             
         值捕获
            捕获外函数所有参数，并持有
         函数和闭包都是引用类型
         逃逸闭包
         
         
         
         
         
         */
        
//枚举
        /*
         1、定义：值可以是字符串、字符，或是一个整型值或浮点数

             enum CompassPoint{//每个枚举等于与一个新的类型
                 case north//值的类型是已经明确定义好的 CompassPoint 类型,不是其他语言默认的01
                 case south
                 case east
                 case west
             }
         2、枚举成员的遍历 (CaseIterable)
         3、关联值
         4、递归枚举
         
         
         
         enum CompassPoint{//每个枚举等于与一个新的类型
             case north//值的类型是已经明确定义好的 CompassPoint 类型,不是默认的01
             case south
             case east
             case west
         }
         
         var com = CompassPoint.east
         com = .west//类型推断
         switch com {
             case .north:
                 print("Lots of planets have a north")
             case .south:
                 print("Watch out for penguins")
             case .east:
                 print("Where the sun rises")
             case .west:
                 print("Where the skies are blue")
         }
         
         //枚举成员遍历
         enum Beverage: CaseIterable {
             case coffee, tea, juice
         }
         let numberOfChoices = Beverage.allCases.count
         print("\(numberOfChoices) beverages available")
         
         for beverage in Beverage.allCases {
             print(beverage)
         }
         
         4、可以定义构造函数（initializers）来提供一个初始值
         5、遵循协议（protocols）来提供标准的功能
         */

        
//类和结构体
        /*
         1、类型定义
            区别：类可以继承、内存管理，值类型与引用类型
         struct Resolution {
             var width = 0
             var height = 0
         }
         class VideoMode {
             var resolution = Resolution()
             var interlaced = false
             var frameRate = 0.0
             var name: String?
         }
         2、实例
         结构体和类都使用构造器语法来创建新的实例
         属性均会被初始化为默认值
         let someResolution = Resolution()
         let someVideoMode = VideoMode()
         
         3、属性访问
         点语法
         4、构造器
            1、结构体存在默认的逐一构造器。let vga = Resolution(width: 100, height: 200)//逐一构造器
            2、类不存在
         
         5、结构体是值类型
             常量结构体实例的存储属性，即使属性是可变类型，也不可更改，因为发生了值copy
         6、延迟加载存储属性
         7、计算属性
            提供get和set来计算其他存储属性保存的值
            set默认参数名是newvalue
             只读计算属性，可以去掉get和花括号
                 struct Cuboid {
                     var width = 0.0, height = 0.0, depth = 0.0
                     var volume: Double {
                         return width * height * depth
                     }
                 }
                 let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
                 print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")

         8，属性观察器
                 willSet 在新的值被设置之前调用：新的属性值作为常量参数传入（newvalue）
                 didSet 在新的值被设置之后调用：oldValue。如果在 didSet 方法中再次对该属性赋值，那么新值会覆盖旧的值。
                 在父类初始化方法调用之后，在子类构造器中给父类的属性赋值时，会调用父类属性的 willSet 和 didSet 观察器。而在父类初始化方法调用之前，给子类的属性赋值时不会调用子类属性的观察器。
             8.1、自定义的存储属性
         
                 class StepCounter{
                     var totalSteps: Int = 0{
                         willSet(newTotalSteps){
                             print("将 totalSteps 的值设置为 \(newTotalSteps)")
                         }
                         didSet{
                             if totalSteps > oldValue  {
                                print("增加了 \(totalSteps - oldValue) 步")
                             }else{
                                 print("减少了 \(oldValue - totalSteps) 步")
                             }
                         }
                     }
                 }
                 
                 let stepCounter = StepCounter()
                 stepCounter.totalSteps = 200
                 stepCounter.totalSteps = 360
                 stepCounter.totalSteps = 100
             8.2、继承的存储属性（子类中通过重写属性的方式为它添加属性观察器）
             8.3、继承的计算属性
         
         
         9、属性包装器：管理具有共性的属性
        
         
         */
 
        @propertyWrapper
        struct TwelveOrLess{
            private var number: Int
            init() {
                self.number = 1
            }
            var wrappedValue: Int{
                get{ return number}
                set{ number = min(newValue, 12)}
            }
        }
        
        struct SmallRectangle{
            @TwelveOrLess var height: Int
            @TwelveOrLess var width: Int
        }
        
        var rectangle = SmallRectangle()
        print(rectangle.height)
        rectangle.height = 10
        print(rectangle.height)

        rectangle.height = 20
        print(rectangle.height)

        
        
    
        
    }
    
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
