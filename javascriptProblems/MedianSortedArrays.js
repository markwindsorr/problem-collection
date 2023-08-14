// Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
// The overall run time complexity should be O(log (m+n)).

var findMedianSortedArrays = function (nums1, nums2) {
    const combine = [...nums1, ...nums2].sort();

    if (combine.length % 2 === 0) {
        const secondIndex = combine.length / 2;
        const firstIndex = secondIndex - 1;
        const diff = (combine[secondIndex] - combine[firstIndex]) / 2;
        return combine[firstIndex] + diff;
    } else {
        const index = Math.floor(combine.length / 2);
        console.log(index);
        return combine[index];
    }
};

const d = [
    "BOND.AGNCY",
    "ETF.FI.US",
    "STOCK.EU",
    "SSF.NA",
    "BOND.MUNI",
    "BOND.GOVT",
    "BOND.CD",
    "SSF.HK",
    "WAR.EU",
    "STOCK.HK",
    "SSF.EU",
    "IND.EU",
    "IND.HK",
    "FUND.ALL",
    "STK",
    "FUT.HK",
    "BOND",
    "FUT.US",
    "STOCK.NA",
    "BOND.GOVT.NON-US",
    "PORTSTK",
    "Global",
    "IND.US",
    "FUT.EU",
    "STOCK.ME",
    "SLB.US",
    "NATCOMB",
    "FUT.NA",
    "ETF.EQ.US",
];
