void main() {
  List<int> nums1 = [3, 2, 2, 3];
  List<int> nums2 = [3, 2, 2, 3];

  int result1 = removeElementTwoPointers(nums1, 3);
  int result2 = removeElementBruteForce(nums2, 3);

  print('Two Pointers Solution: $result1, Modified Array: $nums1');
  print('Brute Force Solution: $result2, Modified Array: $nums2');
}

// ✅ Solution 1: Two-Pointer Approach
int removeElementTwoPointers(List<int> nums, int val) {
  int k = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != val) {
      nums[k] = nums[i];
      k++;
    }
  }
  return k;
}

// ✅ Solution 2: Brute Force Approach
int removeElementBruteForce(List<int> nums, int val) {
  nums.removeWhere((element) => element == val);
  return nums.length;
}
