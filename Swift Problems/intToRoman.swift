/*
 
 Roman to Int
 
 
 Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
 
 Symbol       Value
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 
 There are six instances where subtraction is used
 
 - I can placed before V and X
 - X can be placed before L and C
 - C can be placed before D and M
 
 
 */


let hash : [Character : Int] = ["I" : 1,
                                "V" : 5,
                                "X" : 10,
                                "L" : 50,
                                "C" : 100,
                                "D" : 500,
                                "M" : 1000]


func romanToInt(_ roman: String) -> Int {
    
    var total = 0
    var isSpecialCase : Bool
    var roman = Array(roman)
    
    for (i, char) in roman.enumerated () {
        
        guard roman[i] != "*" else {
            continue // continue tells a loop to stop and start again at the beginning of the next interation
        }
        
        guard i < roman.count else {
            return total
        }
        
        isSpecialCase = false
        
        switch char {
        case "I":
            if roman[i+1] == "V" {
                total = total + 4
                roman[i+1] = "*"
                isSpecialCase = true
            } else if roman[i+1] == "X" {
                total = total + 9
                roman[i+1] = "*"
                isSpecialCase = true
            }
            
        case "X":
            if roman[i+1] == "L" {
                total = total + 40
                roman[i+1] = "*"
                isSpecialCase = true
            } else if roman[i+1] == "C" {
                total = total + 90
                roman[i+1] = "*"
                isSpecialCase = true
            } else {
                total = total + hash[char]!
            }
            
        case "C":
            if roman[i+1] == "D" {
                total = total + 400
                roman[i+1] = "*"
                isSpecialCase = true
            } else if roman[i+1] == "M"{
                total = total + 900
                roman[i+1] = "*"
                isSpecialCase = true
            } else {
                total = total + hash[char]!
            }
            
        default:
            total = total + hash[char]!
            break
        }
        
    }
    return total
}

//"MCMXCIV"
//"LVIII"
//"IV"
var result = romanToInt("III")
print(result)



