//
//  BOJ2448.swift
//  Algorithm
//
//  Created by Erick on 2023/12/20.
//  별 찍기 - 11: https://www.acmicpc.net/problem/2448
//

let n = Int(readLine()!)!

var result = ["  *   ",
              " * *  ",
              "***** "]

recursion(n)
    
result.forEach {
    print($0)
}

func recursion(_ n: Int) {
    if n == 3 {
        return
    }
    
    let newStr = result.map { $0 + $0 }
    let newResult = result.map { str -> String in
        let space = String(repeating: " ", count: result.count)
        return space + str + space
    }
    
    result = newResult
    result.append(contentsOf: newStr)

    recursion(n / 2)
}
