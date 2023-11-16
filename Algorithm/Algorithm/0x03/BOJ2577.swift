//
//  BOJ2577.swift
//  Algorithm
//
//  Created by Erick on 2023/11/07.
//  숫자의 개수: https://www.acmicpc.net/problem/2577
//

let first = readLine()!
let second = readLine()!
let third = readLine()!

let num = Int(first)! * Int(second)! * Int(third)!
let numString = String(num)
var numList: [Int] = Array(repeating: 0, count: 10)

for str in numString {
    let index = Int(String(str))!

    numList[index] += 1
}

for num in numList {
    print(num)
}
