//
//  BOJ1941.swift
//  Algorithm
//
//  Created by Erick on 2024/01/02.
//  소문난 칠공주: https://www.acmicpc.net/problem/1941
//

var girlsClass: [[Character]] = []

for _ in 0..<5 {
    girlsClass.append(Array(readLine()!))
}

var stack: [Int] = []
var sCount = 0
var result = 0

recursion(0)
print(result)

func checkBFS(_ stack: [Int]) -> Bool {
    let dy = [-1, 1, 0, 0]
    let dx = [0, 0, -1, 1]
    
    var visit = Array(repeating: false, count: 7)
    visit[0] = true
    
    var queue = [stack[0]]
    var pointer = 0
    
    while pointer < queue.count {
        let coord = queue[pointer]
        let (r, c) = (coord / 5, coord % 5)
        pointer += 1
        
        for i in 0..<4 {
            let (ny, nx) = (r + dy[i], c + dx[i])
            let checkCoord = ny * 5 + nx
            
            if (0..<5).contains(ny),
               (0..<5).contains(nx),
               let index = stack.firstIndex(of: checkCoord),
               !visit[index] {
                queue.append(checkCoord)
                visit[index] = true
            }
        }
    }
    
    return queue.count == 7
}

func recursion(_ idx: Int) {
    if stack.count == 7 {
        if sCount >= 4, checkBFS(stack) {
            result += 1
        }
    } else {
        if idx < 25 {
            let s = girlsClass[idx / 5][idx % 5] == "S" ? 1 : 0
            
            stack.append(idx)
            sCount += s
            recursion(idx+1)
            sCount -= s
            stack.removeLast()
            recursion(idx+1)
        }
    }
}
