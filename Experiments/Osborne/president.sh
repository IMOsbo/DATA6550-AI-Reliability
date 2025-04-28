> ../../ChatLogs/Gemma-3.1/president.txt

for i in {1..10}
do
	echo Run $i
	curl http://localhost:11434/api/generate -d '{
  'model': 'gemma3:4b-it-qat',
  'prompt': 'Who is president of the United States? Today is April 28, 2025.',
  'stream': false}" >> ../../ChatLogs/Gemma-3.1/unitedStates.txt
    echo , >> ../../ChatLogs/Gemma-3.1/president.txt
done