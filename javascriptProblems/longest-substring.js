// Longest Substring Without Repeating Characters

/**
 * @param {string} s
 * @return {number}
 */
var lengthOfLongestSubstring = function(s) {

    if (!s.length) {
        return 0
    }
    let maxCount = 0
    for (let i = 0; i < s.length; i++) {
        let currentCount = 0
        let charMap = {}
        for (let j = i; j < s.length; j++) {
            const nextChar = s[j]
            if (!charMap[nextChar]) {
                charMap[nextChar] = true
                currentCount++
                maxCount = Math.max(maxCount, currentCount)
            } else {
                break
            }
        }
    }
    return maxCount
};

var lengthOfLongestSubstringTwo = function(s) {
    if (!s.length) return 0;

    let maxLength = 0;
    let start = 0;
    let charMap = new Map();

    for (let end = 0; end < s.length; end++) {
        if (charMap.has(s[end])) {
            start = Math.max(start, charMap.get(s[end]) + 1);
        }
        charMap.set(s[end], end);
        maxLength = Math.max(maxLength, end - start + 1);
    }

    return maxLength;
};