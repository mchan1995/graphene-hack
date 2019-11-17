int channel_1 = 10;
int channel_2 = 9;
int channel_3 = 6;

unsigned long current_time = 0;

int freqms = 1;

int raw = 0;
int Vin = 3.3;
float Vout = 0;
float R1 = 100000;
float R2 = 0;
float buffer = 0;

void setup()
{
Serial.begin(9600);
}

void loop()
{

current_time = millis();
Serial.print(current_time);
Serial.print(",");
 
raw = analogRead(channel_1);
buffer = raw * Vin;
Vout = (buffer)/1024.0;
buffer = (Vin/Vout)-1;
R2 = R1 * buffer;
Serial.print(R2);
Serial.print(",");

raw = analogRead(channel_2);
buffer = raw * Vin;
Vout = (buffer)/1024.0;
buffer = (Vin/Vout)-1;
R2 = R1 * buffer;
Serial.print(R2);
Serial.print(",");

raw = analogRead(channel_3);
buffer = raw * Vin;
Vout = (buffer)/1024.0;
buffer = (Vin/Vout)-1;
R2 = R1 * buffer;
Serial.println(R2);

delay(freqms);

}
