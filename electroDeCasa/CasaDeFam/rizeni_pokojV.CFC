PROGRAM rizeni_pokojV
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    tonPV : TON;
    onPV : fb_on_SvKoupelna1;
    offPV : fb_off_SvKoupelna1;
    trigPV4 : R_TRIG;
    trigPV5 : R_TRIG;
    trigPV2 : R_TRIG;
    trigPV1 : R_TRIG;
    pomPV : TIME;
    blik_tls_pv_tr : fb_LED_blik;
    blik_tls_pv_tl : fb_LED_blik;
    tp_pv_1 : TP;
    tp_pv_2 : TP;
    trigPV3 : R_TRIG;
    pv_trig_input : R_TRIG;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="pokus.xsl" version="1.1"?>
<fbd version="1.1">
<comment id="1" height="3" width="12">
  <position x="2" y="2" />
Komentář ke schématu
</comment>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="2" height="4" width="4" line="9" order="2">
  <position x="39" y="13" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="43">
        <position x="39" y="14" />
        <position x="38" y="14" />
        <position x="38" y="14" />
        <position x="37" y="14" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="34">
        <position x="39" y="16" />
        <position x="38" y="16" />
        <position x="38" y="16" />
        <position x="35" y="16" />
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
<inVariable name="tls_pv_tr" type="BOOL" id="3">
  <position x="13" y="13" />
</inVariable>
<outVariable name="sv_pv_1" type="BOOL" id="4" order="3">
  <position x="66" y="13" />
  <connection refid="2" name="XOR">
    <position x="67" y="14" />
    <position x="46" y="14" />
    <position x="46" y="14" />
    <position x="43" y="14" />
  </connection>
</outVariable>
<inVariable name="sv_pv_1" type="BOOL" id="5">
  <position x="13" y="15" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="6" height="4" width="4" line="17" order="5">
  <position x="39" y="33" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="44">
        <position x="39" y="34" />
        <position x="38" y="34" />
        <position x="38" y="34" />
        <position x="37" y="34" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="42">
        <position x="39" y="36" />
        <position x="37" y="36" />
        <position x="37" y="36" />
        <position x="35" y="36" />
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
<inVariable name="tls_pv_tl" type="BOOL" id="7">
  <position x="13" y="33" />
</inVariable>
<outVariable name="sv_pv_2" type="BOOL" id="8" order="6">
  <position x="66" y="33" />
  <connection refid="6" name="XOR">
    <position x="67" y="34" />
    <position x="45" y="34" />
    <position x="45" y="34" />
    <position x="43" y="34" />
  </connection>
</outVariable>
<inVariable name="sv_pv_2" type="BOOL" id="9">
  <position x="13" y="35" />
</inVariable>
<inVariable name="tll_pv_ll" type="BOOL" id="10">
  <position x="13" y="104" />
</inVariable>
<block name="fb_off_SvKoupelna1" instance="offPV" id="11" height="10" width="15" line="22" order="8">
  <position x="39" y="54" />
  <inVariables>
    <variable name="in" type="BOOL">
      <connection refid="50">
        <position x="39" y="57" />
        <position x="38" y="57" />
        <position x="38" y="57" />
        <position x="35" y="57" />
      </connection>
    <comment>vstup od tlačítka</comment>
    </variable>
    <variable name="sig0" type="BOOL">
      <connection refid="13">
        <position x="39" y="59" />
        <position x="34" y="59" />
        <position x="34" y="59" />
        <position x="20" y="59" />
      </connection>
    <comment>vstup stavu svetla 0</comment>
    </variable>
    <variable name="sig1" type="BOOL">
      <connection refid="14">
        <position x="39" y="61" />
        <position x="33" y="61" />
        <position x="33" y="61" />
        <position x="20" y="61" />
      </connection>
    <comment>vstup stavu svetla 1</comment>
    </variable>
    <variable name="sig2" type="BOOL">
    <comment>vstup stavu svetla 2</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="out" type="BOOL">
    <comment>in := out</comment>
    </variable>
    <variable name="sOff0" type="BOOL">
    <comment>vystup 0</comment>
    </variable>
    <variable name="sOff1" type="BOOL">
    <comment>vystup 1</comment>
    </variable>
    <variable name="sOff2" type="BOOL">
    <comment>vystup 2</comment>
    </variable>
  </outVariables>
</block>
<inVariable name="tls_pv_lr" type="BOOL" id="12">
  <position x="13" y="56" />
