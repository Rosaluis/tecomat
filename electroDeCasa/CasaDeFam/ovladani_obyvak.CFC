PROGRAM ovladani_obyvak
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    trigOb1 : R_TRIG;
    trigOb2 : R_TRIG;
    trigOb3 : R_TRIG;
    trigOb4 : R_TRIG;
    offOb : fb_off_SvKoupelna1;
    trigOb5 : R_TRIG;
    onOb : fb_on_SvKoupelna1;
    blik_ob_2 : fb_LED_blik;
    blik_ob_3 : fb_LED_blik;
    tp_ob_1 : TP;
    tp_ob_2 : TP;
    tonOb : TON;
    pomOB : TIME;
    Trig_Ob_6 : R_TRIG;
    Trig_Ob_7 : R_TRIG;
    Trig_Ob_8 : R_TRIG;
    tof_offSvetlaOkna : TOF;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="pokus.xsl" version="1.1"?>
<fbd version="1.1">
<comment id="1" height="4" width="71">
  <position x="9" y="2" />
svetla obyvak a jidelni stul
</comment>
<inVariable name="tls_ob_tl" type="BOOL" id="2">
  <position x="14" y="26" />
</inVariable>
<inVariable name="tls_ob_tr" type="BOOL" id="3">
  <position x="14" y="14" />
</inVariable>
<outVariable name="sv_ob_1" type="BOOL" id="4" order="3">
  <position x="62" y="14" />
  <connection refid="6" name="XOR">
    <position x="63" y="15" />
    <position x="49" y="15" />
    <position x="49" y="15" />
    <position x="45" y="15" />
  </connection>
</outVariable>
<outVariable name="sv_ob_2" type="BOOL" id="5" order="6">
  <position x="62" y="26" />
  <connection refid="8" name="XOR">
    <position x="63" y="27" />
    <position x="47" y="27" />
    <position x="47" y="27" />
    <position x="45" y="27" />
  </connection>
</outVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="6" height="4" width="4" line="9" order="2">
  <position x="41" y="14" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="17">
        <position x="41" y="15" />
        <position x="40" y="15" />
        <position x="40" y="15" />
        <position x="39" y="15" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="18">
        <position x="41" y="17" />
        <position x="39" y="17" />
        <position x="39" y="17" />
        <position x="37" y="17" />
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
<inVariable name="sv_ob_1" type="BOOL" id="7">
  <position x="14" y="16" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="8" height="4" width="4" line="17" order="5">
  <position x="41" y="26" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="14">
        <position x="41" y="27" />
        <position x="40" y="27" />
        <position x="40" y="27" />
        <position x="39" y="27" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="15">
        <position x="41" y="29" />
        <position x="39" y="29" />
        <position x="39" y="29" />
        <position x="37" y="29" />
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
<inVariable name="sv_ob_2" type="BOOL" id="9">
  <position x="14" y="28" />
</inVariable>
<block name="R_TRIG" instance="trigOb1" id="10" height="4" width="6" line="3" order="1">
  <position x="25" y="12" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="3">
        <position x="25" y="15" />
        <position x="24" y="15" />
        <position x="24" y="15" />
        <position x="22" y="15" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="trigOb2" id="11" height="4" width="6" line="11" order="4">
  <position x="25" y="24" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="2">
        <position x="25" y="27" />
        <position x="24" y="27" />
        <position x="24" y="27" />
        <position x="21" y="27" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<outVariable name="ob_led_ob_lg" type="BOOL" id="12" order="11">
  <position x="113" y="33" />
  <connection refid="13" name="OutLED_Green">
    <position x="114" y="34" />
    <position x="113" y="34" />
    <position x="113" y="34" />
    <position x="108" y="34" />
  </connection>
