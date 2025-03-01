void main() {
  List<int> nums = [1, 3, 4, 5, 6, 7, 1, 2];
  print(containsDuplicate(nums));
}

/// Return true if there are any duplicates and false if not
bool containsDuplicate(List<int> nums) {
  // Used set for better time complexity => O(1)
  Set<int> seen = {};
  for (var num in nums) {
    if (seen.contains(num)) return true;
    seen.add(num);
  }
  return false;
}
