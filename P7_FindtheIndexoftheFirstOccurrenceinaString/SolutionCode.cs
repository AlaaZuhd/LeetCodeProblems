public class Solution
{
    public int StrStr(string haystack, string needle)
    {
        bool flag;
        for (int i = 0; i < haystack.Length - needle.Length + 1; i++)
        {
            flag = false;
            if (haystack[i] == needle[0])
            {
                flag = true;
                for (int j = 1; j < needle.Length; j++)
                {
                    if (haystack[i + j] != needle[j]) { flag = false; break; }
                }
                if (flag) return i;
            }
        }
        return -1;
    }
}