</outVariable>
<block name="fb_LED_blik" instance="blik_ob_2" id="13" height="8" width="19" line="26" order="10">
  <position x="89" y="31" />
  <inVariables>
    <variable name="InButton" type="BOOL">
      <connection refid="14">
        <position x="89" y="34" />
        <position x="39" y="34" />
        <position x="39" y="27" />
        <position x="39" y="27" />
      </connection>
    <comment>signal od tlacitka</comment>
    </variable>
    <variable name="InLight" type="BOOL">
      <connection refid="15">
        <position x="89" y="36" />
        <position x="37" y="36" />
        <position x="37" y="29" />
        <position x="37" y="29" />
      </connection>
    <comment>stav svetla ktere tlacitko ovlada</comment>
    </variable>
    <variable name="InTimeOfBlic" type="TIME">
      <connection refid="22">
        <position x="89" y="38" />
        <position x="81" y="38" />
        <position x="81" y="23" />
        <position x="81" y="23" />
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
<node id="14">
  <position x="39" y="27" />
  <connection refid="11" name="Q">
    <position x="39" y="27" />
    <position x="32" y="27" />
    <position x="32" y="27" />
    <position x="31" y="27" />
  </connection>
</node>
<node id="15">
  <position x="37" y="29" />
  <connection refid="9">
    <position x="37" y="29" />
    <position x="25" y="29" />
    <position x="25" y="29" />
    <position x="21" y="29" />
  </connection>
</node>
<block name="fb_LED_blik" instance="blik_ob_3" id="16" height="8" width="19" line="21" order="7">
  <position x="89" y="16" />
  <inVariables>
    <variable name="InButton" type="BOOL">
      <connection refid="17">
        <position x="89" y="19" />
        <position x="39" y="19" />
        <position x="39" y="15" />
        <position x="39" y="15" />
      </connection>
    <comment>signal od tlacitka</comment>
    </variable>
    <variable name="InLight" type="BOOL">
      <connection refid="18">
        <position x="89" y="21" />
        <position x="37" y="21" />
        <position x="37" y="17" />
        <position x="37" y="17" />
      </connection>
    <comment>stav svetla ktere tlacitko ovlada</comment>
    </variable>
    <variable name="InTimeOfBlic" type="TIME">
      <connection refid="22">
        <position x="89" y="23" />
        <position x="83" y="23" />
        <position x="83" y="23" />
        <position x="81" y="23" />
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
<node id="17">
  <position x="39" y="15" />
  <connection refid="10" name="Q">
    <position x="39" y="15" />
    <position x="32" y="15" />
    <position x="32" y="15" />
    <position x="31" y="15" />
  </connection>
</node>
<node id="18">
  <position x="37" y="17" />
  <connection refid="7">
    <position x="37" y="17" />
    <position x="24" y="17" />
    <position x="24" y="17" />
    <position x="21" y="17" />
  </connection>
</node>
<outVariable name="ob_led_ob_rg" type="BOOL" id="19" order="8">
  <position x="112" y="18" />
  <connection refid="16" name="OutLED_Green">
    <position x="113" y="19" />
    <position x="110" y="19" />
    <position x="110" y="19" />
    <position x="108" y="19" />
  </connection>
</outVariable>
<outVariable name="ob_led_ob_rr" type="BOOL" id="20" order="9">
  <position x="112" y="20" />
  <connection refid="16" name="OutLED_Red">
    <position x="113" y="21" />
    <position x="112" y="21" />
    <position x="112" y="21" />
    <position x="108" y="21" />
  </connection>
</outVariable>
<inVariable name="T#0.5s" type="TIME" id="21">
  <position x="70" y="22" />
</inVariable>
<node id="22">
  <position x="81" y="23" />
  <connection refid="21">
    <position x="81" y="23" />
    <position x="79" y="23" />
    <position x="79" y="23" />
    <position x="77" y="23" />
  </connection>
</node>
<outVariable name="ob_led_ob_lr" type="BOOL" id="23" order="12">
  <position x="114" y="35" />
  <connection refid="13" name="OutLED_Red">
    <position x="115" y="36" />
    <position x="111" y="36" />
    <position x="111" y="36" />
    <position x="108" y="36" />
  </connection>
</outVariable>
<inVariable name="tll_ob_lr" type="BOOL" id="24">
  <position x="13" y="79" />
</inVariable>
<block name="TON" instance="tonOb" id="25" height="6" width="6" line="34" order="13">
  <position x="34" y="77" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="28">
        <position x="34" y="80" />
        <position x="32" y="80" />
        <position x="32" y="80" />
        <position x="30" y="80" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="26">
        <position x="34" y="82" />
        <position x="32" y="82" />
        <position x="32" y="82" />
        <position x="31" y="82" />
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
<inVariable name="T#1s" type="TIME" id="26">
  <position x="26" y="81" />
