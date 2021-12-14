#!python3

i_file = open("output.txt", 'r')
text = i_file.readlines()
i_file.close()

for idx in range(len(text)):
    text[idx] = int(text[idx])

with open('myfile.raw', 'wb') as w:
    for idx in range(len(text)):
        w.write(text[idx].to_bytes(1,"little"))
