var groupAnagrams = function (strs) {
    if (!strs || !strs.length) {
        return [[""]];
    }

    let resultMap = {};

    for (let str of strs) {
        const sortedString = str.split("").sort().join("");

        if (!resultMap[sortedString]) {
            resultMap[sortedString] = [];
        }

        resultMap[sortedString].push(str);
    }

    return Object.values(resultMap);
};