</inVariable>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="27" height="4" width="4" line="38" order="15">
  <position x="46" y="73" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="28">
        <position x="46" y="74" />
        <position x="30" y="74" />
        <position x="30" y="80" />
        <position x="30" y="80" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="25" name="Q">
        <position x="46" y="76" />
        <position x="41" y="76" />
        <position x="41" y="80" />
        <position x="40" y="80" />
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
<node id="28">
  <position x="30" y="80" />
  <connection refid="24">
    <position x="30" y="80" />
    <position x="26" y="80" />
    <position x="26" y="80" />
    <position x="20" y="80" />
  </connection>
</node>
<outVariable name="pomOB" type="TIME" id="29" order="14">
  <position x="44" y="81" />
  <connection refid="25" name="ET">
    <position x="45" y="82" />
    <position x="41" y="82" />
    <position x="41" y="82" />
    <position x="40" y="82" />
  </connection>
</outVariable>
<block name="R_TRIG" instance="trigOb3" id="30" height="4" width="6" line="40" order="16">
  <position x="52" y="71" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="27" name="AND">
        <position x="52" y="74" />
        <position x="51" y="74" />
        <position x="51" y="74" />
        <position x="50" y="74" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<comment id="31" height="10" width="14">
  <position x="13" y="67" />
pokud podrzi tlacitko leve-dolni na&gt;3s tak se zapne/vypne venkovni svetlo
</comment>
<block name="R_TRIG" instance="Trig_Ob_6" id="32" height="4" width="6" line="32" order="13" disabled="1">
  <position x="34" y="44" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="33" disabled="1">
        <position x="34" y="47" />
        <position x="31" y="47" />
        <position x="31" y="47" />
        <position x="27" y="47" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<inVariable name="tl_kuchyne_okna" type="BOOL" id="33" disabled="1">
  <position x="14" y="46" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="34" height="4" width="4" line="34" order="14" disabled="1">
  <position x="64" y="46" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="32" name="Q" disabled="1">
        <position x="64" y="47" />
        <position x="47" y="47" />
        <position x="47" y="47" />
        <position x="40" y="47" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="36" disabled="1">
        <position x="64" y="49" />
        <position x="61" y="49" />
        <position x="61" y="49" />
        <position x="60" y="49" />
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
<outVariable name="sv_ku_okna" type="BOOL" id="35" order="15" disabled="1">
  <position x="92" y="46" />
  <connection refid="34" name="XOR" disabled="1">
    <position x="93" y="47" />
    <position x="72" y="47" />
    <position x="72" y="47" />
    <position x="68" y="47" />
  </connection>
</outVariable>
<inVariable name="sv_ku_okna" type="BOOL" id="36" disabled="1">
  <position x="50" y="48" />
</inVariable>
<block name="R_TRIG" instance="Trig_Ob_7" id="37" height="4" width="6" line="44" order="18">
  <position x="38" y="89" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="38">
        <position x="38" y="92" />
        <position x="35" y="92" />
        <position x="35" y="92" />
        <position x="31" y="92" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<inVariable name="tl_kuchyne_vchod_vlevo" type="BOOL" id="38">
  <position x="13" y="91" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="39" height="4" width="4" line="46" order="19">
  <position x="71" y="91" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="37" name="Q">
        <position x="71" y="92" />
        <position x="51" y="92" />
        <position x="51" y="92" />
        <position x="44" y="92" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="41">
        <position x="71" y="94" />
        <position x="68" y="94" />
        <position x="68" y="94" />
        <position x="67" y="94" />
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
<outVariable name="sv_ku_linka" type="BOOL" id="40" order="20">
  <position x="80" y="91" />
  <connection refid="39" name="XOR">
    <position x="81" y="92" />
    <position x="76" y="92" />
    <position x="76" y="92" />
    <position x="75" y="92" />
  </connection>
</outVariable>
<inVariable name="sv_ku_linka" type="BOOL" id="41">
  <position x="58" y="93" />
