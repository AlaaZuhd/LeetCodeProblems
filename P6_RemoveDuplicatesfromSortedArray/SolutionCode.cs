public class Solution
{
    public int RemoveDuplicates(int[] nums)
    {
        bool[] is_dup_nums = new bool[nums.Length];
        int dup_count = 0;
        for (int i = 1; i < nums.Length; i++)
        {
            if (nums[i] == nums[i - 1]) { is_dup_nums[i] = true; dup_count++; }
        }
        for (int i = 0, j = 0; i < nums.Length; i++)
        {
            if (is_dup_nums[i]) continue;
            nums[j] = nums[i];
            j++;
        }
        return nums.Length - dup_count;
    }
}