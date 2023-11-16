//
//  BOJ10813.swift
//  Algorithm
//
//  Created by Erick on 2023/11/10.
//  공 바꾸기: https://www.acmicpc.net/problem/10813
//

// MARK: - 풀이 1
//let input = readLine()!.split(separator: " ").compactMap { Int($0) }
//var array: [Int] = []
//
//for num in 1...input.first! {
//    array.append(num)
//}
//
//for _ in 1...input.last! {
//    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
//    let num = array[input.last! - 1]
//
//    array[input.last! - 1] = array[input.first! - 1]
//    array[input.first! - 1] = num
//}
//
//array.forEach {
//    print($0, terminator: " ")
//}

// MARK: - 풀이 2
let input = readLine()!.split(separator: " ").compactMap { Int($0) }
var array: [Int] = []

for num in 1...input.first! {
    array.append(num)
}

for _ in 1...input.last! {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    array.swapAt(input.first! - 1, input.last! - 1)
}

print(array.map { String($0) }.joined(separator: " "))
