#!/usr/bin/perl

use warnings;
use strict;
use utf8;
use File::Basename;
use File::Copy;

my %hash;
my @prefxs;
my $fo = "count.gct";
open my $O ,'>', $fo or die "$0 : failed to open output file '$fo' :$!\n";

my @files = glob "*.genes.results";
foreach my $file (@files){
    my $prefix = $file ;
    $prefix =~ s/\.rsem.genes.results//g;
    push @prefxs,$prefix;
    open my $I ,'<', $file or die "$0 : failed to open input file '$file' :$!\n";
    while (<$I>){
        chomp;
         unless (/^gene/){
            my @f = split/\t/;
            my $gene = $f[0] ; 
            my $count = $f[4];
            #print "$gene\t$tpm\n";
            my $k = $gene;
            push @{$hash{$k}},$count
        }
    }
}
my $p = join ("\t",@prefxs);
select $O ;
print "#1.2\n";
print "60658\t64\n";
print "NAME\tDescription\t$p\n";

foreach my$k (keys %hash){
    my @v = @{$hash{$k}};
    my $res = join ("\t", @v);
     print "$k\tna\t$res\n";
}
