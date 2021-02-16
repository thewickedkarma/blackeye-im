a_file = open("blackeye-arch.sh", "r")
lines = a_file.readlines()
a_file.close()

new_file = open("blackeye-arch.sh", "w")
for line in lines:
    if line.strip("\n") != "dependencies":
    	new_file.write(line)

new_file.close()
