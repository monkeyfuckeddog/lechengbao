using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Text;
using System.Text.RegularExpressions;

public class Question1 : MonoBehaviour {
    private string inStr0 = @"Welcome to JoyCastle. Let's make an awesome game together.";
    private string inStr1 = @"Focused, hard work is the real key to success. Keep your eyes on the goal, and just keep taking the next step towards completing it.";

	// Use this for initialization
	void Start () {
        string ret = TransformStr(inStr1);
        UnityEngine.Debug.Log(ret);
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    string TransformStr(string str) {
        string retValue = string.Empty;
        StringBuilder sb = new StringBuilder(1024);
        MatchCollection mc = Regex.Matches(str, @"\.|,");

        string[] lines = str.Split(new char[] { ',', '.' }, System.StringSplitOptions.RemoveEmptyEntries);
        string[] words;
        for (int lineIndex = 0; lineIndex < lines.Length; lineIndex++)
        {
            words = lines[lineIndex].Split(new char[] { ' ' }, System.StringSplitOptions.RemoveEmptyEntries);
            if (lineIndex > 0) {
                sb.Append(" ");
            }
            for (int i = words.Length - 1; i >= 0; i--)
            {
                sb.Append(words[i]).Append(i != 0 ? " " :"");
            }
            sb.Append(mc[lineIndex]);
        }        

        retValue = sb.ToString();

        sb = null;
        mc = null;
        lines = null;
        words = null;

        return retValue;
    }
}
