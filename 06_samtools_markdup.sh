#!/bin/bash
samtools sort -n -o name.sort.bam -O BAM -@10 jurkat_hg19.bwt2pairs.bam
samtools fixmate -@10 -m name.sort.bam fixmate.bam
samtools sort -@10 -o pos.sort.bam fixmate.bam
samtools markdup -@10 -r pos.sort.bam markdup.bam
