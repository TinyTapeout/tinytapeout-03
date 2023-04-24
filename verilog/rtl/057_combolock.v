// Code your design here

module BenAtUvu_combo(
  //input [3:0] Intput, 
  //input reset, masterReset, 
  //output reg Unlock = 0
  input [7:0] io_in,
  output [7:0] io_out
);


  reg [3:0] Intput;
  wire [3:0] keypadIn;
  reg [3:0] scan;
  wire clk = io_in[6];
  wire reset = io_in[4];
  wire masterReset = io_in[5];
  reg Unlock;
  reg zero;
  reg [3:0] zeroSum = 0;
  assign io_out[3:0] = scan;
  assign io_out[4] = Unlock;
  assign keypadIn = io_in[3:0];

  always@(posedge clk) begin
    zero = 1;
    if(scan == 4'b0001)
      scan = 4'b0010;
    else if(scan == 4'b0010)
      scan = 4'b0100;
    else if(scan == 4'b0100)
      scan = 4'b1000;
    else
      scan = 4'b0001;
    
    
    if(scan == 4'b0001)begin
      
    if(keypadIn ==4'b0001)
        Intput = 1;
    else if(keypadIn ==4'b0010)
        Intput = 2;
    else if(keypadIn ==4'b0100)
        Intput = 3;
    else if(keypadIn ==4'b1000)
        Intput = 4;
    else
      zero = 0;
    end
    
    if(scan == 4'b0010) begin
    if(keypadIn ==4'b0001)begin
      Intput = 5;
      zero = 1;
    end
    else if(keypadIn ==4'b0010)begin
      Intput = 6;
      zero = 1;
    end
    else if(keypadIn ==4'b0100)begin
      Intput = 7;
      zero =1;
    end
    else if(keypadIn ==4'b1000) begin
      Intput = 8;
      zero =1;
    end
    else
        zero = 0;
    end
       
    if(scan == 4'b0100)begin
    if(keypadIn ==4'b0001)begin
      Intput = 9;
      zero =1;
    end
    else if(keypadIn ==4'b0010)begin
      Intput = 10;
      zero= 1;
    end
    else if(keypadIn ==4'b0100)begin
      Intput = 11;
      zero = 1;
    end
    else if(keypadIn ==4'b1000)begin
      Intput = 12;
      zero = 1;
    end
    else
        zero = 0;
    end
       
    if(scan == 4'b1000)begin
    if(keypadIn ==4'b0001)begin
      Intput = 13;
      zero = 1;
    end
    else if(keypadIn ==4'b0010)begin
      Intput = 14;
      zero =1;
    end
    else if(keypadIn ==4'b0100)begin
      Intput = 15;
      zero =1;
    end
    else if(keypadIn ==4'b1000)begin
      Intput = 1;
      zero = 1;
    end
    else
        zero = 0;
    
    end
    
    
    if(zero == 0)
      zeroSum = zeroSum + 1;
    else
      zeroSum = 0;
    
    if(zeroSum == 4)begin
      Intput = 0;
      zeroSum = 0;
    end
    
  end
    
  // in this module 4 bits are used to represent 0-9 BUT 0 if not represented with 0000

  //locks is used for the combo lock1 is the first button that neededs to be pressed then lock2 is the second button
  reg [3:0] lock1 = 0;
  reg [3:0] lock2 = 0;
  reg [3:0] lock3 = 0;
  reg [3:0] lock4 = 0;
  reg [3:0] keys = 0;

  reg inputHasChanged = 1;
  always @ (Intput or reset or masterReset)begin
    // this is for the master reset to reset the combo
    if(masterReset == 1)begin
      lock1 = 0;
      lock2 = 0;
      lock3 = 0;
      lock4 = 0;
      keys = 0;
    end
      
    //this if statement makes sure the input is not nothing. the zero button would be 0001 not 0000.
    if(Intput != 0) begin
      //this makes sure the input has changed. this means an input of xxxx then 0000 then xxxx has been recieved
      if(inputHasChanged == 1) begin
        //these if statement make sure that the locks have no value in them so input can be stored in them
        if(lock1 == 0)
          lock1 = Intput;
        else if(lock2 == 0)
          lock2 = Intput;
        else if(lock3 == 0)
          lock3 = Intput;
        else if(lock4 == 0)
          lock4 = Intput;
        //this else state makes sure that the combo is set before it starts checking if the combo has been entered
        else begin

          // this check thats the first number of the combo hasn't been pressed
          if( keys[0] == 0)begin
            //this if statement checks if the first number of the combo has been presed else reset 
            if(Intput == lock1)
              keys[0] = 1;
            else
              keys = 0;
          end

                    // this check thats the first number of the combo has been pressed and the second number hasn't
          else if(keys[0] == 1 && keys[1] == 0)begin
            if(Intput == lock2)
              keys[1] = 1;
            else
              keys = 0;
          end

                              // this check thats the second number of the combo has been pressed and the third number hasn't
          else if(keys[1] == 1 && keys[2] == 0)begin
            if(Intput == lock3)
              keys[2] = 1;
            else
              keys = 0;
          end

                              // this check thats the third number of the combo has been pressed and the fourth number hasn't
          else if(keys[2] == 1 && keys[3] == 0)begin
            if(Intput == lock4)
              keys[3] = 1;
            else
              keys = 0;
          end
          else
            keys = 0;
        end
		

        
      end
      inputHasChanged = 0;
    end
    
    // if the input returns to 0 (nothing) then the input has changed
    if(Intput == 0) begin
      inputHasChanged = 1;
    end
    //this if statemnet checks if the it is "unlock" and reset is pressed then it lets you enter a new combo
          if (reset == 1 && keys == 15)begin
          lock1 = 0;
          lock2 = 0;
          lock3 = 0;
          lock4 = 0;
          keys = 0;
          end
    // if ever number of the combo has been pressed then set unlock to 1
    if(keys == 15)
      Unlock = 1;
    else
      Unlock = 0;
  end
  
endmodule
