import UIKit

// MARK: - 1)
// Создать массив элементов 'кол-во дней в месяцах' содержащих количество дней в соответствующем месяце

let dayMonths = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

//MARK: - 2)
//Создать массив элементов 'название месяцeв' содержащий названия месяцев

let nameMonths = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль",
                 "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]

//MARK: - 3)
//Используя цикл for и массив 'кол-во дней в месяцах' выведите количество дней в каждом месяце (без имен месяцев)

for daysMonth in dayMonths {
    print(daysMonth)
}

print("\n")

//MARK: - 4)
//Используйте еще один массив с именами месяцев, чтобы вывести название месяца + количество дней

for (month, day) in zip(nameMonths, dayMonths) {
    print("\(month) - \(day) дней")
}

print("\n")

//MARK: - 5)
//Сделайте тоже самое, но используя массив tuples (кортежей) с параметрами (имя месяца, кол-во дней)

let nameAndDaysMonths = [("Январь", 31), ("Февраль", 29), ("Март", 31),
                         ("Апрель", 30), ("Май", 31), ("Июнь", 30),
                         ("Июль", 31), ("Август", 31), ("Сентябрь", 30),
                         ("Октябрь", 31), ("Ноябрь", 30), ("Декабрь", 31)]

for (month, day) in nameAndDaysMonths {
    print("\(month) - \(day) дней")
}

print("\n")

//MARK: - 6)
//Сделайте тоже самое, только выводите дни в обратном порядке (порядок в массиве не менять)

for (month, day) in nameAndDaysMonths.reversed() {
    print("\(month) - \(day) деней")
}

print("\n")

//MARK: - 7)
//Сделайте тоже самое, только выводите дни в обратном порядке (порядок в массиве не менять)

let randomDays = Int.random(in: 1...29)
let randomMonth = Int.random(in: 0...11)

var count = 0
for index in 0..<nameAndDaysMonths.count {
    if index == randomMonth{
        count += randomDays - 1
        break
    } else {
        count += nameAndDaysMonths[index].1
    }
}

print("Сначала високосного года и до \(randomDays) числа месяца - \(nameAndDaysMonths[randomMonth].0), пройдет \(count) дней ")

