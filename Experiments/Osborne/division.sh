> ../../ChatLogs/Gemma-3.1/division.txt

for i in {1..10}
do
	echo Run $i
	curl http://localhost:11434/api/generate -d '{
  "model": "gemma3:4b-it-qat",
  "prompt": "What is 313721 / 296293?",
  "stream": false}' >> ../../ChatLogs/Gemma-3.1/division.txt
done