source .env

curl -s -X POST https://api.telegram.org/bot$BOT_ID/sendMessage -d chat_id=$USER_ID -d text="Batch Jobs MACBF Start: Running All Evaluation for Empty Environment"

python evaluate.py --num_agents 4 --model_path models/model_save --env Empty --vis 1
python evaluate.py --num_agents 8 --model_path models/model_save --env Empty --vis 1
python evaluate.py --num_agents 16 --model_path models/model_save --env Empty --vis 1
python evaluate.py --num_agents 32 --model_path models/model_save --env Empty --vis 1
python evaluate.py --num_agents 64 --model_path models/model_save --env Empty --vis 1
python evaluate.py --num_agents 128 --model_path models/model_save --env Empty --vis 1
python evaluate.py --num_agents 256 --model_path models/model_save --env Empty --vis 1
python evaluate.py --num_agents 512 --model_path models/model_save --env Empty --vis 1
python evaluate.py --num_agents 1024 --model_path models/model_save --env Empty --vis 1

curl -s -X POST https://api.telegram.org/bot$BOT_ID/sendMessage -d chat_id=$USER_ID -d text="Batch Jobs MACBF End: All Evaluation Completed for Empty Environment"