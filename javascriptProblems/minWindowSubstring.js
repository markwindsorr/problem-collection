const minWindowSubstring = (strArr) => {
    const n = strArr[0];
    const k = strArr[1];

    if (!n.length || !k.length) {
        return "";
    }

    let occurenceMap = {};
    for (let i = 0; i < k.length; i++) {
        let char = k[i];
        occurenceMap[char] = occurenceMap[char] ? occurenceMap[char] + 1 : 1;
    }

    let minSubstring = "";
    let minLength = Infinity;

    let left = 0;
    let count = k.length;

    for (let right = 0; right < n.length; right++) {
        const char = n[right];

        if (occurenceMap[char] !== undefined) {
            occurenceMap[char]--;

            if (occurenceMap[char] >= 0) {
                count--;
            }

            while (count === 0) {
                if (right - left + 1 < minLength) {
                    minLength = right - left + 1;
                    minSubstring = n.substring(left, right + 1);
                }

                const leftChar = n[left];
                if (occurenceMap[leftChar] !== undefined) {
                    occurenceMap[leftChar]++;

                    if (occurenceMap[leftChar] > 0) {
                        count++;
                    }
                }

                left++;
            }
        }
    }

    return minSubstring;
};

console.log(MinWindowSubstring(["ahffaksfajeeubsne", "jefaa"]));
