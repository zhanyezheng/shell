#!/bin/bash
#covert HiC-Pro output to juicebox input
/f/mulinlab/zhanye/Hicpro/HiC-Pro-2.9.0/bin/utils/hicpro2juicebox.sh -i jurkat_allValidPairs \
-g hg19 -j /f/mulinlab/zhanye/Tools/juicebox/juicer_tools.1.8.9_jcuda.0.8.jar \
-o /f/mulinlab/zhanye/project/wangzhao/01_HiC-jurkat_TKD180602399/juicebox/  ###注意-g 需要的是Chrome.size 文件

#covert HiC-Pro output to juicebox input up to restriction fragment resolution
/f/mulinlab/zhanye/Hicpro/HiC-Pro-2.9.0/bin/utils/hicpro2juicebox.sh -i jurkat_allValidPairs \
 -g hg19 -j /f/mulinlab/zhanye/Tools/juicebox/juicer_tools.1.8.9_jcuda.0.8.jar \
 -r /f/mulinlab/zhanye/Hicpro/HiC-Pro-2.9.0/annotation/MboI_resfrag_hg19.bed \
 -o /f/mulinlab/zhanye/project/wangzhao/01_HiC-jurkat_TKD180602399/juicebox/MobI
