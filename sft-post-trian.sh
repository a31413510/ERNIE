nohup erniekit train examples/configs/xpu/ERNIE-4.5-21B-A3B/sft/run_sft_8k.yaml \
                     model_name_or_path=../21b/10.214.181.228\:8125 \
                     train_dataset_path="../gsm8k/train_gsm8k.json" \
                     max_steps=300 \
                     output_dir=./output/sft-21B-8k > sft-21b-8k.log 2>&1 &