</inVariable>
<inVariable name="sv_pv_1" type="BOOL" id="13">
  <position x="13" y="58" />
</inVariable>
<inVariable name="sv_pv_2" type="BOOL" id="14">
  <position x="13" y="60" />
</inVariable>
<outVariable name="sv_pv_1" type="BOOL" id="15" order="9">
  <position x="67" y="58" />
  <connection refid="11" name="sOff0">
    <position x="68" y="59" />
    <position x="55" y="59" />
    <position x="55" y="59" />
    <position x="54" y="59" />
  </connection>
</outVariable>
<outVariable name="sv_pv_2" type="BOOL" id="16" order="10">
  <position x="67" y="60" />
  <connection refid="11" name="sOff1">
    <position x="68" y="61" />
    <position x="55" y="61" />
    <position x="55" y="61" />
    <position x="54" y="61" />
  </connection>
</outVariable>
<block name="fb_on_SvKoupelna1" instance="onPV" id="17" height="10" width="15" line="30" order="12">
  <position x="39" y="70" />
  <inVariables>
    <variable name="in" type="BOOL">
      <connection refid="55">
        <position x="39" y="73" />
        <position x="38" y="73" />
        <position x="38" y="73" />
        <position x="35" y="73" />
      </connection>
    <comment>vstup od tlačítka</comment>
    </variable>
    <variable name="sig0" type="BOOL">
      <connection refid="18">
        <position x="39" y="75" />
        <position x="26" y="75" />
        <position x="26" y="75" />
        <position x="20" y="75" />
      </connection>
    <comment>vstup stavu svetla 0</comment>
    </variable>
    <variable name="sig1" type="BOOL">
      <connection refid="19">
        <position x="39" y="77" />
        <position x="25" y="77" />
        <position x="25" y="77" />
        <position x="20" y="77" />
      </connection>
    <comment>vstup stavu svetla 1</comment>
    </variable>
    <variable name="sig2" type="BOOL">
    <comment>vstup stavu svetla 2</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="out" type="BOOL">
    <comment>in := out</comment>
    </variable>
    <variable name="sOff0" type="BOOL">
    <comment>vystup 0</comment>
    </variable>
    <variable name="sOff1" type="BOOL">
    <comment>vystup 1</comment>
    </variable>
    <variable name="sOff2" type="BOOL">
    <comment>vystup 2</comment>
    </variable>
  </outVariables>
</block>
<inVariable name="sv_pv_1" type="BOOL" id="18">
  <position x="13" y="74" />
</inVariable>
<inVariable name="sv_pv_2" type="BOOL" id="19">
  <position x="13" y="76" />
</inVariable>
<outVariable name="sv_pv_1" type="BOOL" id="20" order="13">
  <position x="67" y="74" />
  <connection refid="17" name="sOff0">
    <position x="68" y="75" />
    <position x="55" y="75" />
    <position x="55" y="75" />
    <position x="54" y="75" />
  </connection>
</outVariable>
<outVariable name="sv_pv_2" type="BOOL" id="21" order="14">
  <position x="67" y="76" />
  <connection refid="17" name="sOff1">
    <position x="68" y="77" />
    <position x="55" y="77" />
    <position x="55" y="77" />
    <position x="54" y="77" />
  </connection>
</outVariable>
<inVariable name="tll_pv_lr" type="BOOL" id="22">
  <position x="13" y="72" />
</inVariable>
<block name="R_TRIG" instance="trigPV1" id="23" height="4" width="6" line="3" order="1">
  <position x="27" y="11" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="3">
        <position x="27" y="14" />
        <position x="22" y="14" />
        <position x="22" y="14" />
        <position x="21" y="14" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="trigPV2" id="24" height="4" width="6" line="11" order="4">
  <position x="27" y="31" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="7">
        <position x="27" y="34" />
        <position x="23" y="34" />
        <position x="23" y="34" />
        <position x="20" y="34" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="trigPV4" id="25" height="4" width="6" line="19" order="7">
  <position x="24" y="54" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="12">
        <position x="24" y="57" />
        <position x="23" y="57" />
        <position x="23" y="57" />
        <position x="20" y="57" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="trigPV5" id="26" height="4" width="6" line="27" order="11">
  <position x="24" y="70" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="22">
        <position x="24" y="73" />
        <position x="21" y="73" />
        <position x="21" y="73" />
        <position x="20" y="73" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="TON" instance="tonPV" id="27" height="6" width="6" line="62" order="27">
  <position x="34" y="102" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="30">
        <position x="34" y="105" />
        <position x="32" y="105" />
        <position x="32" y="105" />
        <position x="30" y="105" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="28">
        <position x="34" y="107" />
        <position x="32" y="107" />
        <position x="32" y="107" />
        <position x="31" y="107" />
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
<inVariable name="T#1s" type="TIME" id="28">
  <position x="26" y="106" />
