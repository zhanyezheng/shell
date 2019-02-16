#!/bin/bash
bowtie -p 4  --sam -l 40 /f/mulinlab/zhanye/genome_info/mm9/bowtie_index/mm9  SRR1991261.fastq > SRR1991261_bowtie.sam
bowtie -p 4 --best -k 1 -m 1 --sam -l 40 /f/mulinlab/zhanye/genome_info/mm9/bowtie_index/mm9  SRR1991261.fastq > SRR1991261_bowtie.sam
bowtie -q -S -p 8 -l 20 -n 3 xxxx --norc 

# -m 最终只保留map上一次的reads
# -S 输出文件格式是SAM
# -q 输入文件格式是fastq
# --norc 不允许反向互补