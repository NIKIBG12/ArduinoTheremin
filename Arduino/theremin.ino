#include <NewPing.h>


#define trigPin  5  
#define echoPin  3  
#define maxDistance 50 

NewPing sonar(trigPin, echoPin, maxDistance);

void setup() {  
  Serial.begin(9600);
} 


void loop() {
  unsigned int ping = sonar.ping();
  delay(10);
  if ( ping / US_ROUNDTRIP_CM > 0)
  {
  Serial.println(ping / US_ROUNDTRIP_CM);
  }
  delay(50);
}
