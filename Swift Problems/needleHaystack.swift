/*
 
 Implement strStr()
 
 Return the index of the first occurrence of needle in haystack, or -1 if needle is not
 part of haystack
 
 input: haystack = "hello", needle = "ll"
 output: 2
 
 input: haystack = "aaaaa", needle = "bba"
 output -1
 
 */

func strStr(_ haystack : String, _ needle : String) -> Int {
    
    guard haystack.count > 0 && needle.count > 0 else {
        return 0
    }
    
    let needleRange = needle.count
    let distance = haystack.count - needle.count
    
    for i in 0...distance {
        
        let start = haystack.index(haystack.startIndex, offsetBy: i)
        let end = haystack.index(haystack.startIndex, offsetBy: i+needleRange)
        let substring = haystack[start..<end]
        if substring == needle {
            return i
        }
    }
    return -1
}

let result = strStr("aaaaa", "a")
print(result)