</inVariable>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="29" height="4" width="4" line="66" order="29">
  <position x="46" y="98" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="30">
        <position x="46" y="99" />
        <position x="30" y="99" />
        <position x="30" y="105" />
        <position x="30" y="105" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="27" name="Q">
        <position x="46" y="101" />
        <position x="41" y="101" />
        <position x="41" y="105" />
        <position x="40" y="105" />
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
<node id="30">
  <position x="30" y="105" />
  <connection refid="10">
    <position x="30" y="105" />
    <position x="26" y="105" />
    <position x="26" y="105" />
    <position x="20" y="105" />
  </connection>
</node>
<outVariable name="pomPV" type="TIME" id="31" order="28">
  <position x="44" y="106" />
  <connection refid="27" name="ET">
    <position x="45" y="107" />
    <position x="41" y="107" />
    <position x="41" y="107" />
    <position x="40" y="107" />
  </connection>
</outVariable>
<comment id="32" height="10" width="14">
  <position x="13" y="92" />
pokud podrzi tlacitko leve-dolni na&gt;3s tak se zapne/vypne venkovni svetlo
</comment>
<outVariable name="led_pv_rr" type="BOOL" id="33" order="21">
  <position x="112" y="25" />
  <connection refid="46" name="OR">
    <position x="113" y="26" />
    <position x="112" y="26" />
    <position x="112" y="26" />
    <position x="106" y="26" />
  </connection>
</outVariable>
<node id="34">
  <position x="35" y="16" />
  <connection refid="5">
    <position x="35" y="16" />
    <position x="24" y="16" />
    <position x="24" y="16" />
    <position x="20" y="16" />
  </connection>
</node>
<outVariable name="led_pv_rg" type="BOOL" id="35" order="18">
  <position x="112" y="19" />
  <connection refid="45" name="OR">
    <position x="113" y="20" />
    <position x="112" y="20" />
    <position x="112" y="20" />
    <position x="106" y="20" />
  </connection>
</outVariable>
<block name="fb_LED_blik" instance="blik_tls_pv_tr" id="36" height="8" width="19" line="37" order="15">
  <position x="66" y="21" />
  <inVariables>
    <variable name="InButton" type="BOOL">
      <connection refid="43">
        <position x="66" y="24" />
        <position x="37" y="24" />
        <position x="37" y="14" />
        <position x="37" y="14" />
      </connection>
    <comment>signal od tlacitka</comment>
    </variable>
    <variable name="InLight" type="BOOL">
      <connection refid="34">
        <position x="66" y="26" />
        <position x="35" y="26" />
        <position x="35" y="16" />
        <position x="35" y="16" />
      </connection>
    <comment>stav svetla ktere tlacitko ovlada</comment>
    </variable>
    <variable name="InTimeOfBlic" type="TIME">
      <connection refid="41">
        <position x="66" y="28" />
        <position x="65" y="28" />
        <position x="65" y="28" />
        <position x="63" y="28" />
      </connection>
    <comment>cas bliknuti pro zelenou i cervenou</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="OutLED_Green" type="BOOL">
    <comment>zelena LEDka</comment>
    </variable>
    <variable name="OutLED_Red" type="BOOL">
    <comment>cervena LEDka</comment>
    </variable>
  </outVariables>
</block>
<inVariable name="T#0.5s" type="TIME" id="37">
  <position x="49" y="27" />
</inVariable>
<outVariable name="led_pv_lr" type="BOOL" id="38" order="26">
  <position x="112" y="46" />
  <connection refid="48" name="OR">
    <position x="113" y="47" />
    <position x="112" y="47" />
    <position x="112" y="47" />
    <position x="106" y="47" />
  </connection>
</outVariable>
<outVariable name="led_pv_lg" type="BOOL" id="39" order="24">
  <position x="112" y="39" />
  <connection refid="47" name="OR">
    <position x="113" y="40" />
    <position x="112" y="40" />
    <position x="112" y="40" />
    <position x="106" y="40" />
  </connection>
