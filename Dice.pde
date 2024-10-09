int total = 0;
Die bob;
 void setup()
  {
      size(400,400);
      
      noLoop();
  }
  void draw()
  {
    background(255);
      for(int x = 50; x <= 200; x+=75){
        for(int y = 50; y <= 200; y+=75){
         
          bob = new Die(x,y);
           
          bob.show();
          bob.roll();
           
        }
      }
      
      fill(0);
  text("Total: " +total,50,20);
  total = 0;
 
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int num, myX, myY;
     
      Die(int x, int y) //constructor
      {
          myX= x;
          myY = y;
          num = (int)(Math.random()*6)+1;
      }
      void roll()
      
      {
        fill(255);
            if(num == 1){
              ellipse(myX+35,myY+35,20,20);
              total+=1;
            }
            else if(num == 2){
              ellipse(myX+20,myY+35,20,20);
              ellipse(myX+50,myY+35,20,20);
              total+=2;
            }
            else if(num == 3){
              ellipse(myX+15,myY+15,20,20);
              ellipse(myX+35,myY+35,20,20);
              ellipse(myX+55,myY+55,20,20);
              total+=3;
            }
            else if(num == 4){
              ellipse(myX+15,myY+15,20,20);
              ellipse(myX+55,myY+15,20,20);
              ellipse(myX+15,myY+55,20,20);
              ellipse(myX+55,myY+55,20,20);
              total+=4;
            }
            else if(num == 5){
              ellipse(myX+15,myY+15,20,20);
              ellipse(myX+55,myY+15,20,20);
              ellipse(myX+15,myY+55,20,20);
              ellipse(myX+55,myY+55,20,20);
              ellipse(myX+35,myY+35,20,20);
              total+=5;
            }
            else if(num == 6){
              ellipse(myX+15,myY+15,20,20);
              ellipse(myX+55,myY+15,20,20);
              ellipse(myX+15,myY+55,20,20);
              ellipse(myX+55,myY+55,20,20);
              ellipse(myX+15,myY+35,20,20);
              ellipse(myX+55,myY+35,20,20);
              total+=6;
            }
          }
      void show()
      {
            fill(90);
            rect(myX, myY, 70,70);
           
      }
    }

