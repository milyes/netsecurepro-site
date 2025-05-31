# dzrouge_terminal.py

import time
import os
import pyfiglet
from termcolor import colored
from colorama import init

init()

def clear():
    os.system("clear" if os.name == "posix" else "cls")

def print_ascii_banner(text, color="red"):
    banner = pyfiglet.figlet_format(text)
    print(colored(banner, color))

def effet_clignotant(message, fois=5, delay=0.2):
    for _ in range(fois):
        print(colored(message, "red", attrs=["bold"]))
        time.sleep(delay)
        clear()
        time.sleep(delay)

def main():
    clear()
    print_ascii_banner("DZ ROUGE", color="red")
    effet_clignotant(">> DEMON IA ACTIVE <<", fois=6)

    print(colored("Bienvenue dans le Terminal du Démon Rouge IA !", "red", attrs=["bold"]))
    print(colored("Commande : exit pour quitter", "white"))
    
    while True:
        cmd = input(colored("DZ> ", "red"))
        if cmd.strip().lower() == "exit":
            print(colored("Extinction du démon...", "red"))
            break
        else:
            print(colored(f"Commande inconnue : {cmd}", "yellow"))

if __name__ == "__main__":
    main()
