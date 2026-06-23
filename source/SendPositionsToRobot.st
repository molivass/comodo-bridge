Robot_Positions[0] := Out_Joint_1;
Robot_Positions[1] := Out_Joint_2;
Robot_Positions[2] := Out_Joint_3;
Robot_Positions[3] := Out_Joint_4;
Robot_Positions[4] := Out_Joint_5;
Robot_Positions[5] := Out_Joint_6;

Temp_Output := 16#0;

Temp_Bits := LREAL_TO_LWORD(MapLREAL(Robot_Positions[0], -230.0, 230.0, 0.0, 1023.0));
Temp_Output := Temp_Output OR Temp_Bits;


Temp_Bits := LREAL_TO_LWORD(MapLREAL(Robot_Positions[1], -115.0, 113.0, 0.0, 1023.0));
Shifted_Bits := SHL(Temp_Bits, 10);
Temp_Output := Temp_Output OR Shifted_Bits;


Temp_Bits := LREAL_TO_LWORD(MapLREAL(Robot_Positions[2], -205.0, 55.0, 0.0, 1023.0));
Shifted_Bits := SHL(Temp_Bits, 20);
Temp_Output := Temp_Output OR Shifted_Bits;


Temp_Bits := LREAL_TO_LWORD(MapLREAL(Robot_Positions[3], -230.0, 230.0, 0.0, 1023.0));
Shifted_Bits := SHL(Temp_Bits, 30);
Temp_Output := Temp_Output OR Shifted_Bits;


Temp_Bits := LREAL_TO_LWORD(MapLREAL(Robot_Positions[4], -125.0, 120.0, 0.0, 1023.0));
Shifted_Bits := SHL(Temp_Bits, 40);
Temp_Output := Temp_Output OR Shifted_Bits;


Temp_Bits := LREAL_TO_LWORD(MapLREAL(Robot_Positions[5], -400.0, 400.0, 0.0, 1023.0));
Shifted_Bits := SHL(Temp_Bits, 50);
Temp_Output := Temp_Output OR Shifted_Bits;

IF Is_Monitoring THEN 
		Temp_Output := Temp_Output OR Monitor_Bit;
ELSE
		Temp_Output := Temp_Output AND (NOT Monitor_Bit);
END_IF;

IF Is_Moving_Linear THEN
		Temp_Output := Temp_Output OR Movement_Bit;
ELSE
		Temp_Output := Temp_Output AND (NOT Movement_Bit);
END_IF;

Robot_In := Temp_Output;