</outVariable>
<block name="fb_LED_blik" instance="blik_tls_pv_tl" id="40" height="8" width="19" line="52" order="22">
  <position x="66" y="42" />
  <inVariables>
    <variable name="InButton" type="BOOL">
      <connection refid="44">
        <position x="66" y="45" />
        <position x="37" y="45" />
        <position x="37" y="34" />
        <position x="37" y="34" />
      </connection>
    <comment>signal od tlacitka</comment>
    </variable>
    <variable name="InLight" type="BOOL">
      <connection refid="42">
        <position x="66" y="47" />
        <position x="35" y="47" />
        <position x="35" y="36" />
        <position x="35" y="36" />
      </connection>
    <comment>stav svetla ktere tlacitko ovlada</comment>
    </variable>
    <variable name="InTimeOfBlic" type="TIME">
      <connection refid="41">
        <position x="66" y="49" />
        <position x="63" y="49" />
        <position x="63" y="28" />
        <position x="63" y="28" />
      </connection>
    <comment>cas bliknuti pro zelenou i cervenou</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="OutLED_Green" type="BOOL">
    <comment>zelena LEDka</comment>
    </variable>
    <variable name="OutLED_Red" type="BOOL">
    <comment>cervena LEDka</comment>
    </variable>
  </outVariables>
</block>
<node id="41">
  <position x="63" y="28" />
  <connection refid="37">
    <position x="63" y="28" />
    <position x="58" y="28" />
    <position x="58" y="28" />
    <position x="56" y="28" />
  </connection>
</node>
<node id="42">
  <position x="35" y="36" />
  <connection refid="9">
    <position x="35" y="36" />
    <position x="24" y="36" />
    <position x="24" y="36" />
    <position x="20" y="36" />
  </connection>
</node>
<node id="43">
  <position x="37" y="14" />
  <connection refid="23" name="Q">
    <position x="37" y="14" />
    <position x="34" y="14" />
    <position x="34" y="14" />
    <position x="33" y="14" />
  </connection>
</node>
<node id="44">
  <position x="37" y="34" />
  <connection refid="24" name="Q">
    <position x="37" y="34" />
    <position x="35" y="34" />
    <position x="35" y="34" />
    <position x="33" y="34" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="45" height="4" width="3" line="44" order="17">
  <position x="103" y="19" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="36" name="OutLED_Green">
        <position x="103" y="20" />
        <position x="90" y="20" />
        <position x="90" y="24" />
        <position x="85" y="24" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="54">
        <position x="103" y="22" />
        <position x="100" y="22" />
        <position x="100" y="42" />
        <position x="100" y="42" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="46" height="4" width="3" line="50" order="20">
  <position x="103" y="25" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="36" name="OutLED_Red">
        <position x="103" y="26" />
        <position x="90" y="26" />
        <position x="90" y="26" />
        <position x="85" y="26" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="51">
        <position x="103" y="28" />
        <position x="97" y="28" />
        <position x="97" y="49" />
        <position x="97" y="49" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="47" height="4" width="3" line="54" order="23">
  <position x="103" y="39" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="40" name="OutLED_Green">
        <position x="103" y="40" />
        <position x="90" y="40" />
        <position x="90" y="45" />
        <position x="85" y="45" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="54">
        <position x="103" y="42" />
        <position x="101" y="42" />
        <position x="101" y="42" />
        <position x="100" y="42" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="48" height="4" width="3" line="57" order="25">
  <position x="103" y="46" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="40" name="OutLED_Red">
        <position x="103" y="47" />
        <position x="89" y="47" />
        <position x="89" y="47" />
        <position x="85" y="47" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="51">
        <position x="103" y="49" />
        <position x="99" y="49" />
        <position x="99" y="49" />
        <position x="97" y="49" />
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
<block name="TP" instance="tp_pv_1" id="49" height="6" width="6" line="46" order="19">
  <position x="87" y="63" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="50">
        <position x="87" y="66" />
        <position x="35" y="66" />
        <position x="35" y="57" />
        <position x="35" y="57" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="56">
        <position x="87" y="68" />
        <position x="83" y="68" />
        <position x="83" y="68" />
        <position x="81" y="68" />
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
<node id="50">
  <position x="35" y="57" />
  <connection refid="25" name="Q">
    <position x="35" y="57" />
    <position x="32" y="57" />
    <position x="32" y="57" />
    <position x="30" y="57" />
  </connection>
</node>
<node id="51">
  <position x="97" y="49" />
  <connection refid="49" name="Q">
    <position x="97" y="49" />
    <position x="97" y="49" />
    <position x="97" y="66" />
    <position x="93" y="66" />
  </connection>
