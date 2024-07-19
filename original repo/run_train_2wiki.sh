CUDA_VISIBLE_DEVICES=2 \
python train_beam_retriever.py \
--do_train \
--gradient_checkpointing \
--prefix \
train_2wiki_continue_training \
--model_name \
model/deberta-v3-base \
--tokenizer_path \
model/deberta-v3-base \
--train_file \
F:/public datas/NLP/multi_QA/data_ids_april7/train.json \
--predict_file \
F:/public datas/NLP/multi_QA/data_ids_april7/dev.json \
--train_batch_size \
8 \
--learning_rate \
1e-5 \
--fp16 \
--beam_size \
1 \
--predict_batch_size \
1 \
--mean_passage_len \
120 \
--warmup-ratio \
0.1 \
--log_period_ratio \
0.01 \
--accumulate_gradients \
8 \
--eval_period_ratio \
0.3