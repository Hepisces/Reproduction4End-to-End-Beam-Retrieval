CUDA_VISIBLE_DEVICES=0,1 \
python train_reader.py \
--do_train \
--prefix \
musique_reader_deberta_large \
--model_name \
model/deberta-v3-large-squad2 \
--tokenizer_path \
model/deberta-v3-large-squad2 \
--dataset_type \
musique \
--train_file \
& "F:\\public datas\\NLP\\multi_QA\\musique_data_v1.0\\data\\musique_ans_v1.0_train.jsonl" \
--predict_file \
& "F:\\public datas\\NLP\\multi_QA\\musique_data_v1.0\\data\\musique_ans_v1.0_dev.jsonl" \
--train_batch_size \
8 \
--learning_rate \
1e-5 \
--fp16 \
--max_seq_len \
1024 \
--num_train_epochs \
16 \
--predict_batch_size \
32 \
--warmup-ratio \
0.1 \
--log_period_ratio \
0.01 \
--eval_period_ratio \
0.3
