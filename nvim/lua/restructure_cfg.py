import os
import shutil
from pathlib import Path

PARENT_DIR = Path(__file__).parent

exclude = ["config"]

def move(old, new):
    content = None
    with open(old, "rb") as old_f:
        content = old_f.read()

    with open(new, "wb") as new_f:
        new_f.write(content)

def main():
    for directory in os.listdir(PARENT_DIR):
        full_path = PARENT_DIR / directory

        if (not os.path.isdir(full_path)) or (directory in exclude):
            continue

        new_name = f"{PARENT_DIR}/config/{directory.rstrip("-config")}.lua"

        move(full_path / "init.lua", new_name)
        shutil.rmtree(full_path)

if __name__ == "__main__":
    main()
