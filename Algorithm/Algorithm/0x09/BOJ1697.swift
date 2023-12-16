//
//  BOJ1697.swift
//  Algorithm
//
//  Created by Erick on 2023/12/05.
//  숨바꼭질: https://www.acmicpc.net/problem/1697
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let (n, k) = (input[0], input[1])
var visit: [Bool] = Array(repeating: false, count: 100001)
var path: [Int] = Array(repeating: 0, count: 100001)

print(bfs(n, k))

func bfs(_ n: Int, _ k: Int) -> Int {
    var queue = [n]
    var pointer = 0

    while pointer < queue.count {
        let data = queue[pointer]
        pointer += 1
        
        if data == k {
            break
        }
        
        if data > 0 && !visit[data - 1] {
            queue.append(data - 1)
            visit[data - 1] = true
            path[data - 1] = path[data] + 1
        }
        if data < 100000 && !visit[data + 1] {
            queue.append(data + 1)
            visit[data + 1] = true
            path[data + 1] = path[data] + 1
        }
        if data * 2 < 100001 && !visit[2 * data] {
            queue.append(2 * data)
            visit[2 * data] = true
            path[data * 2] = path[data] + 1
        }
    }
    
    return path[k]
}
