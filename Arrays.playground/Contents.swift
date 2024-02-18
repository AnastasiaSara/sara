import UIKit

let nameMonths = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль",
                 "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]
let daysMonths = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for daysMonth in daysMonths {
    print(daysMonth)
}

for i in 0..<daysMonths.count {
    print("В \(nameMonths[i]) \(daysMonths[i]) дней")
}

print("\n")

let nameAndDaysMonths = ["Январь": 31, "Февраль": 29,"Март": 31,
                         "Апрель": 30, "Май": 31, "Июнь": 30,
                         "Июль": 31, "Август": 31, "Сентябрь": 30,
                         "Октябрь": 31, "Ноябрь": 30, "Декабрь": 31]

for (month, day) in nameAndDaysMonths {
    print("В \(month) \(day) день")
}

print("\n")

for (month, day) in nameAndDaysMonths.reversed() {
    print("В \(month) \(day) день")
}

//let randomDays = Int.random(in: 1...29)
//let randomMonth = Int.random(in: 1...12)
//
//var day = 0
//for i in 0..<daysMonths[randomMonth] {
//   day += daysMonths[i]
//    
//}

let randomDays = 29
let randomMonth = 4
let daysInYear = 366
let daysInMonth = 30

let numberOfDaysFromBeginningYear = daysMonths[0] + daysMonths[1] + daysMonths[2] + randomDays
print ("От начала високосного года до 29 Апреля прошло \(numberOfDaysFromBeginningYear) дней")
