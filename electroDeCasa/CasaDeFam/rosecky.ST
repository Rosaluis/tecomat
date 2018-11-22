

FUNCTION_BLOCK fb_off_SvKoupelna1
(*Vypnuti vsech svetel v koupelne1*)
  VAR_INPUT
    in               : bool;  (*vstup od tlaèítka*)
    sig0              : bool;  (*vstup stavu svetla 0*)
    sig1              : bool;  (*vstup stavu svetla 1*)
    sig2              : bool;  (*vstup stavu svetla 2*)
  END_VAR
  VAR_OUTPUT
    out              : bool;  (*in := out*)
    sOff0              : bool;  (*vystup 0*)
    sOff1              : bool;  (*vystup 1*)
    sOff2              : bool;  (*vystup 2*)
  END_VAR
  VAR
  END_VAR

  IF in THEN
     IF sig0 THEN sOff0 := FALSE; ELSE sOff0 := FALSE; END_IF;
     IF sig1 THEN sOff1 := FALSE; ELSE sOff1 := FALSE; END_IF;
     IF sig2 THEN sOff2 := FALSE; ELSE sOff2 := FALSE; END_IF;
  ELSE
      sOff0 := sig0;
      sOff1 := sig1;
      sOff2 := sig2;
  END_IF;
  out := in;
END_FUNCTION_BLOCK

FUNCTION_BLOCK fb_blikLED
(*Bliknuti zelene/cervene LEDky pri rozsviceni-zelena, zhasnuti-cervena*)
  VAR_INPUT
    in  : BOOL;  //jen prochazi
    sig : BOOL;  //signal tlacitka na ktery se reaguje
    state : BOOL; //do jakeho stavu se ma svetlo dostat!!!
    time1  : TIME := T#1s; //delka bliknuti
  END_VAR
  VAR_OUTPUT
    out     : BOOL; //jen pruchozi
    ZLed    : BOOL := FALSE; //vystup na zelenou LED
    CLed    : BOOL := FALSE; //vystup na cervenou LED
  END_VAR
  VAR
    timerTOF : TOF; //casovac
    pom      : BOOL := FALSE; //pomocna promenna
  END_VAR
    out := in;  //pruchod siloveho signalu ke svetlu
    timerTOF(IN := sig, PT := time1, Q => pom);
    IF state = TRUE THEN //pokud svetlo ma rozsvitit -> signal k rozsviceni jiz prosel
       ZLed := pom;
       CLed := FALSE;
    ELSE                 //jinak...
       CLed := pom;
       ZLed := FALSE;
    END_IF;
END_FUNCTION_BLOCK



// *********************************************************************************************************************
FUNCTION_BLOCK fb_kmitac
(*Blikani - Graficky to je na vykresu ovladani venkovnich svetel*)
  VAR_INPUT
    sig_IN : BOOL;  // spousteci signal
    time_ON  : TIME := T#1s; //delka sviceni
    time_OFF  : TIME := T#1s; //delka nesviceni
  END_VAR
  VAR_OUTPUT
    sig_OUT    : BOOL := FALSE; //vystup
  END_VAR
  VAR
    timerTON1 : TON; //casovac TON1
    timerTON2 : TON;  //casovac TON2
    pom      : BOOL := FALSE; //pomocna promenna
    pom2      : BOOL := FALSE; //pomocna promenna
    pom3      : BOOL := FALSE; //pomocna promenna
  END_VAR
    timerTON1(IN := pom, PT := time_ON, Q => pom2);
    timerTON2(IN := pom3, PT := time_OFF, Q => pom);
    // OUT := IN1 XOR IN2;
    pom3 := sig_IN XOR POM2;
    sig_OUT := pom;
END_FUNCTION_BLOCK
// *********************************************************************************************************************



// *********************************************************************************************************************
FUNCTION_BLOCK fb_cas_spinac
(*prepinac sasu*)
  VAR_INPUT
    time_IN1  : TIME; //vstupni cas
    sig_IN : BOOL;  // spousteci signal
  END_VAR
  VAR_OUTPUT
    time_OUT  : TIME; //vystupni cas
  END_VAR
  VAR

  END_VAR
    IF sig_IN = TRUE THEN
      time_OUT := time_IN1;
    END_IF;
END_FUNCTION_BLOCK
// *********************************************************************************************************************



// *********************************************************************************************************************
FUNCTION_BLOCK fb_cas_prepinac
(*prepinac sasu*)
  VAR_INPUT
    IN3 : BOOL;
    IN2 : BOOL;
    IN1 : BOOL;
    time3  : TIME; //vstupni cas 3
    time2  : TIME; //vstupni cas 2
    time1  : TIME; //vstupni cas
  END_VAR
  VAR_OUTPUT
    time_OUT  : TIME := T#0s; //vystupni cas
    OUT_RUN : BOOL := 0;
  END_VAR
  VAR

  END_VAR
   IF (IN1 AND IN2=FALSE AND IN3=FALSE) THEN time_OUT := time1;
   ELSIF (IN1 AND IN2 AND IN3=FALSE) THEN time_OUT := time2;
   ELSIF (IN1 AND IN2 AND IN3) THEN time_OUT := time3;
   END_IF;

END_FUNCTION_BLOCK
// *********************************************************************************************************************


// *********************************************************************************************************************
FUNCTION_BLOCK fb_B
VAR_INPUT
END_VAR
VAR_OUTPUT
  out : BOOL;
END_VAR
VAR
END_VAR
  out := TRUE;
END_FUNCTION_BLOCK
// *********************************************************************************************************************

FUNCTION_BLOCK fb_zhasni
  VAR_INPUT
    inButton : BOOL; //signal treba od zhaseciho tlacitka
  END_VAR
  VAR_OUTPUT
    outLight1 : BOOL; //vystup ke svetlu
    outLight2 : BOOL; //vystup ke svetlu
    outLight3 : BOOL; //vystup ke svetlu
    outLight4 : BOOL; //vystup ke svetlu
    outLight5 : BOOL; //vystup ke svetlu
  END_VAR
  VAR
  END_VAR
    IF inButton = TRUE THEN
      outLight1 := FALSE;
      outLight2 := FALSE;
      outLight3 := FALSE;
      outLight4 := FALSE;
      outLight5 := FALSE;
    END_IF;
END_FUNCTION_BLOCK

FUNCTION_BLOCK fb_on_SvKoupelna1
(*Vypnuti vsech svetel v koupelne1*)
  VAR_INPUT
    in               : bool;  (*vstup od tlaèítka*)
    sig0              : bool;  (*vstup stavu svetla 0*)
    sig1              : bool;  (*vstup stavu svetla 1*)
    sig2              : bool;  (*vstup stavu svetla 2*)
  END_VAR
  VAR_OUTPUT
    out              : bool;  (*in := out*)
    sOff0              : bool;  (*vystup 0*)
    sOff1              : bool;  (*vystup 1*)
    sOff2              : bool;  (*vystup 2*)
  END_VAR
  VAR
  END_VAR

  IF in THEN
     IF sig0 THEN sOff0 := TRUE; ELSE sOff0 := TRUE; END_IF;
     IF sig1 THEN sOff1 := TRUE; ELSE sOff1 := TRUE; END_IF;
     IF sig2 THEN sOff2 := TRUE; ELSE sOff2 := TRUE; END_IF;
  ELSE
      sOff0 := sig0;
      sOff1 := sig1;
      sOff2 := sig2;
  END_IF;
  out := in;
END_FUNCTION_BLOCK



