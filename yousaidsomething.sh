#!/bin/bash
cd ~/jarvis_llama/piper/install
echo "Excuse me Sir,  did you said something?" > ~/jarvis_llama/confirmed.txt
echo "$(cat ~/jarvis_llama/confirmed.txt)" | ./piper --model ~/jarvis_llama/alan.onnx --output_file ~/jarvis_llama/piper/install/confirmed.wav
aplay confirmed.wav
