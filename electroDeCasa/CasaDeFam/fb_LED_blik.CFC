FUNCTION_BLOCK fb_LED_blik
  VAR_INPUT
    InButton : BOOL; //signal od tlacitka
    InLight : BOOL;  //stav svetla ktere tlacitko ovlada
    InTimeOfBlic : TIME; //cas bliknuti pro zelenou i cervenou
  END_VAR
  VAR_OUTPUT
    OutLED_Green : BOOL; //zelena LEDka
    OutLED_Red : BOOL; //cervena LEDka
  END_VAR
  VAR_IN_OUT
  END_VAR
  VAR
    delay1 : TP;
    delay2 : TP;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="pokus.xsl" version="1.1"?>
<fbd version="1.1">
<comment id="1" height="3" width="12">
  <position x="2" y="2" />
ovladání bliknutí ledky na logus tlačítku
</comment>
<block name="TP" instance="delay1" id="2" height="6" width="6" line="21" order="6">
  <position x="53" y="20" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="4" name="AND">
        <position x="53" y="23" />
        <position x="50" y="23" />
        <position x="50" y="23" />
        <position x="49" y="23" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="12">
        <position x="53" y="25" />
        <position x="51" y="25" />
        <position x="51" y="27" />
        <position x="51" y="27" />
      </connection>
    <comment>předvolba časovače</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    <comment>výstup časovače</comment>
    </variable>
    <variable name="ET" type="TIME">
    <comment>aktuální hodnota časovače</comment>
    </variable>
  </outVariables>
</block>
<inVariable name="InTimeOfBlic" type="TIME" id="3">
  <position x="22" y="26" />
  <comment>
cas bliknuti pro zelenou i cervenou  </comment>
</inVariable>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="4" height="4" width="4" line="19" order="5">
  <position x="45" y="22" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="10">
        <position x="45" y="23" />
        <position x="40" y="23" />
        <position x="40" y="23" />
        <position x="37" y="23" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="11">
        <position x="45" y="25" />
        <position x="39" y="25" />
        <position x="39" y="25" />
        <position x="35" y="25" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="AND" type="ANY_BIT">
    <comment>Bitwise AND
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<block name="TP" instance="delay2" id="5" height="6" width="6" line="15" order="3">
  <position x="53" y="32" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="6" name="AND">
        <position x="53" y="35" />
        <position x="50" y="35" />
        <position x="50" y="35" />
        <position x="49" y="35" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="12">
        <position x="53" y="37" />
        <position x="51" y="37" />
        <position x="51" y="27" />
        <position x="51" y="27" />
      </connection>
    <comment>předvolba časovače</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    <comment>výstup časovače</comment>
    </variable>
    <variable name="ET" type="TIME">
    <comment>aktuální hodnota časovače</comment>
    </variable>
  </outVariables>
</block>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="6" height="4" width="4" line="11" order="2">
  <position x="45" y="34" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="10">
        <position x="45" y="35" />
        <position x="37" y="35" />
        <position x="37" y="23" />
        <position x="37" y="23" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="7" name="NOT">
        <position x="45" y="37" />
        <position x="43" y="37" />
        <position x="43" y="37" />
        <position x="42" y="37" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="AND" type="ANY_BIT">
    <comment>Bitwise AND
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<block name="NOT" instance="" function="true" hiddenPins="true" operator="true" id="7" height="2" width="4" line="8" order="1">
  <position x="38" y="36" />
  <inVariables>
    <variable name="" type="ANY_BIT">
      <connection refid="11">
        <position x="38" y="37" />
        <position x="35" y="37" />
        <position x="35" y="25" />
        <position x="35" y="25" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="NOT" type="ANY_BIT">
    <comment>Bitwise complement
	inverts each bit
</comment>
    </variable>
  </outVariables>
</block>
<inVariable name="InButton" type="BOOL" id="8">
  <position x="22" y="22" />
  <comment>
signal od tlacitka  </comment>
</inVariable>
<inVariable name="InLight" type="BOOL" id="9">
  <position x="22" y="24" />
  <comment>
stav svetla ktere tlacitko ovlada  </comment>
</inVariable>
<node id="10">
  <position x="37" y="23" />
  <connection refid="8">
    <position x="37" y="23" />
    <position x="32" y="23" />
    <position x="32" y="23" />
    <position x="30" y="23" />
  </connection>
</node>
<node id="11">
  <position x="35" y="25" />
  <connection refid="9">
    <position x="35" y="25" />
    <position x="30" y="25" />
    <position x="30" y="25" />
    <position x="28" y="25" />
  </connection>
</node>
<node id="12">
  <position x="51" y="27" />
  <connection refid="3">
    <position x="51" y="27" />
    <position x="42" y="27" />
    <position x="42" y="27" />
    <position x="32" y="27" />
  </connection>
</node>
<outVariable name="OutLED_Green" type="BOOL" id="13" order="4">
  <position x="63" y="34" />
  <comment>
zelena LEDka  </comment>
  <connection refid="5" name="Q">
    <position x="64" y="35" />
    <position x="61" y="35" />
    <position x="61" y="35" />
    <position x="59" y="35" />
  </connection>
</outVariable>
<outVariable name="OutLED_Red" type="BOOL" id="14" order="7">
  <position x="65" y="22" />
  <comment>
cervena LEDka  </comment>
  <connection refid="2" name="Q">
    <position x="66" y="23" />
    <position x="60" y="23" />
    <position x="60" y="23" />
    <position x="59" y="23" />
  </connection>
</outVariable>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
(* 163	*)	_Nod_Tmp_6	:	BOOL;
(* 172	*)	_Nod_Tmp_5	:	BOOL;
(* 104	*)	_Fun_Tmp_IN2_3_2	:	BOOL;
(* 181	*)	_Nod_Tmp_2	:	TIME;
END_VAR

//NC
//N000
(* 153	*)	LD 	InButton
(* 163	*)	ST	_Nod_Tmp_6
(* 158	*)	LD 	InLight
(* 172	*)	ST	_Nod_Tmp_5
(* 137	*)	LD 	_Nod_Tmp_5
(* 133	*)	NOT
(* 116	*)	ST 	_Fun_Tmp_IN2_3_2
(* 108	*)	LD 	_Nod_Tmp_6
(* 116	*)	AND 	_Fun_Tmp_IN2_3_2
(*  73	*)	ST 	delay2.IN
(*  39	*)	LD 	InTimeOfBlic
(* 181	*)	ST	_Nod_Tmp_2
(*  73	*)	CAL	delay2(PT:=_Nod_Tmp_2)
(*  73	*)	LD 	delay2.Q
(* 190	*)	ST 	OutLED_Green
(*  48	*)	LD 	_Nod_Tmp_6
(*  56	*)	AND 	_Nod_Tmp_5
(*   8	*)	ST 	delay1.IN
(*   8	*)	CAL	delay1(PT:=_Nod_Tmp_2)
(*   8	*)	LD 	delay1.Q
(* 201	*)	ST 	OutLED_Red

END_FUNCTION_BLOCK
