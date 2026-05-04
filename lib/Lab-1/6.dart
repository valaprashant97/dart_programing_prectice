// WAP to find the subarray with the largest sum from a given integer array.
// Example:
// Input: nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
// Output: 6 (subarray [4, -1, 2, 1])
// Reference: Kadane’s Algorithm

import 'dart:io';
void main() {
  List<int> nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4];
  int n = nums.length;

  // Formula to calculate total number of possible subarrays
  // n * (n + 1) / 2
  double totalNumOfSubArray = (n * (n + 1)) / 2;

  print("Number of subArray: $totalNumOfSubArray");

  // Kadane’s Algorithm starts here

  // maxSum stores the maximum subarray sum
  int maxSum = nums[0];

  // currentSum stores the sum of the current subarray
  int currentSum = 0;

  for (int num in nums) {

    // Add current element to currentSum
    currentSum = currentSum + num;

    // Update maxSum if currentSum is greater
    if (currentSum > maxSum) {
      maxSum = currentSum;
    }

    // If currentSum becomes negative,
    // reset it to 0 (start a new subarray)
    if (currentSum < 0) {
      currentSum = 0;
    }
  }

  print("Maximum Subarray Sum: $maxSum");
}