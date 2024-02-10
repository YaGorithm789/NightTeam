//
//  BOJ11652.swift
//  Algorithm
//
//  Created by Erick on 2024/01/08.
//  카드: https://www.acmicpc.net/problem/11652
//

//let n = Int(readLine()!)!
//var numDic: [Int: Int] = [:]
//
//for _ in 0..<n {
//    let input = Int(readLine()!)!
//    numDic[input, default: 0] += 1
//}
//
//print(numDic.sorted { $0.value == $1.value ? $0 < $1 : $0.value > $1.value }.first!.key)

let n = Int(readLine()!)!
var numDic: [Int: Int] = [:]

for _ in 0..<n {
    let input = Int(readLine()!)!
    numDic[input, default: 0] += 1
}

print(numDic.max(by: { $0.value == $1.value ? $0 > $1 : $0.value < $1.value })!.key)
