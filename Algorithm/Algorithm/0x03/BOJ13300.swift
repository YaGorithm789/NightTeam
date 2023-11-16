//
//  BOJ13300.swift
//  Algorithm
//
//  Created by Erick on 2023/11/07.
//  방배정: https://www.acmicpc.net/problem/13300
//

// MARK: 풀이 1
import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

var studentList = Array(repeating: 0, count: 12)

for _ in 1...input[0] {
    let studentInfo = readLine()!.split(separator: " ").map { Int($0)! }
    let num = 2 * studentInfo[1] - 1
    
    studentList[num - studentInfo[0]] += 1
}

let result = studentList.reduce(0) {
    let romCount = ceil(Double($1) / Double(input[1]))
    
    return $0 + Int(romCount)
}

print(result)

// MARK: 풀이 2
//let input = readLine()!.split(separator: " ").map { Int($0)! }
//
//var studentList: [String: Int] = [:]
//
//for _ in 1...input[0] {
//    let studentInfo = readLine()!
//
//    studentList[studentInfo, default: 0] += 1
//}
//
//let result = studentList.values.reduce(0) {
//    $0 + (($1 + input[1] - 1) / input[1])
//}
//
//print(result)
