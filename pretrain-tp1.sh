#!/bin/bash
export TP_LOG=1
erniekit train examples/configs/xpu/ERNIE-4.5-21B-A3B/run_pretrain.yaml \
               model_name_or_path=../models/ERNIE-4.5-21B-A3B \
               tensor_parallel_degree=1
                     
