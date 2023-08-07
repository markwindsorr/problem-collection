/*
 
 Given a string, find the first non-repeating character in it and return its index.
 If it doesn't exist, return -1
 
 */

func firstUniqueChar(_ s: String) -> Int{
    
    let charArray = Array(s)
    var charFound : Bool
    
    for i in 0..<charArray.count {
        charFound = false
        innerLoop : for j in 0..<charArray.count {
            
            if charArray[i] == charArray[j] && i != j {
                charFound = true
                break innerLoop
            }
        }
        
        if !charFound {
            return i
        }
    }
    return -1
}

var result = firstUniqueChar("aabbccddefd")
print(result)
