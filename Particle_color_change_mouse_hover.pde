//declare global variables
Bubble[] bubbles;
Bubble singleBubble;
int numBubbles = 100;//set the number of bubbles to make at 100

void setup() {
    size(500, 500);
    bubbles = new Bubble[numBubbles];//instantiate the custom bubbles object that will hold all the bubbles

    for(int i = 0; i < numBubbles; i++) {
        bubbles[i] = new Bubble(250, 100);//create the bubbles and add them into the arrau
    }
    singleBubble = new Bubble(250, 100);//create one bubble
}

void draw() {
    background(100);

    //move and display the one bubble
    //it will be colored red
    singleBubble.move();
    singleBubble.display(color(255,0,0));
    
    //create, move and display lots of bubbles colored white
    for(int i = 0; i < numBubbles; i++) {
        bubbles[i].move();
        bubbles[i].display(color(122,122,122)); //EDIT HERE!!!! change color when mouse is over
        
        
    }
}


class Bubble  {
    public float x,y;
    float xOff,yOff;

    Bubble(int x, int y) {
        x = 0;
        y = 0;
        xOff = random(0, 1000);
        yOff = random(0, 1000);
    }

    void move() {
        xOff += 0.01;
        yOff += 0.01;

        x = noise(xOff) * width;
        y = noise(yOff) * height;
    }

    void draw(){
        move();
    }

   void display(color c) {
        fill(c);
        circle(x, y, 5);
    }
}
