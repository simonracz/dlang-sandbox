#!/usr/bin/env rdmd

import std.stdio;
import std.bigint;

void main() {
	int power = 1000;
	BigInt num = 1;
	num <<= power;

	ulong sum = 0;

	while (num!=0) {
		sum+= (num % 10);
		num/=10;
	}

	writeln(sum);
}
