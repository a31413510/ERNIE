#!/bin/bash
export ENABLE_AUTO_TUNER=0
erniekit train ../examples/configs/xpu/ERNIE-4.5-21B-A3B/run_pretrain.yaml \
               model_name_or_path=../../models/ERNIE-4.5-21B-A3B \
               train_dataset_path="../examples/data/pt/train.jsonl" \
               eval_dataset_path="../examples/data/pt/eval.jsonl" \
               tensor_parallel_degree=4 \
               pipeline_parallel_degree=2