</inVariable>
<inVariable name="tls_ob_ll" type="BOOL" id="42" disabled="1">
  <position x="14" y="58" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="43" height="4" width="4" line="39" order="17" disabled="1">
  <position x="64" y="58" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="46" name="Q" disabled="1">
        <position x="64" y="59" />
        <position x="50" y="59" />
        <position x="50" y="59" />
        <position x="40" y="59" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="45" disabled="1">
        <position x="64" y="61" />
        <position x="62" y="61" />
        <position x="62" y="61" />
        <position x="60" y="61" />
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
<outVariable name="sv_ku_dvere" type="BOOL" id="44" order="18" disabled="1">
  <position x="92" y="58" />
  <connection refid="43" name="XOR" disabled="1">
    <position x="93" y="59" />
    <position x="70" y="59" />
    <position x="70" y="59" />
    <position x="68" y="59" />
  </connection>
</outVariable>
<inVariable name="sv_ku_dvere" type="BOOL" id="45" disabled="1">
  <position x="50" y="60" />
</inVariable>
<block name="R_TRIG" instance="Trig_Ob_8" id="46" height="4" width="6" line="37" order="16" disabled="1">
  <position x="34" y="56" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="42" disabled="1">
        <position x="34" y="59" />
        <position x="33" y="59" />
        <position x="33" y="59" />
        <position x="21" y="59" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<outVariable name="sig_tl_obyvak" type="BOOL" id="47" order="17">
  <position x="75" y="73" />
  <connection refid="30" name="Q">
    <position x="76" y="74" />
    <position x="60" y="74" />
    <position x="60" y="74" />
    <position x="58" y="74" />
  </connection>
</outVariable>
<inVariable name="tls_ob_ll" type="BOOL" id="92" disabled="1">
  <position x="18" y="177" />
</inVariable>
<block name="R_TRIG" instance="trigOb4" id="93" height="4" width="6" disabled="1">
  <position x="29" y="175" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="92" disabled="1">
        <position x="29" y="178" />
        <position x="26" y="178" />
        <position x="26" y="178" />
        <position x="25" y="178" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="fb_off_SvKoupelna1" instance="offOb" id="94" height="10" width="15" disabled="1">
  <position x="45" y="175" />
  <inVariables>
    <variable name="in" type="BOOL">
      <connection refid="107" disabled="1">
        <position x="45" y="178" />
        <position x="43" y="178" />
        <position x="43" y="178" />
        <position x="42" y="178" />
      </connection>
    <comment>vstup od tlačítka</comment>
    </variable>
    <variable name="sig0" type="BOOL">
      <connection refid="96" disabled="1">
        <position x="45" y="180" />
        <position x="36" y="180" />
        <position x="36" y="180" />
        <position x="25" y="180" />
      </connection>
    <comment>vstup stavu svetla 0</comment>
    </variable>
    <variable name="sig1" type="BOOL">
      <connection refid="98" disabled="1">
        <position x="45" y="182" />
        <position x="36" y="182" />
        <position x="36" y="182" />
        <position x="25" y="182" />
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
<outVariable name="sv_ob_1" type="BOOL" id="95" disabled="1">
  <position x="69" y="179" />
  <connection refid="94" name="sOff0" disabled="1">
    <position x="70" y="180" />
    <position x="65" y="180" />
    <position x="65" y="180" />
    <position x="60" y="180" />
  </connection>
</outVariable>
<inVariable name="sv_ob_1" type="BOOL" id="96" disabled="1">
  <position x="18" y="179" />
</inVariable>
<outVariable name="sv_ob_2" type="BOOL" id="97" disabled="1">
  <position x="69" y="181" />
  <connection refid="94" name="sOff1" disabled="1">
    <position x="70" y="182" />
    <position x="65" y="182" />
    <position x="65" y="182" />
    <position x="60" y="182" />
  </connection>
</outVariable>
<inVariable name="sv_ob_2" type="BOOL" id="98" disabled="1">
  <position x="18" y="181" />
</inVariable>
<inVariable name="tll_ob_ll" type="BOOL" id="99" disabled="1">
  <position x="18" y="197" />
</inVariable>
<block name="R_TRIG" instance="trigOb5" id="100" height="4" width="6" disabled="1">
  <position x="29" y="195" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="99" disabled="1">
        <position x="29" y="198" />
        <position x="26" y="198" />
        <position x="26" y="198" />
        <position x="25" y="198" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<outVariable name="sv_ob_1" type="BOOL" id="101" disabled="1">
  <position x="69" y="199" />
  <connection refid="105" name="sOff0" disabled="1">
    <position x="70" y="200" />
    <position x="63" y="200" />
    <position x="63" y="200" />
    <position x="60" y="200" />
  </connection>
