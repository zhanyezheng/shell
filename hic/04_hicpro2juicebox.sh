#!/bin/bash

di = "01_hicpro_hg19_MboI_40Mb/hic_results/data/"
dju = "/f/mulinlab/zhanye/Hicpro/HiC-Pro-2.9.0/bin/utils/"
gs = "/f/mulinlab/zhanye/genome_info_chip/hg19/hg19.chrom.sizes"   
dj = "/f/mulinlab/zhanye/Tools/juicebox/"
dout = "/f/mulinlab/zhanye/project/wangzhao/01_HiC-jurkat_TKD180602399/juicebox"
mkdir -p $dout

cells=("jurkat")
fdi = $di/${cell}
fju = $dju/hicpro2juicebox.sh



for cell in "${cells[@]}"
do
    #covert HiC-Pro output to juicebox input
    $dju/hicpro2juicebox.sh -i $fdi/${cell}_allValidPairs -g $gs -j $dj/juicer_tools.1.8.9_jcuda.0.8.jar -o $dout
done