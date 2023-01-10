public class Solution
{
    public bool IsValid(string s)
    {
        Stack<char> st = new Stack<char>();
        for (int i = 0; i < s.Length; i++)
        {
            if (s[i] == '(' || s[i] == '[' || s[i] == '{') st.Push(s[i]);
            else
            {
                if (!st.Any()) return false;
                if ((s[i] == ')' && st.Peek() != '(') || (s[i] == ']' && st.Peek() != '[') || (s[i] == '}' && st.Peek() != '{'))
                    return false;
                st.Pop();
            }
        }
        return s.Length > 1 && !st.Any() ? true : false;
    }
}