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
    public static void miniMaxSum(List<int> arr)
    {
        //int minSum = 0;
        //int maxSum = 0;
        long s = 0;
        List<long> newResult = new List<long>();
        int arrSize = arr.Count;

        for (int i = 0; i < arrSize; i++)
        {
            s += arr[i];
        }

        for (int j = 0; j < arrSize; j++)
        {
            newResult.Add(s - arr[j]);
        }

        Console.WriteLine($"{newResult.Min()} {newResult.Max()}");
    }
}

class Solution
{
    public static void Main(string[] args)
    {
        List<int> arr = Console.ReadLine().TrimEnd().Split(' ').ToList().Select(arrTemp => Convert.ToInt32(arrTemp)).ToList();

        Result.miniMaxSum(arr);
    }
}
