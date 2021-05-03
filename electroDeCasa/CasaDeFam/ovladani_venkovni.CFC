PROGRAM ovladani_venkovni
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    trigVenk1 : R_TRIG;
    trigVenk2 : R_TRIG;
    timeVenk1 : TP;
    timeVenk2 : TP;
    out_zadveri : BOOL;
    trigVenk3 : R_TRIG;
    TP_kmitac : TP;
    TP_1 : TP;
    kmit1 : fb_kmitac;
    kmit2 : fb_kmitac;
    TON_test1 : TON;
    TON_test2 : TON;
    CTU_test1 : CTU;
    ton1 : TON;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="pokus.xsl" version="1.1"?>
<fbd version="1.1">
<comment id="1" height="6" width="73">
  <position x="6" y="6" />
Ovladani venkovnich svetel s PIR cidlem. PIR, jedou sami, ale po resetu se rozvecejí, takze staci resetovat napajeni a rozsviti se i bez pir signálu.
</comment>
<inVariable name="tl_tech_m_svetlo_venk_sever" type="BOOL" id="2">
  <position x="4" y="20" />
</inVariable>
<block name="R_TRIG" instance="trigVenk1" id="3" height="4" width="6" line="3" order="1">
  <position x="40" y="18" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="2">
        <position x="40" y="21" />
        <position x="32" y="21" />
        <position x="32" y="21" />
        <position x="26" y="21" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="TP" instance="timeVenk1" id="4" height="6" width="6" line="4" order="2">
  <position x="62" y="18" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="3" name="Q">
        <position x="62" y="21" />
        <position x="53" y="21" />
        <position x="53" y="21" />
        <position x="46" y="21" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="5">
        <position x="62" y="23" />
        <position x="59" y="23" />
        <position x="59" y="23" />
        <position x="55" y="23" />
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
<inVariable name="T#2s" type="TIME" id="5">
  <position x="50" y="22" />
</inVariable>
<outVariable name="sv_venkovni_sever_rozp" type="BOOL" id="6" order="3">
  <position x="85" y="20" />
  <connection refid="4" name="Q">
    <position x="86" y="21" />
    <position x="76" y="21" />
    <position x="76" y="21" />
    <position x="68" y="21" />
  </connection>
</outVariable>
<outVariable name="sv_ve_zapad" type="BOOL" id="7" order="12">
  <position x="101" y="57" />
  <connection refid="32">
    <position x="102" y="58" />
    <position x="96" y="58" />
    <position x="96" y="58" />
    <position x="72" y="58" />
  </connection>
</outVariable>
<inVariable name="sv_ve_zapad" type="BOOL" id="8">
  <position x="4" y="57" />
</inVariable>
<outVariable name="sv_ve_vychod" type="BOOL" id="9" order="17">
  <position x="101" y="73" />
  <connection refid="38">
    <position x="102" y="74" />
    <position x="88" y="74" />
    <position x="88" y="74" />
    <position x="72" y="74" />
  </connection>
</outVariable>
<inVariable name="sv_ve_vychod" type="BOOL" id="10">
  <position x="3" y="73" />
</inVariable>
<inVariable name="sig_tl_zadveri" type="BOOL" id="11">
  <position x="3" y="82" />
</inVariable>
<inVariable name="sig_tl_pokojV" type="BOOL" id="12">
  <position x="3" y="75" />
</inVariable>
<inVariable name="sig_tl_pokojZ" type="BOOL" id="13">
  <position x="4" y="59" />
</inVariable>
<comment id="14" height="6" width="47">
  <position x="5" y="38" />
