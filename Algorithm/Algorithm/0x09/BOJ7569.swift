//
//  BOJ7569.swift
//  Algorithm
//
//  Created by Erick on 2023/12/05.
//  토마토: https://www.acmicpc.net/problem/7569
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let m = input[0]
let n = input[1]
let h = input[2]
var box: [[[Int]]] = []
var dateBox = Array(repeating: Array(repeating: Array(repeating: 0, count: m), count: n), count: h)

for i in 0..<h {
    box.append([])
    
    for _ in 0..<n {
        box[i].append(readLine()!.split(separator: " ").compactMap { Int($0) })
    }
}

bfs()

if box.flatMap({ $0 }).flatMap({ $0 }).contains(0) {
    print(-1)
} else {
    print(dateBox.flatMap({ $0 }).flatMap({ $0 }).max()!)
}

func bfs() {
    let nextZ = [0, 0, 0, 0, 1, -1]
    let nextX = [1, -1, 0, 0, 0, 0]
    let nextY = [0, 0, 1, -1, 0, 0]
    
    var queue: [(Int, Int, Int)] = []
    var pointer = 0
    
    for i in 0..<h {
        for j in 0..<n {
            for k in 0..<m {
                if box[i][j][k] == 1 {
                    queue.append((i, j, k))
                }
            }
        }
    }
        
    while pointer < queue.count {
        let (z, x, y) = queue[pointer]
        pointer += 1
        
        for i in 0..<6 {
            let (nz, nx, ny) = (z + nextZ[i], x + nextX[i], y + nextY[i])
            
            if (0..<h).contains(nz),
               (0..<n).contains(nx),
               (0..<m).contains(ny),
               box[nz][nx][ny] == 0 {
                box[nz][nx][ny] = 1
                queue.append((nz, nx, ny))
                dateBox[nz][nx][ny] = dateBox[z][x][y] + 1
            }
        }
    }
}
