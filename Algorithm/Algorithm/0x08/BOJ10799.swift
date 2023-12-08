//
//  BOJ10799.swift
//  Algorithm
//
//  Created by Erick on 2023/11/26.
//  쇠막대기: https://www.acmicpc.net/problem/10799
//

// MARK: - 풀이 1
//let input = readLine()!.map { String($0) }
//var lineCount = 0
//var result = 0
//
//for i in 0..<input.count {
//    let str = input[i]
//
//    switch str {
//    case "(":
//        lineCount += 1
//    case ")":
//        lineCount -= 1
//
//        if input[i-1] == "(" {
//            result += lineCount
//        } else {
//            result += 1
//        }
//
//    default:
//        break
//    }
//}
//
//print(result)

// MARK: - 풀이 2
let input = readLine()!
var beforeInput: Character = "("
var lineCount = 0
var result = 0

for i in input {
    if i == "(" {
        lineCount += 1
    } else {
        lineCount -= 1

        if beforeInput == "(" {
            result += lineCount
        } else {
            result += 1
        }
    }

    beforeInput = i
}

print(result)
