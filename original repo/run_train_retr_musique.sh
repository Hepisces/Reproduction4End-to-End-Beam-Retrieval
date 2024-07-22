CUDA_VISIBLE_DEVICES=1 \
python train_beam_retriever.py \
--do_train \
--gradient_checkpointing \
--prefix \
deberta_use_two_classier_musique_beam_size2 \
--model_name \
MoritzLaurer/deberta-v3-large-zeroshot-v2.0 \
--tokenizer_path \
MoritzLaurer/deberta-v3-large-zeroshot-v2.0 \
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
--mean_passage_len \
120 \
--fp16 \
--beam_size \
2 \
--predict_batch_size \
1 \
--num_train_epochs \
20 \
--warmup-ratio \
0.1 \
--log_period_ratio \
0.01 \
--accumulate_gradients \
8 \
--eval_period_ratio \
0.3