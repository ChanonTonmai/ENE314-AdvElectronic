import serial
with serial.Serial('COM20', 115200, timeout=None) as ser:
    while(1):
        x = ser.read(2)
        #decRec = (x[0]&0x1f) | (x[1]&0x1f)<<5
        a = (int.from_bytes(x,byteorder='big'))
        #print(a)
        print(float(a)*0.0001875)

