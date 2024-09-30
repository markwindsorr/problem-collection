/**
 * @param {number[]} nums1
 * @param {number[]} nums2
 * @return {number}
 */
var findMedianSortedArrays = function(nums1, nums2) {
    const totalLength = nums1.length + nums2.length;
    const isEven = totalLength % 2 === 0;
    const targetIndex = Math.floor(totalLength / 2);
    
    let currentIndex = 0;
    let i = 0, j = 0;
    let prev = 0, current = 0;

    while (currentIndex <= targetIndex) {
        prev = current;
        if (i >= nums1.length || (j < nums2.length && nums2[j] < nums1[i])) {
            current = nums2[j];
            j++;
        } else {
            current = nums1[i];
            i++;
        }
        currentIndex++;
    }

    if (isEven) {
        return (prev + current) / 2;
    } else {
        return current;
    }
};