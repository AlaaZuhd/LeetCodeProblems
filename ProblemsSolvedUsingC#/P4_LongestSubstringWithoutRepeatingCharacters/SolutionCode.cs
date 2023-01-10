public class Solution
{
    public int LengthOfLongestSubstring(string s)
    {
        string sub_s = "";
        int max_substring_length = 0;
        for (int i = 0; i < s.Length; i++)
        {
            sub_s = s[i] + "";
            for (int j = i + 1; j < s.Length; j++)
            {
                // compare the current character against the characters in the substring
                if (sub_s.Contains(s[j]))
                {
                    max_substring_length = Math.Max(max_substring_length, j - i);
                    break;
                }
                else
                {
                    sub_s += s[j];
                    max_substring_length = Math.Max(max_substring_length, j - i + 1);
                }
            }
        }
        if (s.Length <= 1) return s.Length;
        return max_substring_length;
    }
}