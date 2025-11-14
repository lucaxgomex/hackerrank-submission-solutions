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
        /*
        List<string> newResult = new List<string>(
            "13",
            "14",
            "15",
            "16",
            "17",
            "18",
            "19",
            "20",
            "21",
            "22",
            "23",
            "24"
        );
        */
        string c = s[0..2];

        if (s.Contains("AM"))
        {
            switch (c)
            {
                case 12:
                    
                    break;
                default:
                    return "";
                    break;
            }
        } 
        else
        {
            if (s.Contains("PM"))
            {
                return s[0..2];
            } 
            else
            {
                return "no information";
            }
        }        
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
