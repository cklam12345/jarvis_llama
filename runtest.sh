in="$(cat ~/jarvis_llama/mic.txt)"
./main -ngl 43 -m  jarvis.gguf -p "$in" -n 400 -e > out.txt
