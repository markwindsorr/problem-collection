import UIKit

var sampleString = "1337"

//1. For loops
//2. Test your hash map (Dictionary) understanding

func convert(string: String) -> Int? {
    
    var total = 0
    
    //apply a simple algorithm to solve our problem
    // 1337 = 1000 + 300 + 30 + 7
    // 1337 = 1*10^3 + 3*10^2 + 3*10^1 + 7*10^0
    
    //1.
    let valueMap : [Character: Int] = [
        "1" : 1,
        "3" : 3,
        "7" : 7
    ]
    
    //2.
    for (index, char) in string.enumerated() {
        let exponent = string.count - index - 1 // getting the exponent.. first 3 then 2 then 1 then 0
        if let value = valueMap[char] {
            let number = Decimal(value) * pow(10, exponent)
            total += NSDecimalNumber(decimal: number).intValue
        } else {
            return nil
        }
    }
    return total
    // return Int(string) ?? 0 // Solve this problem without the String to Int conversion code
}

convert(string: sampleString)

/*
 
 Explanation
 
 1.) First we create a hash map (dictionary) that maps characters to int values
 
 2.) Now we loop by index and character through the enumerated string
 
 Next we get the exponents used in the calculation with string.count - index - 1, which gives use [3, 2, 1, 0]
 
 Then we map the value starting from the top of the string and do our calculation and then add it to the total
 
 */
