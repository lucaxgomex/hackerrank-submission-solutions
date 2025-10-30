'use strict';
process.stdin.resume();
process.stdin.setEncoding('utf-8');
var inputString = '';
var inputLines = [];
var currentLine = 0;
process.stdin.on('data', function (inputStdin) {
    inputString += inputStdin;
});
process.stdin.on('end', function () {
    inputLines = inputString.split('\n');
    inputString = '';
    main();
});
function readLine() {
    return inputLines[currentLine++];
}
/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */
function plusMinus(arr) {
    var r = [];
    var p = 0;
    var n = 0;
    var z = 0;
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] > 0) {
            p++;
        }
        else {
            if (arr[i] < 0) {
                n++;
            }
            else {
                z++;
            }
        }
    }
    r.push(p, n, z);
    r.forEach(function (index) {
        console.log(index / arr.length);
    });
}
function main() {
    var n = parseInt(readLine().trim(), 10);
    var arr = readLine().replace(/\s+$/g, '').split(' ').map(function (arrTemp) { return parseInt(arrTemp, 10); });
    plusMinus(arr);
}
