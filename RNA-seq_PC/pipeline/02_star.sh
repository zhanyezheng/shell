#!/bin/bash
docker run --rm -v /g/zhanye/project/kexin/01_RNA_seq/:/data -t broadinstitute/gtex_rnaseq \
    /bin/bash -c "STAR \
        --runMode genomeGenerate \
        --genomeDir /data/star_index_oh75 \
        --genomeFastaFiles /data/genome/hg19.fa \
        --sjdbGTFfile /data/genome/gencode.v28lift37.annotation.gtf \
        --sjdbOverhang 75 \
        --runThreadN 40"
