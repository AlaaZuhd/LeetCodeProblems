public class Solution
{
    public double FindMedianSortedArrays(int[] nums1, int[] nums2)
    {
        int merged_array_length = nums1.Length + nums2.Length;
        int[] merged_array = new int[merged_array_length];

        // merging nums1 and nums2 with sorting. 
        for (int i = 0, j = 0, k = 0; i < merged_array_length; i++)
        {
            if (j >= nums1.Length)
            {
                for (; k < nums2.Length; k++, i++)
                    merged_array[i] = nums2[k];
                break;
            }
            else if (k >= nums2.Length)
            {
                for (; j < nums1.Length; j++, i++)
                    merged_array[i] = nums1[j];
                break;
            }
            if (nums1[j] <= nums2[k])
            {
                merged_array[i] = nums1[j];
                j++;
            }
            else
            {
                merged_array[i] = nums2[k];
                k++;
            }
        }
        for (int i = 0; i < merged_array_length; i++) System.Console.Write(merged_array[i] + ", ");
        if (merged_array_length % 2 == 0)
        {
            return (merged_array[merged_array_length / 2 - 1] + merged_array[merged_array_length / 2]) / 2.0;
        }
        else
        {
            return merged_array[merged_array_length / 2];
        }
    }
}