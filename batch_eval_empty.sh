source .env

curl -s -X POST https://api.telegram.org/bot$BOT_ID/sendMessage -d chat_id=$USER_ID -d text="Batch Jobs Start: Running All Evaluation for Empty Environment"

# Change the model path to your own model path
MODEL_PATH=~/riset/maicbf/models/agile_u_max_0.2/model_ours_weight_1.0_agents_4_v_max_0.2_u_max_0.2_sigma_0.05_default_iter_69999

python eval.py --env Empty --num_agents 4 --model_path $MODEL_PATH --vis 1
python eval.py --env Empty --num_agents 8 --model_path $MODEL_PATH --vis 1
python eval.py --env Empty --num_agents 16 --model_path $MODEL_PATH --vis 1
python eval.py --env Empty --num_agents 32 --model_path $MODEL_PATH --vis 1
python eval.py --env Empty --num_agents 64 --model_path $MODEL_PATH --vis 1
python eval.py --env Empty --num_agents 128 --model_path $MODEL_PATH --vis 1
python eval.py --env Empty --num_agents 256 --model_path $MODEL_PATH --vis 1
python eval.py --env Empty --num_agents 512 --model_path $MODEL_PATH --vis 1
python eval.py --env Empty --num_agents 1024 --model_path $MODEL_PATH --vis 1

curl -s -X POST https://api.telegram.org/bot$BOT_ID/sendMessage -d chat_id=$USER_ID -d text="Batch Jobs End: All Evaluation Completed for Empty Environment"