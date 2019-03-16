unsigned int i,i2;
void setup() {
        Serial.begin(115200, SERIAL_8N1);      //opens serial port, sets data rate to 9600 bps
        i = 0;
        i2 = 0;
        delay(500);
}

void loop() {
        while(1) {
               if(Serial.available() > 0) {   
                i = Serial.read();
                i2 = Serial.read();
               }
                int a = (unsigned int)i2*256 + (unsigned int)i;
                double b = double(a) * 0.0001875 ;
                Serial.println(b);
                delay(10);
        }
}
