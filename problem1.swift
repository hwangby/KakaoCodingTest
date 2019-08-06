// - 예제 입력 1
//  5
//  [9, 20, 28, 18, 11]
//  [30, 1, 21, 17, 28]

// - 예제 입력 2
//  6
//  [46, 33, 33, 22, 31, 50]
//  [27, 56, 19, 14, 14, 10]

let n = Int(readLine()!)!

var str1: String = readLine()!
str1.remove(at: str1.firstIndex(of: "[")!)
str1.remove(at: str1.firstIndex(of: "]")!)
for _ in 0..<n-1 {
    str1.remove(at: str1.firstIndex(of: ",")!)
}
var arr1 = str1.split(separator: " ").map{Int($0)!}

var str2: String = readLine()!
str2.remove(at: str2.firstIndex(of: "[")!)
str2.remove(at: str2.firstIndex(of: "]")!)
for _ in 0..<n-1 {
    str2.remove(at: str2.firstIndex(of: ",")!)
}
var arr2 = str2.split(separator: " ").map{Int($0)!}

var output: Array<String> = []
for i in 0..<n{
    var mapLine = ""
    let wall = arr1[i] | arr2[i]
    let binary = String(wall, radix: 2)
    for j in binary {
        if j == "1" {
            mapLine.append("#")
        } else {
            mapLine.append(" ")
        }
    }
    while mapLine.count != n {
        mapLine = " " + mapLine
    }
    //print(mapLine)
    output.append(mapLine)
}
print(output)
