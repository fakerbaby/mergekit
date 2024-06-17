
set -x

#!/bin/bash

# 设置CUDA设备
export CUDA_VISIBLE_DEVICES=${CUDA_DEVICE:-3}

# 定义输出名称
output_name=${OUTPUT_NAME:-"baichuan_177b_2_chat_slerp_4T85_sft_ppo"}

# 定义其他参数
RANDOM_SEED=${RANDOM_SEED:-42}
CONFIG_FILE=${CONFIG_FILE:-"/data2/rlhf/wshen/repo/mergekit/examples/baichuan_177b_slerp.yml"}
PYTHON_FILES_DIR=${PYTHON_FILES_DIR:-"/data2/rlhf/miaoyibo/reward_model_huggingface/reward_model_huggingface/output/bc2_177b_dpo_yingbo_0529"}

# 执行mergekit-yaml命令
mergekit-yaml -v \
    --write-model-card \
    --random-seed $RANDOM_SEED \
    --trust-remote-code \
    --copy-tokenizer \
    --cuda \
    --read-to-gpu \
    --lazy-unpickle \
    "$CONFIG_FILE" \
    "$output_name"

# 复制Python文件
cp "$PYTHON_FILES_DIR"/*.py "$output_name"
