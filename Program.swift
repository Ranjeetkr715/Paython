import Foundation

func isPrime(n: Int) -> Bool{
    if n <= 1{
    return false
    }
    if n <= 3{
    return true
    }
    var i = 2
    while i*i <= n{
        if n % i == 0{
    return false
        }
    i = i + 1
    }
    return true
}
var row = 10;
var col = 100
var arr = [[Int]]()
for i in stride(from: 1, through: row, by: 1){
 var a1 = [Int]()
   for j in stride(from: (i - 1)*col, through: i * col, by: 1){
    
        let f = isPrime(n: j)
        
        if f == true{
            a1.append(j)
        }
    }
    
    arr.append(a1)
}
print("2d prime numbers are: \(arr)")
