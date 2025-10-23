import 'dart:math';
class Solution {
  int minSubArrayLen(int target, List<int> nums) {
    int left=0;
    int sum=0;
    int minimumLength=nums.length+1;
    for (int right=0;right<nums.length;right++)
    {
        sum+=nums[right];
        while(sum>=target){
        int currentlength=right-left+1;
     minimumLength=min(currentlength,minimumLength);
     sum-=nums[left];
     left++;
        }
    }
    return minimumLength==nums.length+1?0:minimumLength;
    
  }
}