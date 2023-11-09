//
//  숫자의개수.swift
//  codingTest
//
//  Created by MARY on 2023/11/06.
//

import Foundation

func 숫자의개수() {
    let A = readLine()
    let B = readLine()
    let C = readLine()
    let ABC = String(Int(A!)! * Int(B!)! * Int(C!)!)
    var array = Array(repeating: 0, count: 10)

    for number in ABC {
        array[Int(String(number))!] += 1
    }

    array.forEach({
        print($0)
    })
}
