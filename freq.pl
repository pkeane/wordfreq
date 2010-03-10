#!/usr/bin/perl

use strict;
use warnings;

my $found = {};
while (<>) {
	chomp;
	my $line = $_;
	my @set = split /\W/,$line;
	for my $word (@set) {
		if ($word) {
			if ($found->{$word}) {
				$found->{$word}++;
			} else {
				$found->{$word} = 1;
			}
		}
	}
}

for my $word ( sort { $found->{$b} <=> $found->{$a} } keys %$found ) {
	print $word." ".$found->{$word}."\n";
}