</outVariable>
<inVariable name="sv_ob_1" type="BOOL" id="102" disabled="1">
  <position x="18" y="199" />
</inVariable>
<outVariable name="sv_ob_2" type="BOOL" id="103" disabled="1">
  <position x="69" y="201" />
  <connection refid="105" name="sOff1" disabled="1">
    <position x="70" y="202" />
    <position x="63" y="202" />
    <position x="63" y="202" />
    <position x="60" y="202" />
  </connection>
</outVariable>
<inVariable name="sv_ob_2" type="BOOL" id="104" disabled="1">
  <position x="18" y="201" />
</inVariable>
<block name="fb_on_SvKoupelna1" instance="onOb" id="105" height="10" width="15" disabled="1">
  <position x="45" y="195" />
  <inVariables>
    <variable name="in" type="BOOL">
      <connection refid="111" disabled="1">
        <position x="45" y="198" />
        <position x="43" y="198" />
        <position x="43" y="198" />
        <position x="42" y="198" />
      </connection>
    <comment>vstup od tlačítka</comment>
    </variable>
    <variable name="sig0" type="BOOL">
      <connection refid="102" disabled="1">
        <position x="45" y="200" />
        <position x="35" y="200" />
        <position x="35" y="200" />
        <position x="25" y="200" />
      </connection>
    <comment>vstup stavu svetla 0</comment>
    </variable>
    <variable name="sig1" type="BOOL">
      <connection refid="104" disabled="1">
        <position x="45" y="202" />
        <position x="34" y="202" />
        <position x="34" y="202" />
        <position x="25" y="202" />
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
<block name="TP" instance="tp_ob_1" id="106" height="6" width="6" disabled="1">
  <position x="93" y="184" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="107" disabled="1">
        <position x="93" y="187" />
        <position x="42" y="187" />
        <position x="42" y="178" />
        <position x="42" y="178" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="110" disabled="1">
        <position x="93" y="189" />
        <position x="89" y="189" />
        <position x="89" y="189" />
        <position x="87" y="189" />
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
<node id="107" disabled="1">
  <position x="42" y="178" />
  <connection refid="93" name="Q" disabled="1">
    <position x="42" y="178" />
    <position x="41" y="178" />
    <position x="41" y="178" />
    <position x="35" y="178" />
  </connection>
</node>
<inVariable name="T#1s" type="TIME" id="108" disabled="1">
  <position x="78" y="188" />
</inVariable>
<block name="TP" instance="tp_ob_2" id="109" height="6" width="6" disabled="1">
  <position x="93" y="204" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="111" disabled="1">
        <position x="93" y="207" />
        <position x="42" y="207" />
        <position x="42" y="198" />
        <position x="42" y="198" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="110" disabled="1">
        <position x="93" y="209" />
        <position x="87" y="209" />
        <position x="87" y="189" />
        <position x="87" y="189" />
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
<node id="110" disabled="1">
  <position x="87" y="189" />
  <connection refid="108" disabled="1">
    <position x="87" y="189" />
    <position x="85" y="189" />
    <position x="85" y="189" />
    <position x="83" y="189" />
  </connection>
</node>
<node id="111" disabled="1">
  <position x="42" y="198" />
  <connection refid="100" name="Q" disabled="1">
    <position x="42" y="198" />
    <position x="38" y="198" />
    <position x="38" y="198" />
    <position x="35" y="198" />
  </connection>
</node>
<comment id="112" height="3" width="51">
  <position x="19" y="168" />
Zruseno centralni zapinani a vypinani svetel v obyvaku
</comment>
<comment id="134" height="3" width="62">
  <position x="15" y="39" />
Jednoduche rizeni svetel nade dvermi a mezi okny.
</comment>
<block name="R_TRIG" instance="Trig_Ob_6" id="136" height="4" width="6" line="49" order="21">
  <position x="28" y="105" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="137">
        <position x="28" y="108" />
        <position x="27" y="108" />
        <position x="27" y="108" />
        <position x="25" y="108" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<inVariable name="tl_kuchyne_okna" type="BOOL" id="137">
  <position x="12" y="107" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="138" height="4" width="4" line="63" order="25">
  <position x="63" y="116" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="152" name="OR">
        <position x="63" y="117" />
        <position x="57" y="117" />
        <position x="57" y="108" />
        <position x="55" y="108" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="168">
        <position x="63" y="119" />
        <position x="42" y="119" />
        <position x="42" y="119" />
        <position x="39" y="119" />
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
<outVariable name="sv_ku_okna" type="BOOL" id="139" order="26">
  <position x="79" y="116" />
  <connection refid="138" name="XOR">
    <position x="80" y="117" />
    <position x="71" y="117" />
    <position x="71" y="117" />
    <position x="67" y="117" />
  </connection>
