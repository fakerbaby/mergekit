export CUDA_VISIBLE_DEVICES=7
output_name=baichuan_33b_sft_dpo_linear
mergekit-yaml -v --write-model-card  --random-seed 42  --trust-remote-code  --copy-tokenizer --cuda  --read-to-gpu  --lazy-unpickle  "/data2/rlhf/wshen/repo/mergekit/examples/baichuan_33b_linear.yml" $output_name


output_name=baichuan_33b_sft_dpo_linear
cp /data2/rlhf/miaoyibo/model/baichuan3-33b-V913/baichuan3-33b-V913/*.py  $output_name
