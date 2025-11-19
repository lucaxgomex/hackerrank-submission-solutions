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
        List<string> newString = s.Split(':').ToList();
        var charsToRemove = new string[] {"P", "M", "A"};
        int i = newString.Count - 1;

        if (s.Contains("PM"))
        {
            switch (newString[0])
            {
                case "01":
                    newString[0] = "13";
                    break;
                case "02":
                    newString[0] = "14";
                    break;
                case "03":
                    newString[0] = "15";
                    break;
                case "04":
                    newString[0] = "16";
                    break;
                case "05":
                    newString[0] = "17";
                    break;
                case "06":
                    newString[0] = "18";
                    break;
                case "07":
                    newString[0] = "19";
                    break;
                case "08":
                    newString[0] = "20";
                    break;
                case "09":
                    newString[0] = "21";
                    break;
                case "10":
                    newString[0] = "22";
                    break;
                case "11":
                    newString[0] = "23";
                    break;
                case "12":
                    if(s.Contains("AM"))
                    {
                        newString[0] = "00";
                    }
                    break;
            }
        } else
        {
            switch (newString[0])
            {
                case "12":
                    if(s.Contains("AM"))
                    {
                        newString[0] = "00";
                    }
                    break;
            }
        }

        foreach (var c in charsToRemove)
        {
            newString[i] = newString[i].Replace(c, string.Empty);
        }
        
        return String.Join(":", newString);
    }
}

class Solution
{
    public static void Main(string[] args)
    {
        TextWriter textWriter = new StreamWriter(@System.Environment.GetEnvironmentVariable("OUTPUT_PATH"), true);
        //TextWriter textWriter = new StreamWriter("file.txt", true);

        string s = Console.ReadLine();

        string result = Result.TimeConversion(s);

        textWriter.WriteLine(result);

        textWriter.Flush();
        textWriter.Close();
    }
}
