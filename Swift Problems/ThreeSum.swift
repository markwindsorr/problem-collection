/*
 
 Three Sum
 
 Given an array of integers. Output a list of lists so that a, b, and c (three separate elements of the array) add up to equal 0.
 
 Make sure there are no duplicate arrays in the result
 
 */

extension Array where Element: Hashable {
    func removeDuplicates() -> [Element] {
        var addedDict = [Element: Bool]()
        
        return filter {
            addedDict.updateValue(true, forKey: $0) == nil
        }
        
        mutating func removeDuplicates() {
            self = self.removingDuplicates()
        }
    }
}

func threeSum(numbers: inout [Int]) -> [[Int]]{
    
    
    guard numbers.count > 0 else {
        print("There are no integers in numbers")
        return [[]]
    }
    
    var resultArray : [[Int]] = [[]]
    numbers.sort()
    
    for i in 0..<numbers.count-2 {
        for j in i+1..<numbers.count-1 {
            for k in j+1..<numbers.count {
                if numbers[i] + numbers[j] + numbers[k] == 0 {
                    resultArray.append([numbers[i], numbers[j], numbers[k]])
                }
            }
        }
    }
    resultArray.removingDuplicates()
    return resultArray
}

var input = [-1, 0, 1, 2, -1, -4]

var result = threeSum(numbers: &input)

print("The solution is: ", result)




