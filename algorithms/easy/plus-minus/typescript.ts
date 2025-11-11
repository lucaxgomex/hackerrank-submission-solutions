'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString: string = '';
let inputLines: string[] = [];
let currentLine: number = 0;

process.stdin.on('data', function(inputStdin: string): void {
    inputString += inputStdin;
});

process.stdin.on('end', function(): void {
    inputLines = inputString.split('\n');
    inputString = '';

    main();
});

function readLine(): string {
    return inputLines[currentLine++];
}

function plusMinus(arr: number[]): void {
    let r: number = arr.length;
    let p: number = 0;
    let n: number = 0;
    let z: number = 0;

    for (let i: number = 0; i < r; i++) {
        if (arr[i] > 0) {
            p ++;
        } else {
            if (arr[i] < 0) {
                n ++;
            } else {
                z ++;
            }
        }
    }

    console.log((p / r).toFixed(r));
    console.log((n / r).toFixed(r));
    console.log((z / r).toFixed(r));
}

function main() {
    
    const n: number = parseInt(readLine().trim(), 10);

    const arr: number[] = readLine().replace(/\s+$/g, '').split(' ').map(arrTemp => parseInt(arrTemp, 10));

    plusMinus(arr);
}