Ovladani svetel k silnici a do zahrady. 
Nabezne hrany jsou reseny v jednotlivych pokojich.
</comment>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="15" height="4" width="4" line="21" order="7">
  <position x="50" y="57" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="20">
        <position x="50" y="58" />
        <position x="47" y="58" />
        <position x="47" y="58" />
        <position x="22" y="58" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="17" name="OR">
        <position x="50" y="60" />
        <position x="46" y="60" />
        <position x="46" y="60" />
        <position x="45" y="60" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="XOR" type="ANY_BIT">
    <comment>Bitwise XOR
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if odd number of bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="16" height="4" width="4" line="43" order="14">
  <position x="49" y="73" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="21">
        <position x="49" y="74" />
        <position x="46" y="74" />
        <position x="46" y="74" />
        <position x="22" y="74" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="18" name="OR">
        <position x="49" y="76" />
        <position x="46" y="76" />
        <position x="46" y="76" />
        <position x="45" y="76" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="XOR" type="ANY_BIT">
    <comment>Bitwise XOR
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if odd number of bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="17" height="6" width="3" line="18" order="6">
  <position x="42" y="59" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="13">
        <position x="42" y="60" />
        <position x="29" y="60" />
        <position x="29" y="60" />
        <position x="15" y="60" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="39">
        <position x="42" y="62" />
        <position x="27" y="62" />
        <position x="27" y="62" />
        <position x="14" y="62" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="42">
        <position x="42" y="64" />
        <position x="39" y="64" />
        <position x="39" y="80" />
        <position x="39" y="80" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="OR" type="ANY_BIT">
    <comment>Bitwise OR
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if either or all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="18" height="6" width="3" line="40" order="13">
  <position x="42" y="75" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="12">
        <position x="42" y="76" />
        <position x="28" y="76" />
        <position x="28" y="76" />
        <position x="14" y="76" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="40">
        <position x="42" y="78" />
        <position x="28" y="78" />
        <position x="28" y="78" />
        <position x="14" y="78" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="42">
        <position x="42" y="80" />
        <position x="40" y="80" />
        <position x="40" y="80" />
        <position x="39" y="80" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="OR" type="ANY_BIT">
    <comment>Bitwise OR
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if either or all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="19" height="4" width="4" line="26" order="8">
  <position x="24" y="64" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="20">
        <position x="24" y="65" />
        <position x="22" y="65" />
        <position x="22" y="58" />
        <position x="22" y="58" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="21">
        <position x="24" y="67" />
        <position x="22" y="67" />
        <position x="22" y="74" />
        <position x="22" y="74" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="XOR" type="ANY_BIT">
    <comment>Bitwise XOR
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if odd number of bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<node id="20">
  <position x="22" y="58" />
  <connection refid="8">
    <position x="22" y="58" />
    <position x="20" y="58" />
    <position x="20" y="58" />
    <position x="14" y="58" />
  </connection>
</node>
<node id="21">
  <position x="22" y="74" />
  <connection refid="10">
    <position x="22" y="74" />
    <position x="18" y="74" />
    <position x="18" y="74" />
    <position x="14" y="74" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="22" height="4" width="4" line="29" order="9">
  <position x="32" y="68" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="19" name="XOR">
        <position x="32" y="69" />
        <position x="30" y="69" />
        <position x="30" y="65" />
        <position x="28" y="65" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="41">
        <position x="32" y="71" />
        <position x="30" y="71" />
        <position x="30" y="80" />
        <position x="30" y="80" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="23" height="4" width="4" line="35" order="11">
  <position x="65" y="57" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="15" name="XOR">
        <position x="65" y="58" />
        <position x="58" y="58" />
        <position x="58" y="58" />
        <position x="54" y="58" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="24" name="NOT">
        <position x="65" y="60" />
        <position x="64" y="60" />
        <position x="64" y="60" />
        <position x="63" y="60" />
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
<block name="NOT" instance="" function="true" hiddenPins="true" operator="true" id="24" height="2" width="4" line="32" order="10">
  <position x="59" y="59" />
  <inVariables>
    <variable name="" type="ANY_BIT">
      <connection refid="27">
        <position x="59" y="60" />
        <position x="57" y="60" />
        <position x="57" y="69" />
        <position x="57" y="69" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="25" height="4" width="4" line="49" order="16">
  <position x="65" y="73" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="16" name="XOR">
        <position x="65" y="74" />
        <position x="57" y="74" />
        <position x="57" y="74" />
        <position x="53" y="74" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="26" name="NOT">
        <position x="65" y="76" />
        <position x="64" y="76" />
        <position x="64" y="76" />
        <position x="63" y="76" />
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
<block name="NOT" instance="" function="true" hiddenPins="true" operator="true" id="26" height="2" width="4" line="46" order="15">
  <position x="59" y="75" />
  <inVariables>
    <variable name="" type="ANY_BIT">
      <connection refid="27">
        <position x="59" y="76" />
        <position x="57" y="76" />
        <position x="57" y="69" />
        <position x="57" y="69" />
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
<node id="27">
  <position x="57" y="69" />
  <connection refid="22" name="AND">
    <position x="57" y="69" />
    <position x="54" y="69" />
    <position x="54" y="69" />
    <position x="36" y="69" />
  </connection>
</node>
<inVariable name="tl_zadveri_svetlo_venk_jih" type="BOOL" id="28">
  <position x="4" y="32" />
</inVariable>
<block name="R_TRIG" instance="trigVenk2" id="29" height="4" width="6" line="8" order="4">
  <position x="33" y="30" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="28">
        <position x="33" y="33" />
        <position x="31" y="33" />
        <position x="31" y="33" />
        <position x="23" y="33" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<outVariable name="sig_tl_zadveri" type="BOOL" id="30" order="5">
  <position x="47" y="32" />
  <connection refid="29" name="Q">
    <position x="48" y="33" />
    <position x="45" y="33" />
    <position x="45" y="33" />
    <position x="39" y="33" />
  </connection>
