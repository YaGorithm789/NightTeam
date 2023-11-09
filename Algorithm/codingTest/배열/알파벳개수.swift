//
//  알파벳개수.swift
//  codingTest
//
//  Created by MARY on 2023/11/06.
//

import Foundation

func 알파벳개수() {
    let input = readLine()!
    var array = Array(repeating: 0, count: 26)

    for char in input {
        array[Int(UnicodeScalar(String(char))!.value)-97] += 1
    }

    print(array.map{ String($0) }.joined(separator: " "))
}
