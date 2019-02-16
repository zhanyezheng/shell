fastp q5 -u 50 -n 15  -l 150 -i raw_data/cHiC_1.fq.gz -o 00_fastq/jurkat_clean_1.fq.gz -I raw_data/cHiC_2.fq.gz -O 00_fastq/jurkat_clean_2.fq.gz

## q5 -u 50 代表最多有50% 的碱基质量低于5
##-n 15 代表一个read 最多有15个N
## -l 150 代表对结果生成的read 长度进行统一，即最小长度为150