</outVariable>
<inVariable name="sv_ku_okna" type="BOOL" id="140">
  <position x="12" y="118" />
</inVariable>
<inVariable name="tls_ob_ll" type="BOOL" id="141">
  <position x="13" y="129" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="142" height="4" width="4" line="66" order="27">
  <position x="63" y="129" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="177">
        <position x="63" y="130" />
        <position x="49" y="130" />
        <position x="49" y="130" />
        <position x="42" y="130" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="144">
        <position x="63" y="132" />
        <position x="61" y="132" />
        <position x="61" y="132" />
        <position x="23" y="132" />
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
<outVariable name="sv_ku_dvere" type="BOOL" id="143" order="28">
  <position x="79" y="129" />
  <connection refid="142" name="XOR">
    <position x="80" y="130" />
    <position x="69" y="130" />
    <position x="69" y="130" />
    <position x="67" y="130" />
  </connection>
</outVariable>
<inVariable name="sv_ku_dvere" type="BOOL" id="144">
  <position x="13" y="131" />
</inVariable>
<block name="R_TRIG" instance="Trig_Ob_8" id="145" height="4" width="6" line="52" order="22">
  <position x="28" y="127" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="141">
        <position x="28" y="130" />
        <position x="27" y="130" />
        <position x="27" y="130" />
        <position x="20" y="130" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="152" height="4" width="3" line="60" order="24">
  <position x="52" y="107" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="136" name="Q">
        <position x="52" y="108" />
        <position x="41" y="108" />
        <position x="41" y="108" />
        <position x="34" y="108" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="160" name="AND">
        <position x="52" y="110" />
        <position x="51" y="110" />
        <position x="51" y="110" />
        <position x="50" y="110" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="160" height="6" width="4" line="57" order="23">
  <position x="46" y="109" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="168">
        <position x="46" y="110" />
        <position x="39" y="110" />
        <position x="39" y="119" />
        <position x="39" y="119" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="177">
        <position x="46" y="112" />
        <position x="42" y="112" />
        <position x="42" y="130" />
        <position x="42" y="130" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="171">
        <position x="46" y="114" />
        <position x="33" y="114" />
        <position x="33" y="114" />
        <position x="22" y="114" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="AND" type="ANY_BIT">
    <comment>
	Bitwise AND
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<node id="168">
  <position x="39" y="119" />
  <connection refid="140">
    <position x="39" y="119" />
    <position x="30" y="119" />
    <position x="30" y="119" />
    <position x="22" y="119" />
  </connection>
</node>
<inVariable name="sv_ku_dvere" type="BOOL" id="171">
  <position x="12" y="113" />
</inVariable>
<node id="177">
  <position x="42" y="130" />
  <connection refid="145" name="Q">
    <position x="42" y="130" />
    <position x="38" y="130" />
    <position x="38" y="130" />
    <position x="34" y="130" />
  </connection>
</node>
<comment id="178" height="3" width="92">
  <position x="12" y="99" />
Rozsveceni je klasika, ale kdyz sviti svetlo nade dvermi a zaroven i mezi okny, tak zhasnutim toho nade dvermi zhasne i to mezi okny.
</comment>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
(* 237	*)	_Nod_Tmp_16	:	BOOL;
(* 246	*)	_Nod_Tmp_15	:	BOOL;
(* 179	*)	_Nod_Tmp_13	:	BOOL;
(* 188	*)	_Nod_Tmp_12	:	BOOL;
(* 276	*)	_Nod_Tmp_10	:	TIME;
(* 360	*)	_Nod_Tmp_9	:	BOOL;
(*1067	*)	_Nod_Tmp_6	:	BOOL;
(*1079	*)	_Nod_Tmp_5	:	BOOL;
(* 999	*)	_Fun_Tmp_IN2_3_2	:	BOOL;
(* 897	*)	_Fun_Tmp_IN1_2_1	:	BOOL;
END_VAR

