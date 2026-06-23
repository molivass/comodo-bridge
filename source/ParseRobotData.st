value := LWORD_TO_UINT(Robot_Out AND LWORD#16#3FF);
Robot_Positions[0] :=MapLREAL(value, 0.0, 1023.0, -230.0, 230.0);

shifted_input := SHR(Robot_Out, 10);
value := LWORD_TO_UINT(shifted_input AND LWORD#16#3FF);
Robot_Positions[1]:=MapLREAL(value, 0.0, 1023.0, -115.0, 113.0);

shifted_input := SHR(Robot_Out, 20);
value := LWORD_TO_UINT(shifted_input AND LWORD#16#3FF);
Robot_Positions[2]:=MapLREAL(value, 0.0, 1023.0, -205.0, 55.0);

shifted_input := SHR(Robot_Out, 30);
value := LWORD_TO_UINT(shifted_input AND LWORD#16#3FF);
Robot_Positions[3]:=MapLREAL(value, 0.0, 1023.0, -230.0, 230.0);

shifted_input := SHR(Robot_Out, 40);
value := LWORD_TO_UINT(shifted_input AND LWORD#16#3FF);
Robot_Positions[4]:=MapLREAL(value, 0.0, 1023.0, -125.0, 120.0);

shifted_input := SHR(Robot_Out, 50);
value := LWORD_TO_UINT(shifted_input AND LWORD#16#3FF);
Robot_Positions[5]:=MapLREAL(value, 0.0, 1023.0, -400.0, 400.0);