public class Solution
{
    public string LongestPalindrome(string s)
    {
        int longest_palindromic_subsring_length = 0;
        string longest_palindromic_subsring = "";
        for (int i = 0; i < s.Length; i++)
        {
            string longest_palindromic_subsring_temp = s[i] + "";
            for (int j = s.Length - 1; j > i; j--)
            {
                if (isPalindromicSubstring(s.Substring(i, j - i + 1)))
                {
                    longest_palindromic_subsring_temp = s.Substring(i, j - i + 1);
                    break;
                }
                else
                {

                }
            }
            if (longest_palindromic_subsring_temp.Length > longest_palindromic_subsring.Length)
                longest_palindromic_subsring = longest_palindromic_subsring_temp;
        }
        if (s.Length <= 1) return s;
        return longest_palindromic_subsring;
    }

    public bool isPalindromicSubstring(string s)
    {
        for (int i = 0; i < s.Length / 2; i++)
            if (s[i] != s[s.Length - 1 - i])
                return false;
        return true;
    }
}