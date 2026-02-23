curl -s -X POST https://api.telegram.org/bot$BOT_ID/sendMessage -d chat_id=$USER_ID -d text="Upload csv from repo_data start!"

source ~/openrc.sh 
swift upload maicbf ~/maicbf/repo_data/Empty_4_agents.csv --object-name 'Empty_4_agents.csv' 
swift upload maicbf ~/maicbf/repo_data/Empty_8_agents.csv --object-name 'Empty_8_agents.csv'
swift upload maicbf ~/maicbf/repo_data/Empty_16_agents.csv --object-name 'Empty_16_agents.csv'
swift upload maicbf ~/maicbf/repo_data/Empty_32_agents.csv --object-name 'Empty_32_agents.csv'
swift upload maicbf ~/maicbf/repo_data/Empty_64_agents.csv --object-name 'Empty_64_agents.csv'
swift upload maicbf ~/maicbf/repo_data/Empty_128_agents.csv --object-name 'Empty_128_agents.csv'
swift upload maicbf ~/maicbf/repo_data/Empty_256_agents.csv --object-name 'Empty_256_agents.csv'
swift upload maicbf ~/maicbf/repo_data/Empty_512_agents.csv --object-name 'Empty_512_agents.csv'
swift upload maicbf ~/maicbf/repo_data/Empty_1024_agents.csv --object-name 'Empty_1024_agents.csv'

swift upload maicbf ~/maicbf/repo_data/Maze_4_agents.csv --object-name 'Maze_4_agents.csv'
swift upload maicbf ~/maicbf/repo_data/Maze_8_agents.csv --object-name 'Maze_8_agents.csv'
swift upload maicbf ~/maicbf/repo_data/Maze_16_agents.csv --object-name 'Maze_16_agents.csv'
swift upload maicbf ~/maicbf/repo_data/Maze_32_agents.csv --object-name 'Maze_32_agents.csv'
swift upload maicbf ~/maicbf/repo_data/Maze_64_agents.csv --object-name 'Maze_64_agents.csv'
swift upload maicbf ~/maicbf/repo_data/Maze_128_agents.csv --object-name 'Maze_128_agents.csv'
swift upload maicbf ~/maicbf/repo_data/Maze_256_agents.csv --object-name 'Maze_256_agents.csv'
swift upload maicbf ~/maicbf/repo_data/Maze_512_agents.csv --object-name 'Maze_512_agents.csv'
swift upload maicbf ~/maicbf/repo_data/Maze_1024_agents.csv --object-name 'Maze_1024_agents.csv'

swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Empty_4_agents.csv --object-name 'Empty_4_agents_baseline.csv'
swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Empty_8_agents.csv --object-name 'Empty_8_agents_baseline.csv'
swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Empty_16_agents.csv --object-name 'Empty_16_agents_baseline.csv'
swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Empty_32_agents.csv --object-name 'Empty_32_agents_baseline.csv'
swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Empty_64_agents.csv --object-name 'Empty_64_agents_baseline.csv'
swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Empty_128_agents.csv --object-name 'Empty_128_agents_baseline.csv'
swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Empty_256_agents.csv --object-name 'Empty_256_agents_baseline.csv'
swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Empty_512_agents.csv --object-name 'Empty_512_agents_baseline.csv'
swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Empty_1024_agents.csv --object-name 'Empty_1024_agents_baseline.csv'

swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Maze_4_agents.csv --object-name 'Maze_4_agents_baseline.csv'
swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Maze_8_agents.csv --object-name 'Maze_8_agents_baseline.csv'
swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Maze_16_agents.csv --object-name 'Maze_16_agents_baseline.csv'
swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Maze_32_agents.csv --object-name 'Maze_32_agents_baseline.csv'
swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Maze_64_agents.csv --object-name 'Maze_64_agents_baseline.csv'
swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Maze_128_agents.csv --object-name 'Maze_128_agents_baseline.csv'
swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Maze_256_agents.csv --object-name 'Maze_256_agents_baseline.csv'
swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Maze_512_agents.csv --object-name 'Maze_512_agents_baseline.csv'
swift upload maicbf ~/maicbf/baselines/macbf/drones/repo_data/Maze_1024_agents.csv --object-name 'Maze_1024_agents_baseline.csv'   


wait
echo "All done!"

curl -s -X POST https://api.telegram.org/bot$BOT_ID/sendMessage -d chat_id=$USER_ID -d text="Done uploading!"
