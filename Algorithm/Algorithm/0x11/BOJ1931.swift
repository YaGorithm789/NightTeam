//
//  BOJ1931.swift
//  Algorithm
//
//  Created by Erick on 2024/02/13.
//  회의실 배정: https://www.acmicpc.net/problem/1931
//

//let n = Int(readLine()!)!
//var meetings: [(Int, Int)] = []
//var endTime = 0
//var result = 0
//
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
//    meetings.append((input[0], input[1]))
//}
//
//meetings.sort(by: { $0.0 < $1.0 })
//meetings.sort(by: { $0.1 < $1.1 })
//
//for meeting in meetings {
//    if endTime <= meeting.0 {
//        endTime = meeting.1
//        result += 1
//    }
//}
//
//print(result)
