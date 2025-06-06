import time
import platform
import getpass
import random

def log(msg):
    print(f"[✓] {msg}")
    time.sleep(random.uniform(0.5, 1.1))

def simulate_tasks():
    tasks = [
        "Scanning for Respondus processes...",
        "Killing suspicious services...",
        "Injecting anti-detection script...",
        "Overriding webcam feed...",
        "Simulating mouse and keyboard activity...",
        "Emulating screen size validation...",
        "Faking network throttling...",
        "Bypassing fullscreen enforcement...",
        "Disabling screenshot detection...",
        "Injecting encrypted dummy data to memory..."
    ]
    for task in tasks:
        log(task)

def simulate_bypass():
    log("Welcome to ProctorBypass CLI Tool v2.0 (Simulation Only)")
    log(f"OS Detected: {platform.system()} {platform.release()}")
    log(f"Logged in as: {getpass.getuser()}")
    log("Environment setup complete. Beginning bypass sequence...\n")
    simulate_tasks()
    log("\n[✔] Simulation complete. No real actions were performed.")
    log("This tool is for educational UI/UX demo purposes only.")

if __name__ == "__main__":
    simulate_bypass()
