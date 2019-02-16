#!/bin/bash

hg="hg19"
enzyme="MboI"
bin=5000
sbin="5kb"

dfq="/f/mulinlab/zhanye/project/wangzhao/01_HiC-jurkat_TKD180602399/01.00_fq_${enzyme}"
dhp="/f/mulinlab/zhanye/project/wangzhao/01_HiC-jurkat_TKD180602399/01_hicpro_${hg}_${enzyme}_${sbin}"
fcfg="/f/mulinlab/zhanye/project/wangzhao/01_HiC-jurkat_TKD180602399/00_cfg4hicpro/${hg}_${enzyme}_${sbin}.cfg"

source activate Hic
/f/mulinlab/zhanye/Hicpro/HiC-Pro_2.9.0/bin/HiC-Pro -i $dfq -o $dhp -c $fcfg
source deactivate   Hic
