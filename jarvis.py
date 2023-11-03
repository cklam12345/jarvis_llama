import speech_recognition as sr
import os
listener = sr.Recognizer()
import subprocess



def talk(text):
    subprocess.run(["~/jarvis_llama/talk.sh", text],shell=True) 
    



def take_command():
    f = open("mic.txt", "w")
    try:
        with sr.Microphone() as source:
            print('listening...')
            voice = listener.listen(source)
            command = listener.recognize_google(voice)
            if 'Jarvis' in command:
                subprocess.run(["~/jarvis_llama/confirm.sh"],shell=True)
                command = command.replace('Jarvis', '')
                print(command)
                f.write(command)
            else:
                subprocess.run(["~/jarvis_llama/yousaidsomething.sh"],shell=True)
        f.close
    except:
        pass


def run_jarvis():
    take_command()
    if os.stat("mic.txt").st_size == 0:
        print('request is empty')
    else:
        print('request is not empty')
        #talk("~/jarvis_llama/mic.txt")
        subprocess.run(["~/jarvis_llama/runtest.sh"],shell=True) 
        subprocess.run(["~/jarvis_llama/talk.sh"],shell=True) 
        #talk("~/jarvis_llama/out.txt") 


#while True:
run_jarvis()