//NC
//N000
(*  96	*)	CAL	trigOb1(CLK:=tls_ob_tr)
(*  96	*)	LD 	trigOb1.Q
(* 237	*)	ST	_Nod_Tmp_16
(*  61	*)	LD 	sv_ob_1
(* 246	*)	ST	_Nod_Tmp_15
(*  36	*)	LD 	_Nod_Tmp_16
(*  44	*)	XOR 	_Nod_Tmp_15
(*  14	*)	ST 	sv_ob_1
(* 113	*)	CAL	trigOb2(CLK:=tls_ob_tl)
(* 113	*)	LD 	trigOb2.Q
(* 179	*)	ST	_Nod_Tmp_13
(*  93	*)	LD 	sv_ob_2
(* 188	*)	ST	_Nod_Tmp_12
(*  68	*)	LD 	_Nod_Tmp_13
(*  76	*)	XOR 	_Nod_Tmp_12
(*  23	*)	ST 	sv_ob_2
(* 273	*)	LD 	T#0.5s
(* 276	*)	ST	_Nod_Tmp_10
(* 197	*)	CAL	blik_ob_3(InButton:=_Nod_Tmp_16, InLight:=_Nod_Tmp_15, InTimeOfBlic:=_Nod_Tmp_10)
(* 197	*)	LD 	blik_ob_3.OutLED_Green
(* 255	*)	ST 	ob_led_ob_rg
(* 197	*)	LD 	blik_ob_3.OutLED_Red
(* 264	*)	ST 	ob_led_ob_rr
(* 139	*)	CAL	blik_ob_2(InButton:=_Nod_Tmp_13, InLight:=_Nod_Tmp_12, InTimeOfBlic:=_Nod_Tmp_10)
(* 139	*)	LD 	blik_ob_2.OutLED_Green
(* 130	*)	ST 	ob_led_ob_lg
(* 139	*)	LD 	blik_ob_2.OutLED_Red
(* 285	*)	ST 	ob_led_ob_lr
//N001
(* 294	*)	LD 	tll_ob_lr
(* 360	*)	ST	_Nod_Tmp_9
(* 297	*)	CAL	tonOb(IN:=_Nod_Tmp_9, PT:=T#1s)
(* 297	*)	LD 	tonOb.ET
(* 369	*)	ST 	pomOB
(* 335	*)	LD 	_Nod_Tmp_9
(* 343	*)	AND 	tonOb.Q
(* 378	*)	ST 	trigOb3.CLK
(* 378	*)	CAL	trigOb3()
(* 378	*)	LD 	trigOb3.Q
(* 582	*)	ST 	sig_tl_obyvak
//N002
(* 460	*)	CAL	Trig_Ob_7(CLK:=tl_kuchyne_vchod_vlevo)
(* 484	*)	LD 	Trig_Ob_7.Q
(* 492	*)	XOR 	sv_ku_linka
(* 509	*)	ST 	sv_ku_linka
//N003
(* 877	*)	CAL	Trig_Ob_6(CLK:=tl_kuchyne_okna)
(* 935	*)	LD 	sv_ku_okna
(*1067	*)	ST	_Nod_Tmp_6
(* 982	*)	CAL	Trig_Ob_8(CLK:=tls_ob_ll)
(* 982	*)	LD 	Trig_Ob_8.Q
(*1079	*)	ST	_Nod_Tmp_5
(*1033	*)	LD 	_Nod_Tmp_6
(*1041	*)	AND 	_Nod_Tmp_5
(*1049	*)	AND 	sv_ku_dvere
(*1011	*)	ST 	_Fun_Tmp_IN2_3_2
(*1003	*)	LD 	Trig_Ob_6.Q
(*1011	*)	OR 	_Fun_Tmp_IN2_3_2
(* 901	*)	ST 	_Fun_Tmp_IN1_2_1
(* 901	*)	LD 	_Fun_Tmp_IN1_2_1
(* 909	*)	XOR 	_Nod_Tmp_6
(* 926	*)	ST 	sv_ku_okna
(* 945	*)	LD 	_Nod_Tmp_5
(* 953	*)	XOR 	sv_ku_dvere
(* 970	*)	ST 	sv_ku_dvere

END_PROGRAM
