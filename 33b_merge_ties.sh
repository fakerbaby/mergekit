export CUDA_VISIBLE_DEVICES=7
output_name=baichuan_33b_sft_dpo_tie

mergekit-yaml -v --write-model-card  --random-seed 42  --trust-remote-code  --copy-tokenizer --cuda  --read-to-gpu   "/data2/rlhf/wshen/repo/mergekit/examples/baichuan_33b_ties.yml" $output_name


cp /data2/rlhf/miaoyibo/model/baichuan3-33b-V913/baichuan3-33b-V913/*.py  $output_name
