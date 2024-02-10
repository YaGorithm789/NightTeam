//
//  BOJ7795.swift
//  Algorithm
//
//  Created by Erick on 2024/01/10.
//  먹을 것인가 먹힐 것인가: https://www.acmicpc.net/problem/7795
//

//let n = Int(readLine()!)!
//var result: [Int] = []
//
//for _ in 0..<n {
//    let _ = readLine()!
//    let a = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()
//    let b = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()
//    var count = 0
//
//    for fishA in a {
//        for fishB in b {
//            if fishA > fishB {
//                count += 1
//            } else {
//                break
//            }
//        }
//    }
//
//    result.append(count)
//}
//
//result.forEach { print($0) }

let n = Int(readLine()!)!
var result: [Int] = []

for _ in 0..<n {
    let _ = readLine()!
    let a = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()
    let b = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()
    
    var count = 0
    var j = 0
    
    for i in 0..<a.count {
        while j < b.count, a[i] > b[j] {
            j += 1
        }
        
        count += j
    }

    result.append(count)
}

result.forEach { print($0) }
