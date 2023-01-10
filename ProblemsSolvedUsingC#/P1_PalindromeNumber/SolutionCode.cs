public class Solution
{
    public bool IsPalindrome(int x)
    {
        int rev_x = 0;
        int temp_x = x;
        while (temp_x > 0)
        {
            rev_x *= 10;
            rev_x += temp_x % 10;
            temp_x /= 10;
        }

        return (rev_x == x) ? true : false;
    }
}