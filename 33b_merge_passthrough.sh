export CUDA_VISIBLE_DEVICES=6

output_name=baichuan_33b_sft_dpo_passthrough
mergekit-yaml -v --write-model-card  --random-seed 42  --trust-remote-code  --copy-tokenizer --cuda  --read-to-gpu  --lazy-unpickle  "/data2/rlhf/wshen/repo/mergekit/examples/baichuan_33b_passthrough.yml" $output_name

# cp /data2/rlhf/wshen/ckpts/Baichuan2-13B-Chat/*.py  $output_name