</outVariable>
<block name="fb_kmitac" instance="kmit1" id="31" height="8" width="12" line="52" order="18">
  <position x="86" y="47" />
  <inVariables>
    <variable name="sig_IN" type="BOOL">
      <connection refid="32">
        <position x="86" y="50" />
        <position x="72" y="50" />
        <position x="72" y="58" />
        <position x="72" y="58" />
      </connection>
    <comment>spousteci signal</comment>
    </variable>
    <variable name="time_ON" type="TIME">
      <connection refid="33">
        <position x="86" y="52" />
        <position x="82" y="52" />
        <position x="82" y="52" />
        <position x="80" y="52" />
      </connection>
    <comment>delka sviceni</comment>
    </variable>
    <variable name="time_OFF" type="TIME">
      <connection refid="34">
        <position x="86" y="54" />
        <position x="84" y="54" />
        <position x="84" y="54" />
        <position x="83" y="54" />
      </connection>
    <comment>delka nesviceni</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="sig_OUT" type="BOOL">
    <comment>vystup</comment>
    </variable>
  </outVariables>
</block>
<node id="32">
  <position x="72" y="58" />
  <connection refid="23" name="AND">
    <position x="72" y="58" />
    <position x="71" y="58" />
    <position x="71" y="58" />
    <position x="69" y="58" />
  </connection>
</node>
<inVariable name="T#1s" type="TIME" id="33">
  <position x="75" y="51" />
</inVariable>
<inVariable name="T#200ms" type="TIME" id="34">
  <position x="75" y="53" />
</inVariable>
<block name="fb_kmitac" instance="kmit2" id="35" height="8" width="12" line="55" order="20">
  <position x="86" y="82" />
  <inVariables>
    <variable name="sig_IN" type="BOOL">
      <connection refid="38">
        <position x="86" y="85" />
        <position x="72" y="85" />
        <position x="72" y="74" />
        <position x="72" y="74" />
      </connection>
    <comment>spousteci signal</comment>
    </variable>
    <variable name="time_ON" type="TIME">
      <connection refid="36">
        <position x="86" y="87" />
        <position x="82" y="87" />
        <position x="82" y="87" />
        <position x="80" y="87" />
      </connection>
    <comment>delka sviceni</comment>
    </variable>
    <variable name="time_OFF" type="TIME">
      <connection refid="37">
        <position x="86" y="89" />
        <position x="84" y="89" />
        <position x="84" y="89" />
        <position x="83" y="89" />
      </connection>
    <comment>delka nesviceni</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="sig_OUT" type="BOOL">
    <comment>vystup</comment>
    </variable>
  </outVariables>
</block>
<inVariable name="T#1s" type="TIME" id="36">
  <position x="75" y="86" />
</inVariable>
<inVariable name="T#200ms" type="TIME" id="37">
  <position x="75" y="88" />
</inVariable>
<node id="38">
  <position x="72" y="74" />
  <connection refid="25" name="AND">
    <position x="72" y="74" />
    <position x="71" y="74" />
    <position x="71" y="74" />
    <position x="69" y="74" />
  </connection>
</node>
<inVariable name="sig_tl_loznice" type="BOOL" id="39">
  <position x="4" y="61" />
</inVariable>
<inVariable name="sig_tl_obyvak" type="BOOL" id="40">
  <position x="3" y="77" />
</inVariable>
<node id="41">
  <position x="30" y="80" />
  <connection refid="11">
    <position x="30" y="80" />
    <position x="28" y="80" />
    <position x="28" y="83" />
    <position x="14" y="83" />
  </connection>
</node>
<node id="42">
  <position x="39" y="80" />
  <connection refid="41">
    <position x="39" y="80" />
    <position x="35" y="80" />
    <position x="35" y="80" />
    <position x="30" y="80" />
  </connection>
</node>
<outVariable name="out_vychod" type="BOOL" id="43" order="21">
  <position x="102" y="84" />
  <connection refid="35" name="sig_OUT">
    <position x="103" y="85" />
    <position x="99" y="85" />
    <position x="99" y="85" />
    <position x="98" y="85" />
  </connection>
</outVariable>
<outVariable name="out_zapad" type="BOOL" id="44" order="19">
  <position x="102" y="49" />
  <connection refid="31" name="sig_OUT">
    <position x="103" y="50" />
    <position x="99" y="50" />
    <position x="99" y="50" />
    <position x="98" y="50" />
  </connection>
