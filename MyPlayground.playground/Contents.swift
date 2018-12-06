//: Playground - noun: a place where people can play

import UIKit

////String
//var userName: String = "Kanazawa"
//userName = "Test"
//userName = "Test2"
//
////Integer
//var num: Int = 10
//num = num + 5
//num = num * 2
//num = 0
//
//print(num)
//
//
////Double
//var numDouble:Double
//
//numDouble = 9.4
//
////Float
//var numFloat: Float
//
//numFloat = 3.1415
//
////Print out all information
//
//print("The value is: " + String(num) + "\nDouble: " + String(numDouble) + "\nFloat: " + String(numFloat))
//
//func userValue (v1: Int = 10, v2: Int) -> Int {
//    return v1 + v2
//}
//print(userValue(v1: 30, v2: 2))


////Arrays
//var names: [String]
//names = ["Bruno", "de", "Cicco", "Kanazawa"]
//names += ["Test"]
//names.append("Test1")
//
//for i in names {
//    print(i)
//}
//
//names.remove(at: 5)
//names.removeLast()
//for i in names {
//    print(i)
//}
//
//
//var numbers: [Int] = []
//numbers.append(10)
//numbers.append(20)
//numbers.append(30)
//
//print(numbers)
//
//func printStrings(phrases: [String]) -> String{
//    var result: String = ""
//    for i in phrases{
//        result += i + " "
//    }
//    return result
//}
//
//print(printStrings(phrases: ["This is Sparta!", "HA HA HA"]))

//
////Sets
//var listSet = Set<String>()
//
//listSet.insert("Pizza")
//listSet.insert("Juice")
//listSet.insert("Juice")
//
//
//print(listSet)


////Dicts
//var animals = [String: String]()
//
//animals["bear"] = "White animal that hibernates"
//animals["dog"] = "Men's best friend"
//
//print(animals["bear"]!)
//
//
//var months = [Int: String]()
//
//months[0] = "January"
//months[1] = "February"
//months[2] = "March"
//months[3] = "April"
//months[4] = "May"
//months[5] = "June"
//months[6] = "July"
//months[7] = "August"
//months[8] = "September"
//months[9] = "Octuber"
//months[10] = "November"
//months[11] = "December"
//
////for (k,v) in months {
////    print(v)
////}
//print(months[0]!)
//print(months[1]!)



///*
////If  else
// 100 - 200 = Low priced cars
// 200 - 300 = Medium priced cars
// 300 - 400 = Luxury cars
// */
// 
//var price: Int
//var result: String
//price = 201
//
//
//if (price >= 100 && price <= 199) {
//    result = "Low priced car"
//}else if(price >= 200 && price <= 299){
//    result = "Medium priced car"
//}else if(price >= 300 && price <= 400){
//    result = "Luxury car"
//}else{
//    result = "Uncategorized"
//}
//
//print(result)


//
//var name: String
//var result1: String
//name = "kanazawa"
//result1 = ""
//
//if (name == "kanazawa") {
//    result1 = "kanazawa"
//}
//
//print(result1)


//var age: Int
//age = 17
//
//if (age >= 18) {
//    print("You are an adult")
//} else {
//    print("You are under age, please return in a few years")
//}


//// Loop - For, while
////
////for var i in 0..<6 {
////    print("Number " + String(i))
////}
////
////var comments: [String] = []
////comments.append("This place is amazing!")
////comments.append("Nice Picture")
////comments.append("Beautiful place")
////
////
////for var comment in comments {
////    print(comment)
////}
////
//
//var count: Int = 0
////
////while count < 6 {
////    print(count)
////    count += 1
////    
////}
//
//
//repeat {
//    print(count)
//    count += 1
//} while count < 6



// Functions

//func multiplier(num1: Int, num2: Int){
//    print(num1 * num2)
//}
//
//multiplier(num1: 6, num2: 2)


//func multiplierPlusTwo(num1: Int, num2: Int) -> Int{
//    return(num1 * num2) + 2
//    
//}
//
//multiplierPlusTwo(num1: 6, num2: 5)

//var birthday: Int = 1980
//
//
//func findAge(bday: Int) -> Int{
//    let date = Date()
//    let calendar = Calendar.current
//    let year = calendar.component(.year, from: date)
//    var age: Int
//    age = year - bday
//    return age
//}
//
//print(findAge(bday: birthday))


//
//
//// Classes
//
//class House {
//    
//    //Atributtes
//    var color: String
//    
//    init(color: String) {
//        self.color = color
//    }
//    
//    //methods
//    func getColor() -> String {
//        return self.color
//    }
//    
//}
//
//var house = House(color: "yellow")
//house.getColor()
//
//var house1 = House(color: "Purple")
//house1.getColor()

//
//class Dog {
//    var color: String
//    var name: String
//    
//    init(name: String, color: String) {
//        self.color = color
//        self.name = name
//    }
//    
//    func run() -> String{
//        return "Yes"
//    }
//    func bark() -> String {
//        return "Yes"
//    }
//    
//}
//
//var dog = Dog(name: "Toddy", color: "orange")
//dog.bark()
//dog.run()


//inheritance
//
//class Animal{
//    var color: String
//    var weight: Double
//    
//    init(color: String, weight: Double) {
//        self.color = color
//        self.weight = weight
//    }
//    
//    func sleep() -> String{
//        return "Yes"
//    }
//    
//}
//
//
//class Dog: Animal{
//    func bark() -> String {
//        return "BARK!"
//    }
//}
//
//class Bird: Animal{
//    func fly() -> String {
//        return "FLY!"
//    }
//}
//
//class Parrot: Bird{
//    func speak() -> String {
//        return "HA HA"
//    }
//}
//
//
//var dog = Dog(color: "Orange", weight: 8.5)
//dog.sleep()
//dog.color
//dog.weight
//dog.bark()
//
//var bird = Bird(color: "Black", weight: 7.1)
//bird.sleep()
//bird.color
//bird.weight
//bird.fly()
//
//var parrot = Parrot(color: "green", weight: 2.2)
//parrot.color
//parrot.sleep()
//parrot.weight
//parrot.speak()

