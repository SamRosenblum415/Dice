Die firstDie;

void setup()
  {
    size(380,380);   
    noLoop();
    
 
  }
  void draw()
  {
   int sum = 0;
       background(#F53434);
       for(int y = 50; y < 350; y+=100)
       {
         for(int x = 50; x < 350; x+=100)
         {
         firstDie = new Die(x,y);
         firstDie.show();
          sum = firstDie.numDots + sum;
       
         }
        
        
       }
         textSize(50);
         text("Total Dots: "+sum, 20, 370);
       
       //your code here
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
int myX, myY, numDots;
      
      Die(int x, int y) //constructor
      {
          roll();
          myX = x;
          myY = y;
          //variable initializations here
      }
      void roll()
      {
        numDots = (int)(Math.random()*6+1);  
        
        //your code here
      }
      void show()
      {
       
fill(#FFFFFF);

        rect(myX, myY, 60, 60, 7); 
        fill(0);
        if(numDots == 1){
          ellipse(myX+30, myY+30,7,7);
         
        }
        if(numDots == 2){
           ellipse(myX+20, myY+20,7,7);
            ellipse(myX+40, myY+40,7,7);
       
        }
        if(numDots == 3){
             ellipse(myX+20, myY+20,7,7);
            ellipse(myX+40, myY+40,7,7);
            ellipse(myX+30, myY+30,7,7);
            
      }
      
      if (numDots == 4){
         ellipse(myX+20, myY+20,7,7);
        ellipse(myX+40, myY+40,7,7);
         ellipse(myX+40, myY+20,7,7);
        ellipse(myX+20, myY+40,7,7);
    
      }
      
      if (numDots ==5){
        ellipse(myX+20, myY+20,7,7);
        ellipse(myX+40, myY+40,7,7);
         ellipse(myX+40, myY+20,7,7);
        ellipse(myX+20, myY+40,7,7);
         ellipse(myX+30, myY+30,7,7);
         
      }
      
      if (numDots==6){
         ellipse(myX+20, myY+20,7,7);
        ellipse(myX+40, myY+40,7,7);
         ellipse(myX+40, myY+20,7,7);
        ellipse(myX+20, myY+40,7,7);
         ellipse(myX+40, myY+30,7,7);
        ellipse(myX+20, myY+30,7,7);
        
      }
        //your code here
      }
  }
