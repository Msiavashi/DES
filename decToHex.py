with open("perm2.data") as f:
    lines = f.readlines();
    with open("perm2Hex.data", "w") as hf:
        for i in lines:
            hf.write(str(hex(int(i)).split('x')[-1]) + "\n")
