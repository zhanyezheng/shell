#!/bin/bash
curl -s ftp://ftp.ccb.jhu.edu/pub/data/bowtie2_indexes/hg19.zip -o index/hg19.zip &
cd index
unzip hg19.zip

##从索引中提取每条染色体的长度
bowtie2-inspect -s index/hg19 | cut -f 2,3 | grep '^chr' > index/hg19.chrom.sizes 
## note：
## index是文件储存路径 