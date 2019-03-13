#!/bin/bash
docker run --rm -v /g/zhanye/project/kexin/01_RNA_seq/:/data -t broadinstitute/gtex_rnaseq \
    /bin/bash -c "rsem-prepare-reference \
        /data/genome/hg19.fa \
        /data/rsem_reference/rsem_reference \
        --gtf /data/genome/gencode.v28lift37.annotation.gtf \
        --num-threads 40"
