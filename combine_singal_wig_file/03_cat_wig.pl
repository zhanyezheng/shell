#!/usr/bin/perl
use warnings;
use strict;
use utf8;

my $dir = "bind_wig";
chdir $dir;
#system "ls bind_wig| sort -V > $dir/noline1_filename.txt ";  ##捕获目录下所有文件
system "find no_line*| sort -V > noline1_filename.txt ";  ## 只捕获目录下符合条件的文件
my $fi = "noline1_filename.txt";
open my $I , '<' , $fi or die "$0 : failed to open input file '$fi' :$!\n";
my @files = <$I>;
chomp @files;
#my $cmd = "zcat @files | gzip >SRR1991261_YY1_chip_treat.wig.gz";
#print "$cmd\n";
system "zcat @files | gzip >SRR1991261_YY1_chip_treat.wig.gz";
my $do = "/f/mulinlab/zhanye/project/3D_TR_cooperation/science_15_TF/data_GEO/SRR1991261_YY1_chip_MACS_wiggle/";
chdir $do;
system "mv $dir/SRR1991261_YY1_chip_treat.wig.gz ./";
system "zcat line1.wig.gz SRR1991261_YY1_chip_treat.wig.gz | gzip > $dir/SRR1991261_YY1_chip_treat.wig.gz";

# my @files = glob "$dir/*.wig.gz";
# #my @sorted_files = sort {lc($a) cmp lc($b)} @files;
# #my @sorted_files = sort {$a <=> $b} @files;
# #print "@sorted_files\n";
# system "zcat @files |gzip > test.wig.gz";
