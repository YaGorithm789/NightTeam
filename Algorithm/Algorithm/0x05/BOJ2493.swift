//
//  BOJ2493.swift
//  Algorithm
//
//  Created by Erick on 2023/11/16.
//  탑: https://www.acmicpc.net/problem/2493
//

//       <- 방향으로 탐색
// 6 9 5 7 4
// 자신의 신호를 받지 못한 탑을 저장하는 stack 만들기 []
// MARK: - 스택을 이용한 풀이
let n = Int(readLine()!)!
let towers = readLine()!.split(separator: " ").compactMap { Int($0) }
var result = Array(repeating: 0, count: n)
var towerStack: [Int] = []

for i in (0..<n).reversed() {

    while !towerStack.isEmpty && towers[i] > towers[towerStack.last!] {
        let index = towerStack.popLast()!
        result[index] = i + 1
    }

    towerStack.append(i)
}

print(result.map { String($0) }.joined(separator: " "))

// MARK: - 완전 탐색 풀이
//let n = Int(readLine()!)!
//var towers = readLine()!.compactMap { Int(String($0)) }
//var result: [Int] = []
//
//for i in 0..<n {
//
//    if i == 0 {
//        result.append(0)
//        continue
//    }
//
//    let num = towers[i]
//    var numList2 = towers[0...i-1]
//    var count = i
//
//    while true {
//        if numList2.isEmpty {
//            result.append(0)
//            break
//        } else if numList2.last! > num {
//            result.append(count)
//            break
//        } else {
//            numList2.removeLast()
//            count -= 1
//            continue
//        }
//    }
//}
//
//result.forEach {
//    print($0, terminator: " ")
//}
