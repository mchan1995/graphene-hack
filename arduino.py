import serial
import time

runtime = 60  # seconds
baud_rate = 9600
filepath = 'output.txt'

arduino = serial.Serial('/dev/cu.usbmodem144101', baud_rate, timeout=0.1)

filehandle = open(filepath, 'w+')

end = time.time() + runtime
while time.time() < end:
    line = arduino.readline();
    line = line.decode('utf-8')
    filehandle.write(line.rstrip()+'\r')
filehandle.close()
arduino.close()