</node>
<inVariable name="T#1s" type="TIME" id="52">
  <position x="73" y="67" />
</inVariable>
<block name="TP" instance="tp_pv_2" id="53" height="6" width="6" line="40" order="16">
  <position x="87" y="79" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="55">
        <position x="87" y="82" />
        <position x="35" y="82" />
        <position x="35" y="73" />
        <position x="35" y="73" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="56">
        <position x="87" y="84" />
        <position x="81" y="84" />
        <position x="81" y="68" />
        <position x="81" y="68" />
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
<node id="54">
  <position x="100" y="42" />
  <connection refid="53" name="Q">
    <position x="100" y="42" />
    <position x="100" y="42" />
    <position x="100" y="82" />
    <position x="93" y="82" />
  </connection>
</node>
<node id="55">
  <position x="35" y="73" />
  <connection refid="26" name="Q">
    <position x="35" y="73" />
    <position x="32" y="73" />
    <position x="32" y="73" />
    <position x="30" y="73" />
  </connection>
</node>
<node id="56">
  <position x="81" y="68" />
  <connection refid="52">
    <position x="81" y="68" />
    <position x="79" y="68" />
    <position x="79" y="68" />
    <position x="78" y="68" />
  </connection>
</node>
<block name="R_TRIG" instance="trigPV3" id="57" height="4" width="6" line="68" order="30">
  <position x="52" y="96" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="29" name="AND">
        <position x="52" y="99" />
        <position x="51" y="99" />
        <position x="51" y="99" />
        <position x="50" y="99" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<inVariable name="tl_pv_input" type="BOOL" id="58">
  <position x="13" y="140" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="59" height="4" width="4" line="74" order="33">
  <position x="53" y="140" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="62" name="Q">
        <position x="53" y="141" />
        <position x="48" y="141" />
        <position x="48" y="141" />
        <position x="40" y="141" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="61">
        <position x="53" y="143" />
        <position x="44" y="143" />
        <position x="44" y="143" />
        <position x="23" y="143" />
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
<outVariable name="sv_pv_dvere" type="BOOL" id="60" order="34">
  <position x="101" y="140" />
  <connection refid="59" name="XOR">
    <position x="102" y="141" />
    <position x="65" y="141" />
    <position x="65" y="141" />
    <position x="57" y="141" />
  </connection>
</outVariable>
<inVariable name="sv_pv_dvere" type="BOOL" id="61">
  <position x="13" y="142" />
</inVariable>
<block name="R_TRIG" instance="pv_trig_input" id="62" height="4" width="6" line="72" order="32">
  <position x="34" y="138" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="58">
        <position x="34" y="141" />
        <position x="30" y="141" />
        <position x="30" y="141" />
        <position x="22" y="141" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<comment id="63" height="10" width="14">
  <position x="14" y="128" />
ovladani svetla nade dvermi od tlacitka u postele
</comment>
<outVariable name="sig_tl_pokojV" type="BOOL" id="129" order="31">
  <position x="73" y="98" />
  <connection refid="57" name="Q">
    <position x="74" y="99" />
    <position x="62" y="99" />
    <position x="62" y="99" />
    <position x="58" y="99" />
  </connection>
</outVariable>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
(* 550	*)	_Nod_Tmp_19	:	BOOL;
(* 413	*)	_Nod_Tmp_18	:	BOOL;
(* 559	*)	_Nod_Tmp_16	:	BOOL;
(* 541	*)	_Nod_Tmp_15	:	BOOL;
(* 715	*)	_Nod_Tmp_13	:	BOOL;
(* 776	*)	_Nod_Tmp_12	:	BOOL;
(* 532	*)	_Nod_Tmp_11	:	TIME;
(* 785	*)	_Nod_Tmp_10	:	TIME;
(* 767	*)	_Nod_Tmp_9	:	BOOL;
(* 724	*)	_Nod_Tmp_7	:	BOOL;
(* 382	*)	_Nod_Tmp_3	:	BOOL;
END_VAR

