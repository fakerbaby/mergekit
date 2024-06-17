output_name=baichuan_13b_3chat_breadcrumbs
mergekit-yaml -v --write-model-card  --random-seed 42  --trust-remote-code  --copy-tokenizer --cuda  --read-to-gpu  --lazy-unpickle  "/data2/rlhf/wshen/repo/mergekit/examples/baichuan_13b_breadcurmbs.yml" $output_name

cp /data2/rlhf/wshen/ckpts/Baichuan2-13B-Chat/*.py /data2/rlhf/wshen/ckpts/Baichuan2-13B-Chat/*.json  $output_name