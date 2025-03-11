void main() {
  String s = 'abcd';
  String t = 'cbad';
  print(isAnagram(s, t));
}

// Sorting Approach (O(n log n))
bool isAnagramSorting(String s, String t) {
  if (s.length != t.length) return false;
  List<String> sList = s.split('')..sort();
  List<String> tList = s.split('')..sort();
  return (sList.join() == tList.join());
}

// Using hashMap (O(n))
bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;
  Map<String, int> charCount = {};
  for (int i = 0; i < s.length; i++) {
    charCount[s[i]] = (charCount[s[i]] ?? 0) + 1;
  }
  print(charCount);

  return charCount.values.every((count) => count == 0);
}
