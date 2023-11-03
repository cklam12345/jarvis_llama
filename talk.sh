#!/bin/bash
cd ~/jarvis_llama/piper/install
echo "$(cat ~/jarvis_llama/out.txt)" | ./piper --model ~/jarvis_llama/jarvis.onnx --output_file ~/jarvis_llama/piper/install/welcome.wav
aplay welcome.wav
