import processing.serial.*;
import ddf.minim.*; 

Serial myPort;          

Minim minim;
AudioSample GSharp;
AudioSample A;
AudioSample Bb;
AudioSample B;
AudioSample C;
AudioSample CSharp;
AudioSample D;
AudioSample Eb;
AudioSample E;
AudioSample F;
AudioSample FSharp;
AudioSample G;


void setup () {

  minim = new Minim(this);
  GSharp = minim.loadSample("GSharp.wav", 2048);
  A = minim.loadSample("A.wav", 2048);
  Bb = minim.loadSample("Bb.wav", 2048);
  B = minim.loadSample("B.wav", 2048);
  C = minim.loadSample("C.wav", 2048);
  CSharp = minim.loadSample("CSharp.wav", 2048);
  D = minim.loadSample("D.wav", 2048);
  Eb = minim.loadSample("Eb.wav", 2048);
  E = minim.loadSample("E.wav", 2048);
  F = minim.loadSample("F.wav", 2048);
  FSharp = minim.loadSample("FSharp.wav", 2048);
  G = minim.loadSample("G.wav", 2048);

  myPort = new Serial(this, Serial.list()[0], 9600);
  myPort.bufferUntil('\n');
}
void draw() {
}

void serialEvent (Serial myPort) {

  String bufferString = myPort.readStringUntil('\n');
  if (bufferString != null) {
    bufferString = trim(bufferString);
    int pulse = int(bufferString);
    println(pulse);

    if ( pulse < 5 ) {
        GSharp.trigger();
        delay(35);
      }
      else if ( pulse < 8 ) {
        A.trigger();
        delay(35);
      }
      else if ( pulse < 12 ) {
        Bb.trigger();
        delay(35);
      }
      else if ( pulse < 15 ) {
        B.trigger();
        delay(35);
      }
      else if ( pulse < 18 ) {
        C.trigger();
        delay(35);
      }
      else if ( pulse < 21 ) {
        CSharp.trigger();
        delay(35);
      }
      else if ( pulse < 24 ) {
        D.trigger();
        delay(35);
      }
      else if ( pulse < 27 ) {
        Eb.trigger();
        delay(35);
      }
      else if ( pulse < 30 ) {
        E.trigger();
        delay(35);
      }
      else if ( pulse < 33 ) {
        F.trigger();
        delay(35);
      }
      else if ( pulse < 36 ) {
        FSharp.trigger();
        delay(35);
      }
      else if ( pulse < 39 ) {
        G.trigger();
        delay(35);
      }
      else if ( pulse < 42 ) {
        E.trigger();
        delay(35);
      }
      else if ( pulse < 45 ) {
        F.trigger();
        delay(35);
      }
      else if ( pulse < 48 ) {
        FSharp.trigger();
        delay(35);
      }
      else if ( pulse < 51 ) {
        G.trigger();
        delay(35);
      }
    else if ( pulse > 70 ) {

    }

  } 

}

void stop(){
  minim.stop();
  super.stop();
}
