var longestCommonPrefix = function (strs) {
    if (strs.length === 0) {
        return "";
    }

    const splitMatrix = strs.map((word) => {
        return Array.from(word);
    });

    let prefix = [];
    const firstWordArray = splitMatrix[0];
    for (let i = 0; i < firstWordArray.length; i++) {
        const currentChar = firstWordArray[i];
        let addChar = true;
        for (let j = 1; j < strs.length; j++) {
            if (
                i >= splitMatrix[j].length ||
                currentChar !== splitMatrix[j][i]
            ) {
                addChar = false;
                break;
            }
        }
        if (addChar) {
            prefix.push(currentChar);
        } else {
            break;
        }
    }
    return prefix.join("");
};
