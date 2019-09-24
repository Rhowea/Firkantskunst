void setup(){
  size(1000, 1000, P3D); //I dette projekt bruges P3D for at kunne bruge spotLight-funktionen, som giver den 'gradient' i farverne på firkanterne. Dette gør den lidt langsommere at loade, men oh well...
  background(0); //Baggrunden er sort som min sjæl
}

int nSq = 10; //nSq = Number of Squares
float wiggle = 0; // En værdi der gør at firkanterne vibrerer. Ind til videre er den bare 0, da den tilgives en tilfældig værdi senere.
void draw(){
  clear();
  ambientLight(50, 50, 50); //ambientLight gør at man kan se hvad der sker, ellers ville firkanterne uden for lyset være helt mørke
  spotLight(255, 255, 255, 750, 750, 6000, 0, 0, -1, PI, 600); //Dette er et spotlight der lyser nederst til højre på alle firkanterne. Fordi den er cirkel-formet giver det en flot gradient på alle de andre firkanter
  fill(255, 255, 0); //Firkanternes gule farve
  for(int x = nSq; x > 0; x--){ // denne for-funktion checker hvor mange rækker der skal laves ved at kigge på nSq.
    for(int y = nSq; y > 0; y--){ // Hernæst checkes hvor mange kolonner der skal laves. Dette gøres også ved at kigge på nSq
      square(50 * x + 200 + wiggle, 50 * y + 200 + wiggle, 50); // Dette ville sige at der laves en firkant i den første kolonne og første række med sin position forskudt af 'wiggle'. Hernæst første kolonne anden række, og så videre, indtil der bliver lavet 100 firkanter.
      wiggle = random(0, 5); //Wiggle får en ny værdi ver gang en firkant bliver tegnet, så det ikke bare ligner at alle firkanter vibrerer.
    }
  }
}
