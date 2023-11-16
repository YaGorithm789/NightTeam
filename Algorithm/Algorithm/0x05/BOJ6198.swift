//
//  BOJ6198.swift
//  Algorithm
//
//  Created by Erick on 2023/11/16.
//  옥상 정원 꾸미기: https://www.acmicpc.net/problem/6198
//

// MARK: - 풀이 1
//let n = Int(readLine()!)!
//var result = Array(repeating: 0, count: n)
//var buildingStack: [(height: Int, index: Int)] = []
//
//for i in 0..<n {
//    let height = Int(readLine()!)!
//
//    while !buildingStack.isEmpty && buildingStack.last!.height <= height {
//        let index = buildingStack.popLast()?.index
//        result[index!] = i - index! - 1
//    }
//
//    buildingStack.append((height, i))
//}
//
//while !buildingStack.isEmpty {
//    let index = buildingStack.popLast()?.index
//    result[index!] = n - index! - 1
//}
//
//print(result.reduce(0, +))

// MARK: - 풀이 2
let n = Int(readLine()!)!
var buildingStack: [Int] = []
var result = 0

for _ in 0..<n {
    let height = Int(readLine()!)!
    
    while !buildingStack.isEmpty && buildingStack.last! <= height {
        buildingStack.removeLast()
    }
    
    result += buildingStack.count
    buildingStack.append(height)
}

print(result)
