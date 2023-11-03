#!/bin/bash
cd ~/jarvis_llama/piper/install
echo "Excuse me Sir,  I am working on it" > ~/jarvis_llama/confirmed.txt
echo "$(cat ~/jarvis_llama/confirmed.txt)" | ./piper --model ~/jarvis_llama/alan.onnx --output_file ~/jarvis_llama/piper/install/confirmed.wav
aplay confirmed.wav
