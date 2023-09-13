/**
 * @param {string} digits
 * @return {string[]}
 */
const letterCombinations = (digits) => {
    if (!digits.length) {
        return [];
    }

    const digitMap = {
        2: ["a", "b", "c"],
        3: ["d", "e", "f"],
        4: ["g", "h", "i"],
        5: ["j", "k", "l"],
        6: ["m", "n", "o"],
        7: ["p", "q", "r", "s"],
        8: ["t", "u", "v"],
        9: ["w", "x", "y", "z"],
    };

    const splitDigits = digits.split("");

    let result = digitMap[splitDigits[0]] || [];

    for (let i = 1; i < splitDigits.length; i++) {
        const currentCharArray = digitMap[splitDigits[i]];

        let newResult = [];

        result.forEach((prefix) => {
            currentCharArray.forEach((suffix) => {
                newResult.push(prefix + suffix);
            });
        });

        result = newResult;
    }

    return result;
};
