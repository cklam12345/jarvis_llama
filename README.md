## Jarvis Llama
## to install , please git clone this repo to your home directory (~/)

pip3 install SpeechRecognition

git clone https://github.com/cklam12345/jarvis_llama.git

cd ~/jarvis_llama

## Download the model from huggingface

download https://huggingface.co/cklam12345/jarvis_llama/blob/main/jarvis.gguf 

mv ~/Downloads/jarvis.gguf .

## to compile

make
## to compile jarvis tts

cd piper

make

## to run

cd ~/jarvis_llama

python3 jarvis.py
