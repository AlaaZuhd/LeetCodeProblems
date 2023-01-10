public class Solution
{
    public int CountMatches(IList<IList<string>> items, string ruleKey, string ruleValue)
    {
        int count = 0, index = 0;
        foreach (IList item in items)
        {
            if (ruleKey == "type") { index = 0; }
            else if (ruleKey == "color") { index = 1; }
            else { index = 2; }
            if (item[index].Equals(ruleValue)) count++;
        }
        return count;
    }
}