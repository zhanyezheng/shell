#!/usr/bin/perl

use warnings;
use strict;
use utf8;
use File::Basename;
use File::Copy;

my @files = glob "*_1.fq.gz";
foreach my $prefix (@files){
    $prefix =~ s/\_1.fq.gz//g;
    #print "$prefix\n";
    system "docker run --rm -v /g/zhanye/project/kexin/01_RNA_seq/:/data:z -t broadinstitute/gtex_rnaseq /bin/bash -c \"/src/run_STAR.py /data/star_index_oh75 /data/data/${prefix}_1.fq.gz /data/data/${prefix}_2.fq.gz $prefix --threads 20 --output_dir /data/star_out\"" ;
    system "docker run --rm -v /g/zhanye/project/kexin/01_RNA_seq/:/data -t broadinstitute/gtex_rnaseq /bin/bash -c \"/src/run_RSEM.py /data/rsem_reference /data/star_out/${prefix}.Aligned.toTranscriptome.out.bam /data/result/$prefix --threads 20\"" ;
}