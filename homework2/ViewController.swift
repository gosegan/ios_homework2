//
//  ViewController.swift
//  homework2
//
//  Created by Denys Danylko on 30.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // --------------------------- TASK 1, 2, 3 --------------------------------
        
        var numberArray : Array<Int> = [-2, 11, 32, -96, -13, 43, -15, -45, 91, 5]
        var min: Int = numberArray[0]
        var max: Int = numberArray[0]
        var sum: Int = 0
        
        for (index, number) in numberArray.enumerated() {
            
            sum += number
            
            if (min > numberArray[index]) {
                min = numberArray[index]
            }
            
            if (max < numberArray[index]) {
                max = numberArray[index]
            }
            
            if (number < 0) {
                numberArray[index] = 0
            }
            
            
        }
        //        print("TASK 1", numberArray)
        //        print("TASK 2", min, max)
        //        print("TASK 3", sum)
        
        // --------------------------- TASK 4 --------------------------------
        
        var monthArray : Array<String> = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
        var monthDict: Dictionary<Int, String> = [:]
        
        for (index, month) in monthArray.enumerated() {
            monthDict[index] = month
        }
        
        //        print("TASK 4", monthDict)
        
        // --------------------------- TASK 5 --------------------------------
        
        var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
        
        let one = dictionary["first"]
        let four = dictionary["fourth"]
        
        dictionary["first"] = four
        dictionary["fourth"] = one
        
        //        print("TASK 5", dictionary)
        
        // --------------------------- TASK 6-7 --------------------------------
        
        var yearDict: Dictionary<Int, Array<String>> = [:]
        
        monthArray.append("Additional")
        for year in 1970...2022 {
            yearDict[year] = monthArray
        }
        
        //        print("TASK 6-7", yearDict)
        
        monthArray.remove(at: 12)
        
        // --------------------------- TASK 8 --------------------------------
        
        var dates: Array<Int> = []
        
        for day in 1...31 {
            dates.append(day)
        }
        
        var calendarPro: Dictionary<Int, Dictionary<String, Array<Int>>> = [:]
        var monthCalendar: Dictionary<String, Array<Int>> = [:]
        
        for month in monthArray {
            monthCalendar[month] = dates
        }
        
        for year in 1970...2022 {
            calendarPro[year] = monthCalendar
        }
        
        for month in calendarPro[2019, default: [:]] {
            if (month.key == "September") {
                //                print("TASK 8 -", month.value[0], month.key, 2019, "year")
            }
        }
        
        // --------------------------- TASK 9 --------------------------------
        
        let number1 = 10
        let number2 = 12
        
        if number1 == number2 {
            //            print(TASK 9, number1 * number2)
        } else if (number1 + number2) % 2 == 0 {
            //            print(TASK 9, number1 + number2)
        }
        
        // --------------------------- TASK 10 --------------------------------
        
        let text: String = "Hello! My! Dear! World!"
        let textArray = text.split(separator: " ")
        
        for (i, _) in textArray.enumerated() {
            if i == 0 || i == textArray.count - 1 {
                //                print("TASK 10", textArray[i].prefix(textArray[i].count - 1))
            }
        }
        
        // --------------------------- TASK 11 --------------------------------
        
        func batteryNotification(_ percents: Int) {
            let liveAlbums = percents
            
            switch liveAlbums {
            case 100:
                print("TASK 10", "The device is charged")
                
            case 70...80:
                print("TASK 10", "It is necessary to charge the device within 6 hours")
                
            case 20...40:
                print("TASK 10", "Put the device on charge")
                
            case 0:
                print("TASK 10", "The device is completely discharged")
                
            default: break
            }
        }
        
        //        batteryNotification(21)
        
    }
}