//NC
//N000
(* 251	*)	CAL	trigPV1(CLK:=tls_pv_tr)
(* 251	*)	LD 	trigPV1.Q
(* 550	*)	ST	_Nod_Tmp_19
(*  49	*)	LD 	sv_pv_1
(* 413	*)	ST	_Nod_Tmp_18
(*  12	*)	LD 	_Nod_Tmp_19
(*  20	*)	XOR 	_Nod_Tmp_18
(*  40	*)	ST 	sv_pv_1
(* 268	*)	CAL	trigPV2(CLK:=tls_pv_tl)
(* 268	*)	LD 	trigPV2.Q
(* 559	*)	ST	_Nod_Tmp_16
(*  93	*)	LD 	sv_pv_2
(* 541	*)	ST	_Nod_Tmp_15
(*  56	*)	LD 	_Nod_Tmp_16
(*  64	*)	XOR 	_Nod_Tmp_15
(*  84	*)	ST 	sv_pv_2
(* 285	*)	CAL	trigPV4(CLK:=tls_pv_lr)
(* 285	*)	LD 	trigPV4.Q
(* 715	*)	ST	_Nod_Tmp_13
(*  99	*)	CAL	offPV(in:=_Nod_Tmp_13, sig0:=sv_pv_1, sig1:=sv_pv_2)
(*  99	*)	LD 	offPV.sOff0
(* 157	*)	ST 	sv_pv_1
(*  99	*)	LD 	offPV.sOff1
(* 166	*)	ST 	sv_pv_2
(* 302	*)	CAL	trigPV5(CLK:=tll_pv_lr)
(* 302	*)	LD 	trigPV5.Q
(* 776	*)	ST	_Nod_Tmp_12
(* 175	*)	CAL	onPV(in:=_Nod_Tmp_12, sig0:=sv_pv_1, sig1:=sv_pv_2)
(* 175	*)	LD 	onPV.sOff0
(* 230	*)	ST 	sv_pv_1
(* 175	*)	LD 	onPV.sOff1
(* 239	*)	ST 	sv_pv_2
(* 471	*)	LD 	T#0.5s
(* 532	*)	ST	_Nod_Tmp_11
(* 431	*)	CAL	blik_tls_pv_tr(InButton:=_Nod_Tmp_19, InLight:=_Nod_Tmp_18, InTimeOfBlic:=_Nod_Tmp_11)
(* 733	*)	LD 	T#1s
(* 785	*)	ST	_Nod_Tmp_10
(* 736	*)	CAL	tp_pv_2(IN:=_Nod_Tmp_12, PT:=_Nod_Tmp_10)
(* 736	*)	LD 	tp_pv_2.Q
(* 767	*)	ST	_Nod_Tmp_9
(* 572	*)	LD 	blik_tls_pv_tr.OutLED_Green
(* 580	*)	OR 	_Nod_Tmp_9
(* 422	*)	ST 	led_pv_rg
(* 684	*)	CAL	tp_pv_1(IN:=_Nod_Tmp_13, PT:=_Nod_Tmp_10)
(* 684	*)	LD 	tp_pv_1.Q
(* 724	*)	ST	_Nod_Tmp_7
(* 601	*)	LD 	blik_tls_pv_tr.OutLED_Red
(* 609	*)	OR 	_Nod_Tmp_7
(* 404	*)	ST 	led_pv_rr
(* 492	*)	CAL	blik_tls_pv_tl(InButton:=_Nod_Tmp_16, InLight:=_Nod_Tmp_15, InTimeOfBlic:=_Nod_Tmp_11)
(* 630	*)	LD 	blik_tls_pv_tl.OutLED_Green
(* 638	*)	OR 	_Nod_Tmp_9
(* 483	*)	ST 	led_pv_lg
(* 659	*)	LD 	blik_tls_pv_tl.OutLED_Red
(* 667	*)	OR 	_Nod_Tmp_7
(* 474	*)	ST 	led_pv_lr
//N001
(*  96	*)	LD 	tll_pv_ll
(* 382	*)	ST	_Nod_Tmp_3
(* 319	*)	CAL	tonPV(IN:=_Nod_Tmp_3, PT:=T#1s)
(* 319	*)	LD 	tonPV.ET
(* 391	*)	ST 	pomPV
(* 357	*)	LD 	_Nod_Tmp_3
(* 365	*)	AND 	tonPV.Q
(* 794	*)	ST 	trigPV3.CLK
(* 794	*)	CAL	trigPV3()
(* 794	*)	LD 	trigPV3.Q
(* 876	*)	ST 	sig_tl_pokojV
//N002
(* 855	*)	CAL	pv_trig_input(CLK:=tl_pv_input)
(* 818	*)	LD 	pv_trig_input.Q
(* 826	*)	XOR 	sv_pv_dvere
(* 843	*)	ST 	sv_pv_dvere

END_PROGRAM
