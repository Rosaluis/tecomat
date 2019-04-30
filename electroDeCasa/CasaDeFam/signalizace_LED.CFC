PROGRAM signalizace_LED
(*Kazda LEDka v Logusu muze mit vice vyznamu.
*)
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    fb_boFalse : boFALSE;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="pokus.xsl" version="1.1"?>
<fbd version="1.1">
<comment id="12" height="3" width="12">
  <position x="2" y="2" />
Komentář ke schématu
</comment>
<outVariable name="led_k1_lg" type="BOOL" id="13" order="3">
  <position x="42" y="13" />
  <connection refid="17" name="OR">
    <position x="43" y="14" />
    <position x="37" y="14" />
    <position x="37" y="14" />
    <position x="36" y="14" />
  </connection>
</outVariable>
<inVariable name="k1_led_k1_lg" type="BOOL" id="14">
  <position x="16" y="13" />
  <comment>
vystup na LED v Logusech  </comment>
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="17" height="4" width="3" line="8" order="2">
  <position x="33" y="13" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="14">
        <position x="33" y="14" />
        <position x="28" y="14" />
        <position x="28" y="14" />
        <position x="27" y="14" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="105">
        <position x="33" y="16" />
        <position x="23" y="16" />
        <position x="23" y="16" />
        <position x="13" y="16" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="OR" type="ANY_BIT">
    <comment>
	Bitwise OR
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if either or all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<inVariable name="k1_led_k1_lr" type="BOOL" id="24">
  <position x="16" y="19" />
</inVariable>
<inVariable name="k1_led_k1_rg" type="BOOL" id="26">
  <position x="16" y="25" />
</inVariable>
<inVariable name="k1_led_k1_rr" type="BOOL" id="28">
  <position x="16" y="31" />
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="33" height="4" width="3" line="11" order="4">
  <position x="33" y="19" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="24">
        <position x="33" y="20" />
        <position x="29" y="20" />
        <position x="29" y="20" />
        <position x="26" y="20" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="113">
        <position x="33" y="22" />
        <position x="22" y="22" />
        <position x="22" y="22" />
        <position x="13" y="22" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="35" height="4" width="3" line="14" order="6">
  <position x="33" y="25" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="26">
        <position x="33" y="26" />
        <position x="29" y="26" />
        <position x="29" y="26" />
        <position x="27" y="26" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="109">
        <position x="33" y="28" />
        <position x="22" y="28" />
        <position x="22" y="28" />
        <position x="13" y="28" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="37" height="4" width="3" line="17" order="8">
  <position x="33" y="31" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="28">
        <position x="33" y="32" />
        <position x="29" y="32" />
        <position x="29" y="32" />
        <position x="26" y="32" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="148">
        <position x="33" y="34" />
        <position x="23" y="34" />
        <position x="23" y="34" />
        <position x="13" y="34" />
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
<outVariable name="led_k1_lr" type="BOOL" id="39" order="5">
  <position x="42" y="19" />
  <connection refid="33" name="OR">
    <position x="43" y="20" />
    <position x="40" y="20" />
    <position x="40" y="20" />
    <position x="36" y="20" />
  </connection>
</outVariable>
<outVariable name="led_k1_rg" type="BOOL" id="41" order="7">
  <position x="42" y="25" />
  <connection refid="35" name="OR">
    <position x="43" y="26" />
    <position x="40" y="26" />
    <position x="40" y="26" />
    <position x="36" y="26" />
  </connection>
</outVariable>
<outVariable name="led_k1_rr" type="BOOL" id="43" order="9">
  <position x="42" y="31" />
  <connection refid="37" name="OR">
    <position x="43" y="32" />
    <position x="41" y="32" />
    <position x="41" y="32" />
    <position x="36" y="32" />
  </connection>
</outVariable>
<outVariable name="led_k2_lg" type="BOOL" id="60" order="15">
  <position x="88" y="13" />
  <connection refid="62" name="OR">
    <position x="89" y="14" />
    <position x="83" y="14" />
    <position x="83" y="14" />
    <position x="82" y="14" />
  </connection>
</outVariable>
<inVariable name="k2_led_k2_lg" type="BOOL" id="61">
  <position x="62" y="13" />
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="62" height="4" width="3" line="26" order="14">
  <position x="79" y="13" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="61">
        <position x="79" y="14" />
        <position x="74" y="14" />
        <position x="74" y="14" />
        <position x="73" y="14" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="93">
        <position x="79" y="16" />
        <position x="68" y="16" />
        <position x="68" y="16" />
        <position x="57" y="16" />
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
<inVariable name="k2_led_k2_lr" type="BOOL" id="63">
  <position x="62" y="19" />
</inVariable>
<inVariable name="k2_led_k2_rg" type="BOOL" id="64">
  <position x="62" y="25" />
