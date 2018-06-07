# Planner

Planner is a tool to be used to keep track of events inputted into your computer. It stores 7 events but can be used again and again once one has no need for the original 7. The idea behind this project was for one to be able to use a simple program to organize ones schedule. This is similar to a calendar or a physical planner, but unlike either of those this one can be opened with a click of a button and allows free reign to the user with inputing data.

### Difficulties or opportunities you encountered along the way.

The largest difficulty was dispaying only one item of data at a certain reigon while displaying others at a completely different region. I ran into many problems of outputting every data item or no data items. In the end, I was able to split the process into two parts: 
1) displays the data that one inputs right away 
2) displays data one already inputted
By doing this I was able to decide where to display each piece of data at a different location as it was needed.

### Most interesting piece of your code and explanation for what it does.

  if (count>0) {
    int x0123=260;
    int y04=200;
    int y15=383;
    int y26=565;
    int y3=748;
    int x456=710;

    for (int i=count-1; i>=0; i--) {
      String tS4=myList4.get(i);
      if (i==6) {
        text(tS4, x456, y26);
      }
      if (i==5) {
        text(tS4, x456, y15);
      }
      if (i==4) {
        text(tS4, x456, y04);
      }
      if (i==3) {
        text(tS4, x0123, y3);
      }
      if (i==2) {
        text(tS4, x0123, y26);
      }
      if (i==1) {
        text(tS4, x0123, y15);
      }
      if (i==0) {
        text(tS4, x0123, y04);
      }
    }
  }
  text(s4, x, y); //Printed text
}

This uses the count variable to see what is inputted into the ArrayList and then displays the data stored at that specidic index while checking to see where it should go with the use of previous data (X and Y coordinate data) in the changeX() and changeY() methods. In short, It goes backwards from whatever the count variable is (count == the # of event that is currently being inputted), and displays what the previous events were. By using what the count was at I was able determine what should be displayed, only displaying data that is before the current count # otherwise known as the event #.

## Built With

* [Processing](https://processing.org/) - The IDE used

## Author

Carter Johnson

## Acknowledgments

My 2017-2018 planner and faulty organization skills for inspiration

Dr. Reinarts - code help with inputing text and general logic

Danny Cox - Unrestrictedly telling me that a class would never work for my idea--saved me many hours of work
