class Solution {
   int maxArea(List<int> height) {
    int left = 0;
    int right = height.length - 1;
    int maxArea = 0;

    while (left < right) {
      int width = right - left;
      int minH = height[left] < height[right] ? height[left] : height[right];
      int area = width * minH;

      if (area > maxArea) {
        maxArea = area;
      }

      if (height[left] < height[right]) {
        left++;
      } else {
        right--;
      }
    }

    return maxArea;
  }

}
