int incomingByte = 0;   // for incoming serial data
char data_byte;
String string;
void setup() {
        Serial.begin(115200);     // opens serial port, sets data rate to 9600 bps
}

void loop() {

        // send data only when you receive data:
        if (Serial.available() > 0) {
                // read the incoming byte:
                incomingByte = Serial.read();
                data_byte = incomingByte;
                Serial.print(data_byte);
        }
}
