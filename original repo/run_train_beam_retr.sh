CUDA_VISIBLE_DEVICES=2 \
python train_beam_retriever.py \
--do_train \
--gradient_checkpointing \
--prefix \
retr_hotpot_beam_size2_large \
--model_name \
model/deberta-v3-large \
--tokenizer_path \
model/deberta-v3-large \
--dataset_type \
hotpot \
--train_file \
& "F:\\public datas\\NLP\\multi_QA\hotpot\\hotpot_train_v1.1.json" \
--predict_file \
& "F:\\public datas\\NLP\\multi_QA\hotpot\\hotpot_dev_distractor_v1.json" \
--train_batch_size \
8 \
--learning_rate \
2e-5 \
--fp16 \
--beam_size \
2 \
--predict_batch_size \
1 \
--warmup-ratio \
0.1 \
--num_train_epochs \
20 \
--mean_passage_len \
250 \
--log_period_ratio \
0.01 \
--accumulate_gradients \
8 \
--eval_period_ratio \
0.3