</inVariable>
<inVariable name="k2_led_k2_rr" type="BOOL" id="65">
  <position x="62" y="31" />
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="66" height="4" width="3" line="29" order="16">
  <position x="79" y="19" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="63">
        <position x="79" y="20" />
        <position x="75" y="20" />
        <position x="75" y="20" />
        <position x="72" y="20" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="97">
        <position x="79" y="22" />
        <position x="68" y="22" />
        <position x="68" y="22" />
        <position x="57" y="22" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="67" height="4" width="3" line="32" order="18">
  <position x="79" y="25" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="64">
        <position x="79" y="26" />
        <position x="75" y="26" />
        <position x="75" y="26" />
        <position x="73" y="26" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="101">
        <position x="79" y="28" />
        <position x="72" y="28" />
        <position x="72" y="28" />
        <position x="57" y="28" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="68" height="4" width="3" line="35" order="20">
  <position x="79" y="31" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="65">
        <position x="79" y="32" />
        <position x="75" y="32" />
        <position x="75" y="32" />
        <position x="72" y="32" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="101">
        <position x="79" y="34" />
        <position x="57" y="34" />
        <position x="57" y="28" />
        <position x="57" y="28" />
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
<outVariable name="led_k2_lr" type="BOOL" id="69" order="17">
  <position x="88" y="19" />
  <connection refid="66" name="OR">
    <position x="89" y="20" />
    <position x="86" y="20" />
    <position x="86" y="20" />
    <position x="82" y="20" />
  </connection>
</outVariable>
<outVariable name="led_k2_rg" type="BOOL" id="70" order="19">
  <position x="88" y="25" />
  <connection refid="67" name="OR">
    <position x="89" y="26" />
    <position x="86" y="26" />
    <position x="86" y="26" />
    <position x="82" y="26" />
  </connection>
</outVariable>
<outVariable name="led_k2_rr" type="BOOL" id="71" order="21">
  <position x="88" y="31" />
  <connection refid="68" name="OR">
    <position x="89" y="32" />
    <position x="87" y="32" />
    <position x="87" y="32" />
    <position x="82" y="32" />
  </connection>
</outVariable>
<block name="boFALSE" instance="fb_boFalse" id="83" height="4" width="7" line="3" order="1">
  <position x="3" y="8" />
  <outVariables>
    <variable name="out" type="BOOL">
    </variable>
  </outVariables>
</block>
<node id="89">
  <position x="13" y="11" />
  <connection refid="83" name="out">
    <position x="13" y="11" />
    <position x="11" y="11" />
    <position x="11" y="11" />
    <position x="10" y="11" />
  </connection>
</node>
<node id="93">
  <position x="57" y="16" />
  <connection refid="89">
    <position x="57" y="16" />
    <position x="57" y="16" />
    <position x="57" y="11" />
    <position x="13" y="11" />
  </connection>
</node>
<node id="97">
  <position x="57" y="22" />
  <connection refid="93">
    <position x="57" y="22" />
    <position x="57" y="22" />
    <position x="57" y="16" />
    <position x="57" y="16" />
  </connection>
</node>
<node id="101">
  <position x="57" y="28" />
  <connection refid="97">
    <position x="57" y="28" />
    <position x="57" y="28" />
    <position x="57" y="22" />
    <position x="57" y="22" />
  </connection>
</node>
<node id="105">
  <position x="13" y="16" />
  <connection refid="89">
    <position x="13" y="16" />
    <position x="13" y="16" />
    <position x="13" y="11" />
    <position x="13" y="11" />
  </connection>
</node>
<node id="109">
  <position x="13" y="28" />
  <connection refid="113">
    <position x="13" y="28" />
    <position x="13" y="28" />
    <position x="13" y="22" />
    <position x="13" y="22" />
  </connection>
</node>
<node id="113">
  <position x="13" y="22" />
  <connection refid="105">
    <position x="13" y="22" />
    <position x="13" y="22" />
    <position x="13" y="16" />
    <position x="13" y="16" />
  </connection>
</node>
<outVariable name="led_lo_lg" type="BOOL" id="115" order="23">
  <position x="42" y="41" />
  <connection refid="116" name="OR">
    <position x="43" y="42" />
    <position x="37" y="42" />
    <position x="37" y="42" />
    <position x="36" y="42" />
  </connection>
</outVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="116" height="4" width="3" line="39" order="22">
  <position x="33" y="41" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="128">
        <position x="33" y="42" />
        <position x="29" y="42" />
        <position x="29" y="42" />
        <position x="26" y="42" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="151">
        <position x="33" y="44" />
        <position x="29" y="44" />
        <position x="29" y="44" />
        <position x="26" y="44" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="117" height="4" width="3" line="20" order="10">
  <position x="33" y="47" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="129">
        <position x="33" y="48" />
        <position x="29" y="48" />
        <position x="29" y="48" />
        <position x="25" y="48" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="159">
        <position x="33" y="50" />
        <position x="22" y="50" />
        <position x="22" y="50" />
        <position x="13" y="50" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="118" height="4" width="3" line="43" order="24">
  <position x="33" y="53" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="130">
        <position x="33" y="54" />
        <position x="29" y="54" />
        <position x="29" y="54" />
        <position x="26" y="54" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="153">
        <position x="33" y="56" />
        <position x="32" y="56" />
        <position x="32" y="56" />
        <position x="25" y="56" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="119" height="4" width="3" line="23" order="12">
  <position x="33" y="59" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="131">
        <position x="33" y="60" />
        <position x="28" y="60" />
        <position x="28" y="60" />
        <position x="25" y="60" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="159">
        <position x="33" y="62" />
        <position x="13" y="62" />
        <position x="13" y="50" />
        <position x="13" y="50" />
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
<outVariable name="led_lo_lr" type="BOOL" id="120" order="11">
  <position x="42" y="47" />
  <connection refid="117" name="OR">
    <position x="43" y="48" />
    <position x="40" y="48" />
    <position x="40" y="48" />
    <position x="36" y="48" />
  </connection>
