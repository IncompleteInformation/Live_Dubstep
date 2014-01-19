import time

w=open("file.txt",'w')
for i in range(1000):
	w.write(str(time.clock())+'\n')

w.close()