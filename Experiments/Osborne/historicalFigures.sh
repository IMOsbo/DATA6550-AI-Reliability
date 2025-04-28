for i in {1..5}
do
	echo Run $i
	curl http://localhost:11434/api/generate -d '{
  "model": "gemma3:4b-it-qat",
  "prompt": "who was ruler of Kazakhstan in April 1956?",
  "stream": false}' >> ../../ChatLogs/Gemma-3.1/kazakhstan.txt
   echo , >> ../../ChatLogs/Gemma-3.1/kazakhstan.txt
done

for i in {1..5}
do
	echo Run $i
	curl http://localhost:11434/api/generate -d '{
  "model": "gemma3:4b-it-qat",
  "prompt": "Who was president of the United States in April 1956?",
  "stream": false}' >> ../../ChatLogs/Gemma-3.1/unitedStates.txt
    echo , >> ../../ChatLogs/Gemma-3.1/unitedStates.txt
done