</outVariable>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
(* 270	*)	_Nod_Tmp_16	:	BOOL;
(* 563	*)	_Nod_Tmp_15	:	BOOL;
(* 109	*)	_Fun_Tmp_IN2_13_2	:	BOOL;
(* 317	*)	_Fun_Tmp_IN1_7_1	:	BOOL;
(* 279	*)	_Nod_Tmp_12	:	BOOL;
(* 288	*)	_Fun_Tmp_IN1_10_1	:	BOOL;
(* 415	*)	_Nod_Tmp_9	:	BOOL;
(* 317	*)	_Fun_Tmp_IN2_7_2	:	BOOL;
(* 490	*)	_Nod_Tmp_6	:	BOOL;
(* 138	*)	_Fun_Tmp_IN2_4_2	:	BOOL;
(* 366	*)	_Fun_Tmp_IN1_2_1	:	BOOL;
(* 366	*)	_Fun_Tmp_IN2_2_2	:	BOOL;
(* 548	*)	_Nod_Tmp_1	:	BOOL;
END_VAR

//NC
//N000
(*  11	*)	CAL	trigVenk1(CLK:=tl_tech_m_svetlo_venk_sever)
(*  28	*)	CAL	timeVenk1(IN:=trigVenk1.Q, PT:=T#2s)
(*  28	*)	LD 	timeVenk1.Q
(*  62	*)	ST 	sv_venkovni_sever_rozp
//N001
(* 427	*)	CAL	trigVenk2(CLK:=tl_zadveri_svetlo_venk_jih)
(* 427	*)	LD 	trigVenk2.Q
(* 444	*)	ST 	sig_tl_zadveri
//N002
(*  80	*)	LD 	sv_ve_zapad
(* 270	*)	ST	_Nod_Tmp_16
(*  95	*)	LD 	sig_tl_zadveri
(* 563	*)	ST	_Nod_Tmp_15
(* 171	*)	LD 	sig_tl_pokojZ
(* 179	*)	OR 	sig_tl_loznice
(* 187	*)	OR 	_Nod_Tmp_15
(* 121	*)	ST 	_Fun_Tmp_IN2_13_2
(* 113	*)	LD 	_Nod_Tmp_16
(* 121	*)	XOR 	_Fun_Tmp_IN2_13_2
(* 321	*)	ST 	_Fun_Tmp_IN1_7_1
(*  92	*)	LD 	sv_ve_vychod
(* 279	*)	ST	_Nod_Tmp_12
(* 245	*)	LD 	_Nod_Tmp_16
(* 253	*)	XOR 	_Nod_Tmp_12
(* 292	*)	ST 	_Fun_Tmp_IN1_10_1
(* 292	*)	LD 	_Fun_Tmp_IN1_10_1
(* 300	*)	AND 	_Nod_Tmp_15
(* 415	*)	ST	_Nod_Tmp_9
(* 350	*)	LD 	_Nod_Tmp_9
(* 346	*)	NOT
(* 329	*)	ST 	_Fun_Tmp_IN2_7_2
(* 321	*)	LD 	_Fun_Tmp_IN1_7_1
(* 329	*)	AND 	_Fun_Tmp_IN2_7_2
(* 490	*)	ST	_Nod_Tmp_6
(*  71	*)	ST 	sv_ve_zapad
(* 208	*)	LD 	sig_tl_pokojV
(* 216	*)	OR 	sig_tl_obyvak
(* 224	*)	OR 	_Nod_Tmp_15
(* 150	*)	ST 	_Fun_Tmp_IN2_4_2
(* 142	*)	LD 	_Nod_Tmp_12
(* 150	*)	XOR 	_Fun_Tmp_IN2_4_2
(* 370	*)	ST 	_Fun_Tmp_IN1_2_1
(* 399	*)	LD 	_Nod_Tmp_9
(* 395	*)	NOT
(* 378	*)	ST 	_Fun_Tmp_IN2_2_2
(* 370	*)	LD 	_Fun_Tmp_IN1_2_1
(* 378	*)	AND 	_Fun_Tmp_IN2_2_2
(* 548	*)	ST	_Nod_Tmp_1
(*  83	*)	ST 	sv_ve_vychod
(* 453	*)	CAL	kmit1(sig_IN:=_Nod_Tmp_6, time_ON:=T#1s, time_OFF:=T#200ms)
(* 453	*)	LD 	kmit1.sig_OUT
(* 590	*)	ST 	out_zapad
(* 505	*)	CAL	kmit2(sig_IN:=_Nod_Tmp_1, time_ON:=T#1s, time_OFF:=T#200ms)
(* 505	*)	LD 	kmit2.sig_OUT
(* 581	*)	ST 	out_vychod

END_PROGRAM
