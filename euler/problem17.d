#!/usr/bin/env rdmd

import std.stdio;

void main() {
	ulong sum = 0;

	foreach (i; 1 .. 1001) {
		sum+=letters(i);
	}

	writeln(sum);
}

// < 20
int[20] smalls = [4, 3, 3, 5, 4, 4, 3, 5, 5, 4, 3, 6, 6, 8, 8, 7, 7, 9, 8, 8];

// <= 100, multiples of 10
int[11] tens = [0, 3, 6, 6, 5, 5, 5, 7, 6, 6, 7];

// and is 3 letters long

// Works for positive numbers <= 1000
int letters(int num) {
	if (num==1000) return 11;

	int ret = 0;

	if (num >= 100) {
		ret += smalls[num/100] + tens[10];
		num %= 100;
		if (num>0) {
			//and
			ret += 3;
		}
	}

	if (num >= 20) {
		ret += tens[num/10];
		num %= 10;
	}

	if (num>0) {
		ret += smalls[num];
	}

	return ret;
}
