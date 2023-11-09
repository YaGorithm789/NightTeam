//
//  두수의합.swift
//  codingTest
//
//  Created by MARY on 2023/11/06.
//

func 두수의합() {
    let n = Int(readLine()!)!
    let arrayString = readLine()!
    let inputArray = arrayString.split(separator: " ").map { Int(String($0))! }.sorted()
    let x = Int(readLine()!)!

    ///*
    // 빈배열 이용
    var array = Array(repeating: false, count: x)
    var result = 0

    for i in inputArray {
        guard i < x else { continue }
        
        if array[x-i] == true {
            result += 1
        }
        
        array[i] = true
    }
    // */
    
    /*
    // 투포인터 이용
    var result = 0
    var start = 0
    var end = n-1

    while start < end {
        let sum = inputArray[start] + inputArray[end]
        
        if sum > x {
            end -= 1
        } else if sum < x {
            start += 1
        } else {
            result += 1
            start += 1
            end -= 1
        }
    }
     */

    print(result)
}
