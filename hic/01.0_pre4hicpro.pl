#!/usr/bin/perl

use warnings;
use strict;
use utf8;

my @cells = ("jurkat");
my $enzyme = "MboI";

my $di = "00_fastq";
my $do = "01.00_fq_${enzyme}";
mkdir $do unless -d $do;

foreach my $cell (@cells) {
    my $id  = "$cell";
    my $df  = "$di";
    my $ff1 = "$df/${id}_1.fastq.gz";
    my $ff2 = "$df/${id}_2.fastq.gz";
    my $dt  = "$do/$cell";
    mkdir $dt unless -d $dt;
    my $ft1 = "$dt/${cell}_1.fastq";
    my $ft2 = "$dt/${cell}_2.fastq";
    link( $ff1, $ft1 );
    link( $ff2, $ft2 );
}

