//
//  BOJ1629.swift
//  Algorithm
//
//  Created by Erick on 2023/12/14.
//  곱셈: https://www.acmicpc.net/problem/1629
//

//let input = readLine()!.split(separator: " ").compactMap { Int($0) }
//let a = input[0]
//let b = input[1]
//let c = input[2]
//
//func recursion(_ num: Int) -> Int {
//    if num == 0 {
//        return 1
//    }
//
//    if num % 2 == 0 {
//        let r = recursion(num / 2)
//
//        return r % c * r % c
//    } else {
//        let r = recursion((num - 1) / 2)
//
//        return r % c * r % c * a % c
//    }
//}
//
//print(recursion(b))
