//
//  BOJ11729.swift
//  Algorithm
//
//  Created by Erick on 2023/12/14.
//  하노이 탑 이동 순서: https://www.acmicpc.net/problem/11729
//

//let n = Int(readLine()!)!
//var result = ""
//var count = 0
//
//func recursion(_ num: Int, _ start: Int, _ end: Int, _ middle: Int) {
//    if num == 1 {
//        result += "\(start) \(end)\n"
//        count += 1
//        return
//    }
//
//    recursion(num - 1, start, middle, end)
//    result += "\(start) \(end)\n"
//    count += 1
//    recursion(num - 1, middle, end, start)
//}
//
//recursion(n, 1, 3, 2)
//print(count)
//print(result)