</outVariable>
<outVariable name="led_lo_rg" type="BOOL" id="121" order="25">
  <position x="42" y="53" />
  <connection refid="118" name="OR">
    <position x="43" y="54" />
    <position x="40" y="54" />
    <position x="40" y="54" />
    <position x="36" y="54" />
  </connection>
</outVariable>
<outVariable name="led_lo_rr" type="BOOL" id="122" order="13">
  <position x="42" y="59" />
  <connection refid="119" name="OR">
    <position x="43" y="60" />
    <position x="41" y="60" />
    <position x="41" y="60" />
    <position x="36" y="60" />
  </connection>
</outVariable>
<inVariable name="lo_led_lo_lg" type="BOOL" id="128">
  <position x="16" y="41" />
</inVariable>
<inVariable name="lo_led_lo_lr" type="BOOL" id="129">
  <position x="16" y="47" />
</inVariable>
<inVariable name="lo_led_lo_rg" type="BOOL" id="130">
  <position x="16" y="53" />
</inVariable>
<inVariable name="lo_led_lo_rr" type="BOOL" id="131">
  <position x="16" y="59" />
</inVariable>
<node id="148">
  <position x="13" y="34" />
  <connection refid="109">
    <position x="13" y="34" />
    <position x="13" y="34" />
    <position x="13" y="28" />
    <position x="13" y="28" />
  </connection>
</node>
<inVariable name="out_vychod" type="BOOL" id="151">
  <position x="16" y="43" />
</inVariable>
<inVariable name="out_zapad" type="BOOL" id="153">
  <position x="16" y="55" />
</inVariable>
<node id="159">
  <position x="13" y="50" />
  <connection refid="148">
    <position x="13" y="50" />
    <position x="13" y="50" />
    <position x="13" y="34" />
    <position x="13" y="34" />
  </connection>
</node>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
(* 346	*)	_Nod_Tmp_5	:	BOOL;
(* 382	*)	_Nod_Tmp_10	:	BOOL;
END_VAR

//NC
//N000
(* 339	*)	CAL	fb_boFalse()
(* 339	*)	LD 	fb_boFalse.out
(* 346	*)	ST	_Nod_Tmp_5
(* 382	*)	ST	_Nod_Tmp_10
(*  26	*)	LD 	k1_led_k1_lg
(*  34	*)	OR 	_Nod_Tmp_10
(*   8	*)	ST 	led_k1_lg
(*  65	*)	LD 	k1_led_k1_lr
(*  73	*)	OR 	_Nod_Tmp_10
(* 148	*)	ST 	led_k1_lr
(*  94	*)	LD 	k1_led_k1_rg
(* 102	*)	OR 	_Nod_Tmp_10
(* 157	*)	ST 	led_k1_rg
(* 123	*)	LD 	k1_led_k1_rr
(* 131	*)	OR 	_Nod_Tmp_10
(* 166	*)	ST 	led_k1_rr
(* 451	*)	LD 	lo_led_lo_lr
(* 459	*)	OR 	_Nod_Tmp_10
(* 534	*)	ST 	led_lo_lr
(* 509	*)	LD 	lo_led_lo_rr
(* 517	*)	OR 	_Nod_Tmp_10
(* 552	*)	ST 	led_lo_rr
(* 191	*)	LD 	k2_led_k2_lg
(* 199	*)	OR 	_Nod_Tmp_5
(* 175	*)	ST 	led_k2_lg
(* 229	*)	LD 	k2_led_k2_lr
(* 237	*)	OR 	_Nod_Tmp_5
(* 312	*)	ST 	led_k2_lr
(* 258	*)	LD 	k2_led_k2_rg
(* 266	*)	OR 	_Nod_Tmp_5
(* 321	*)	ST 	led_k2_rg
(* 287	*)	LD 	k2_led_k2_rr
(* 295	*)	OR 	_Nod_Tmp_5
(* 330	*)	ST 	led_k2_rr
//N001
(* 422	*)	LD 	lo_led_lo_lg
(* 430	*)	OR 	out_vychod
(* 409	*)	ST 	led_lo_lg
//N002
(* 480	*)	LD 	lo_led_lo_rg
(* 488	*)	OR 	out_zapad
(* 543	*)	ST 	led_lo_rg

END_PROGRAM
