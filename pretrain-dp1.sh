#!/bin/bash
export DP_LOG=1
dp=1
tp=4
pp=$(( 8/(dp*tp) ))
erniekit train examples/configs/xpu/ERNIE-4.5-21B-A3B/run_pretrain.yaml \
               model_name_or_path=../models/ERNIE-4.5-21B-A3B \
               tensor_parallel_degree=$tp \
               pipeline_parallel_degree=$pp \
