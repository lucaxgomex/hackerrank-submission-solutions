using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.Serialization;
using System.Text.RegularExpressions;
using System.Text;
using System;

class Result
{
    public static string TimeConversion(string s)
    {
        string c = s[0..2];

        if (s.Contains("PM"))
        {
            switch (c)
            {
                case "01":
                    s.Replace(c, "13");
                    break;
                case "02":
                    s.Replace(c, "14");
                    break;
                case "03":
                    s.Replace(c, "15");
                    break;
                case "04":
                    s.Replace(c, "16");
                    break;
                case "05":
                    s.Replace(c, "17");
                    break;
                case "06":
                    s.Replace(c, "18");
                    break;
                case "07":
                    s.Replace(c, "19");
                    break;
                case "08":
                    s.Replace(c, "20");
                    break;
                case "09":
                    s.Replace(c, "21");
                    break;
                case "10":
                    s.Replace(c, "22");
                    break;
                case "11":
                    s.Replace(c, "23");
                    break;
                case "12":
                    s.Replace(c, "00");
                    break;
            }
        }
        return c;   
    }
}

class Solution
{
    public static void Main(string[] args)
    {
        //TextWriter textWriter = new StreamWriter(@System.Environment.GetEnvironmentVariable("OUTPUT_PATH"), true);
        TextWriter textWriter = new StreamWriter("file.txt", true);

        string s = Console.ReadLine();

        string result = Result.TimeConversion(s);

        textWriter.WriteLine(result);

        textWriter.Flush();
        textWriter.Close();
    }
}
