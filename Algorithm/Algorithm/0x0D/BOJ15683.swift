//
//  BOJ15683.swift
//  Algorithm
//
//  Created by Erick on 2024/01/07.
//  감시: https://www.acmicpc.net/problem/15683
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[0]
let m = input[1]

typealias CCTVPoint = (y: Int, x: Int)
var office: [[Int]] = []
var cctvList: [CCTVPoint] = []

var watchArea = Array(repeating: Array(repeating: 0, count: m), count: n)
var result = Int.max

for i in 0..<n {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    office.append(input)
    
    for j in 0..<m {
        if ![0, 6].contains(office[i][j]) {
            cctvList.append((i, j))
        }
    }
}

recursion(0)
print(result)

func recursion(_ depth: Int) {
    if depth == cctvList.count {
        var count = 0
        
        for i in 0..<n {
            for j in 0..<m {
                if watchArea[i][j] == 0,
                   office[i][j] != 6,
                   !cctvList.contains(where: { $0 == (i, j) }) {
                    count += 1
                }
            }
        }
        
        result = min(result, count)
        return
    } else {
        let cctvPoint = cctvList[depth]
        let y = cctvPoint.y
        let x = cctvPoint.x
        
        for direction in directions(y, x) {
            dfs(y, x, direction, 1)
            recursion(depth + 1)
            dfs(y, x, direction, -1)
        }
    }
}

func dfs(_ y: Int, _ x: Int, _ direction: [Int], _ watchCount: Int) {
    let dy = [-1, 1, 0, 0]
    let dx = [0, 0, -1, 1]
    
    for i in direction {
        var ny = y + dy[i]
        var nx = x + dx[i]
        
        while (0..<n).contains(ny),
              (0..<m).contains(nx),
              office[ny][nx] != 6 {
            watchArea[ny][nx] += watchCount
            ny += dy[i]
            nx += dx[i]
        }
    }
}

func directions(_ y: Int, _ x: Int) -> [[Int]] {
    switch office[y][x] {
    case 1:
        return [[0], [1], [2], [3]]
    case 2:
        return [[0, 1], [2, 3]]
    case 3:
        return [[0, 2], [0, 3], [1, 2], [1, 3]]
    case 4:
        return [[0, 2, 3], [0, 1, 3], [1, 2, 3], [0, 1, 2]]
    case 5:
        return [[0, 1, 2, 3]]
    default:
        return []
    }
}
