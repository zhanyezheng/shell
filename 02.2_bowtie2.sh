#!/bin/bash
bowtie2 -x /f/mulinlab/zhanye/genome_info/mm9/bowtie2_index/mm9.fa -U SRR1991261.fastq -p 4 -S SRR1991261.sam