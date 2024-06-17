export CUDA_VISIBLE_DEVICES=1
output_name=baichuan_177b_2_chat_ties_4T85_sft_ppo
mergekit-yaml -v --write-model-card  --random-seed 42  --trust-remote-code  --copy-tokenizer --cuda  --read-to-gpu  --lazy-unpickle  "/data2/rlhf/wshen/repo/mergekit/examples/baichuan_177b_ties.yml" $output_name


# output_name=baichuan_33b_sft_dpo_linear
# cp /data2/rlhf/miaoyibo/model/baichuan3-33b-V913/baichuan3-33b-V913/*.py  $output_name
cp /data2/rlhf/miaoyibo/reward_model_huggingface/reward_model_huggingface/output/bc2_177b_dpo_yingbo_0529/*py  $output_name