import UIKit

struct Person {
    var hairColor: String
    var eyeColor: String
    var height: Double
    var weight: Double
    var age: Int
    var gender: Bool
    var carBrand: String
    
    init(hairColor: String, eyeColor: String, height: Double, weight: Double, age: Int, gender: Bool){
        self.hairColor = hairColor
        self.eyeColor = eyeColor
        self.height = height
        self.weight = weight
        self.age = age
        self.gender = gender
        self.carBrand = "\(gender ? "He" : "She") doesn't have a car"
    }
}

var mehmet = Person(hairColor: "Black", eyeColor: "Brown", height: 1.86, weight: 74, age: 25, gender: true)
var gokce = Person(hairColor: "Brown", eyeColor: "Brown", height: 1.65, weight: 55, age: 17, gender: false)
var mustafa = Person(hairColor: "Black", eyeColor: "Brown", height: 1.86, weight: 74, age: 25, gender: true)
mustafa.carBrand = "Tofaş"

print(mehmet)
print(gokce)
print(mustafa)
