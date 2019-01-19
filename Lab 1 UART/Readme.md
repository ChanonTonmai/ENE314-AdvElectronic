# Lab 1 Example: Push Button to Send "B" 

![blank diagram 6](https://user-images.githubusercontent.com/9088660/51425172-21df2180-1c0b-11e9-8234-7b4afa74a572.png)

As you know, when you hit the button, you will get the signal that has the bouncing state which cannot define which logic it is. Therefore, you need to clean that state using debouncing circuit. After that the signal will be shown as in the figure. The problem here is there are too long so we need only one clock. We use the edge detection circuit to create only one clock pulse signal. Finally this will be an enable signal to say that we want to send the data to the UART block. 

In the UART block, when it finish send one package of data, there are signal call tx_done to say that I am done and you can send a new data. This signal takes 2 clk period. 

## Lab 1 Exercise: Push Button to send "Hello World"
You need to use the prior code from Exercise folder and write your own code to send "Hello World". You need to take the advantage of tx_done signal which will tell you to send the next character. Notice that, the tx_done signal has 2 clk period but you need only 1 clk period. Therefore, the edge detection curcuit will help ypu for this. 

The result from this exercise is shown below. 
![blank diagram 7](https://user-images.githubusercontent.com/9088660/51425575-6b7e3b00-1c10-11e9-9b06-2f2db6bd6379.png)
