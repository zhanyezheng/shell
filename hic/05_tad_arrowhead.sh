#!/bin/bash

java -jar juicer_tools.1.8.9_jcuda.0.8.jar arrowhead -r 1000000 --ignore_sparsity jurkat_allValidPairs.hic tad_arrowhead
 
# jurkat_allValidPairs.hic 为输入文件
# tad_arrowhead 输出文件所在文件夹

