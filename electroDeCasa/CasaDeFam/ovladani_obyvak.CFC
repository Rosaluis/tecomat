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
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="pokus.xsl" version="1.1"?>
<fbd version="1.1">
<comment id="1" height="7" width="71">
  <position x="9" y="2" />
svetla obyvak a jidelni stul
</comment>
<inVariable name="tls_ob_ll" type="BOOL" id="2" disabled="1">
  <position x="14" y="61" />
</inVariable>
<inVariable name="tls_ob_tl" type="BOOL" id="3">
  <position x="14" y="26" />
</inVariable>
<inVariable name="tls_ob_tr" type="BOOL" id="4">
  <position x="14" y="14" />
</inVariable>
<outVariable name="sv_ob_1" type="BOOL" id="5" order="3">
  <position x="62" y="14" />
  <connection refid="7" name="XOR">
    <position x="63" y="15" />
    <position x="49" y="15" />
    <position x="49" y="15" />
    <position x="45" y="15" />
  </connection>
</outVariable>
<outVariable name="sv_ob_2" type="BOOL" id="6" order="6">
  <position x="62" y="26" />
  <connection refid="9" name="XOR">
    <position x="63" y="27" />
    <position x="47" y="27" />
    <position x="47" y="27" />
    <position x="45" y="27" />
  </connection>
</outVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="7" height="4" width="4" line="9" order="2">
  <position x="41" y="14" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="31">
        <position x="41" y="15" />
        <position x="40" y="15" />
        <position x="40" y="15" />
        <position x="39" y="15" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="32">
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
<inVariable name="sv_ob_1" type="BOOL" id="8">
  <position x="14" y="16" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="9" height="4" width="4" line="17" order="5">
  <position x="41" y="26" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="28">
        <position x="41" y="27" />
        <position x="40" y="27" />
        <position x="40" y="27" />
        <position x="39" y="27" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="29">
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
<inVariable name="sv_ob_2" type="BOOL" id="10">
  <position x="14" y="28" />
</inVariable>
<block name="R_TRIG" instance="trigOb1" id="11" height="4" width="6" line="3" order="1">
  <position x="25" y="12" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="4">
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
<block name="R_TRIG" instance="trigOb2" id="12" height="4" width="6" line="11" order="4">
  <position x="25" y="24" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="3">
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
<block name="R_TRIG" instance="trigOb4" id="13" height="4" width="6" disabled="1">
  <position x="25" y="59" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="2" disabled="1">
        <position x="25" y="62" />
        <position x="22" y="62" />
        <position x="22" y="62" />
        <position x="21" y="62" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="fb_off_SvKoupelna1" instance="offOb" id="14" height="10" width="15" disabled="1">
  <position x="41" y="59" />
  <inVariables>
    <variable name="in" type="BOOL">
      <connection refid="38" disabled="1">
        <position x="41" y="62" />
        <position x="39" y="62" />
        <position x="39" y="62" />
        <position x="38" y="62" />
      </connection>
    <comment>vstup od tlačítka</comment>
    </variable>
    <variable name="sig0" type="BOOL">
      <connection refid="16" disabled="1">
        <position x="41" y="64" />
        <position x="32" y="64" />
        <position x="32" y="64" />
        <position x="21" y="64" />
      </connection>
    <comment>vstup stavu svetla 0</comment>
    </variable>
    <variable name="sig1" type="BOOL">
      <connection refid="18" disabled="1">
        <position x="41" y="66" />
        <position x="32" y="66" />
        <position x="32" y="66" />
        <position x="21" y="66" />
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
<outVariable name="sv_ob_1" type="BOOL" id="15" disabled="1">
  <position x="65" y="63" />
  <connection refid="14" name="sOff0" disabled="1">
    <position x="66" y="64" />
    <position x="61" y="64" />
    <position x="61" y="64" />
    <position x="56" y="64" />
  </connection>
</outVariable>
<inVariable name="sv_ob_1" type="BOOL" id="16" disabled="1">
  <position x="14" y="63" />
</inVariable>
<outVariable name="sv_ob_2" type="BOOL" id="17" disabled="1">
  <position x="65" y="65" />
  <connection refid="14" name="sOff1" disabled="1">
    <position x="66" y="66" />
    <position x="61" y="66" />
    <position x="61" y="66" />
    <position x="56" y="66" />
  </connection>
</outVariable>
<inVariable name="sv_ob_2" type="BOOL" id="18" disabled="1">
  <position x="14" y="65" />
</inVariable>
<inVariable name="tll_ob_ll" type="BOOL" id="19" disabled="1">
  <position x="14" y="81" />
</inVariable>
<block name="R_TRIG" instance="trigOb5" id="20" height="4" width="6" disabled="1">
  <position x="25" y="79" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="19" disabled="1">
        <position x="25" y="82" />
        <position x="22" y="82" />
        <position x="22" y="82" />
        <position x="21" y="82" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<outVariable name="sv_ob_1" type="BOOL" id="21" disabled="1">
  <position x="65" y="83" />
  <connection refid="25" name="sOff0" disabled="1">
    <position x="66" y="84" />
    <position x="59" y="84" />
    <position x="59" y="84" />
    <position x="56" y="84" />
  </connection>
</outVariable>
<inVariable name="sv_ob_1" type="BOOL" id="22" disabled="1">
  <position x="14" y="83" />
</inVariable>
<outVariable name="sv_ob_2" type="BOOL" id="23" disabled="1">
  <position x="65" y="85" />
  <connection refid="25" name="sOff1" disabled="1">
    <position x="66" y="86" />
    <position x="59" y="86" />
    <position x="59" y="86" />
    <position x="56" y="86" />
  </connection>
</outVariable>
<inVariable name="sv_ob_2" type="BOOL" id="24" disabled="1">
  <position x="14" y="85" />
</inVariable>
<block name="fb_on_SvKoupelna1" instance="onOb" id="25" height="10" width="15" disabled="1">
  <position x="41" y="79" />
  <inVariables>
    <variable name="in" type="BOOL">
      <connection refid="42" disabled="1">
        <position x="41" y="82" />
        <position x="39" y="82" />
        <position x="39" y="82" />
        <position x="38" y="82" />
      </connection>
    <comment>vstup od tlačítka</comment>
    </variable>
    <variable name="sig0" type="BOOL">
      <connection refid="22" disabled="1">
        <position x="41" y="84" />
        <position x="31" y="84" />
        <position x="31" y="84" />
        <position x="21" y="84" />
      </connection>
    <comment>vstup stavu svetla 0</comment>
    </variable>
    <variable name="sig1" type="BOOL">
      <connection refid="24" disabled="1">
        <position x="41" y="86" />
        <position x="30" y="86" />
        <position x="30" y="86" />
        <position x="21" y="86" />
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
<outVariable name="ob_led_ob_lg" type="BOOL" id="26" order="11">
  <position x="113" y="33" />
  <connection refid="27" name="OutLED_Green">
    <position x="114" y="34" />
    <position x="113" y="34" />
    <position x="113" y="34" />
    <position x="108" y="34" />
  </connection>
</outVariable>
<block name="fb_LED_blik" instance="blik_ob_2" id="27" height="8" width="19" line="26" order="10">
  <position x="89" y="31" />
  <inVariables>
    <variable name="InButton" type="BOOL">
      <connection refid="28">
        <position x="89" y="34" />
        <position x="39" y="34" />
        <position x="39" y="27" />
        <position x="39" y="27" />
      </connection>
    <comment>signal od tlacitka</comment>
    </variable>
    <variable name="InLight" type="BOOL">
      <connection refid="29">
        <position x="89" y="36" />
        <position x="37" y="36" />
        <position x="37" y="29" />
        <position x="37" y="29" />
      </connection>
    <comment>stav svetla ktere tlacitko ovlada</comment>
    </variable>
    <variable name="InTimeOfBlic" type="TIME">
      <connection refid="36">
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
<node id="28">
  <position x="39" y="27" />
  <connection refid="12" name="Q">
    <position x="39" y="27" />
    <position x="32" y="27" />
    <position x="32" y="27" />
    <position x="31" y="27" />
  </connection>
</node>
<node id="29">
  <position x="37" y="29" />
  <connection refid="10">
    <position x="37" y="29" />
    <position x="25" y="29" />
    <position x="25" y="29" />
    <position x="21" y="29" />
  </connection>
</node>
<block name="fb_LED_blik" instance="blik_ob_3" id="30" height="8" width="19" line="21" order="7">
  <position x="89" y="16" />
  <inVariables>
    <variable name="InButton" type="BOOL">
      <connection refid="31">
        <position x="89" y="19" />
        <position x="39" y="19" />
        <position x="39" y="15" />
        <position x="39" y="15" />
      </connection>
    <comment>signal od tlacitka</comment>
    </variable>
    <variable name="InLight" type="BOOL">
      <connection refid="32">
        <position x="89" y="21" />
        <position x="37" y="21" />
        <position x="37" y="17" />
        <position x="37" y="17" />
      </connection>
    <comment>stav svetla ktere tlacitko ovlada</comment>
    </variable>
    <variable name="InTimeOfBlic" type="TIME">
      <connection refid="36">
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
<node id="31">
  <position x="39" y="15" />
  <connection refid="11" name="Q">
    <position x="39" y="15" />
    <position x="32" y="15" />
    <position x="32" y="15" />
    <position x="31" y="15" />
  </connection>
</node>
<node id="32">
  <position x="37" y="17" />
  <connection refid="8">
    <position x="37" y="17" />
    <position x="24" y="17" />
    <position x="24" y="17" />
    <position x="21" y="17" />
  </connection>
</node>
<outVariable name="ob_led_ob_rg" type="BOOL" id="33" order="8">
  <position x="112" y="18" />
  <connection refid="30" name="OutLED_Green">
    <position x="113" y="19" />
    <position x="110" y="19" />
    <position x="110" y="19" />
    <position x="108" y="19" />
  </connection>
</outVariable>
<outVariable name="ob_led_ob_rr" type="BOOL" id="34" order="9">
  <position x="112" y="20" />
  <connection refid="30" name="OutLED_Red">
    <position x="113" y="21" />
    <position x="112" y="21" />
    <position x="112" y="21" />
    <position x="108" y="21" />
  </connection>
</outVariable>
<inVariable name="T#0.5s" type="TIME" id="35">
  <position x="70" y="22" />
</inVariable>
<node id="36">
  <position x="81" y="23" />
  <connection refid="35">
    <position x="81" y="23" />
    <position x="79" y="23" />
    <position x="79" y="23" />
    <position x="77" y="23" />
  </connection>
</node>
<block name="TP" instance="tp_ob_1" id="37" height="6" width="6" disabled="1">
  <position x="89" y="68" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="38" disabled="1">
        <position x="89" y="71" />
        <position x="38" y="71" />
        <position x="38" y="62" />
        <position x="38" y="62" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="41" disabled="1">
        <position x="89" y="73" />
        <position x="85" y="73" />
        <position x="85" y="73" />
        <position x="83" y="73" />
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
<node id="38" disabled="1">
  <position x="38" y="62" />
  <connection refid="13" name="Q" disabled="1">
    <position x="38" y="62" />
    <position x="37" y="62" />
    <position x="37" y="62" />
    <position x="31" y="62" />
  </connection>
</node>
<inVariable name="T#1s" type="TIME" id="39" disabled="1">
  <position x="74" y="72" />
</inVariable>
<block name="TP" instance="tp_ob_2" id="40" height="6" width="6" disabled="1">
  <position x="89" y="88" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="42" disabled="1">
        <position x="89" y="91" />
        <position x="38" y="91" />
        <position x="38" y="82" />
        <position x="38" y="82" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="41" disabled="1">
        <position x="89" y="93" />
        <position x="83" y="93" />
        <position x="83" y="73" />
        <position x="83" y="73" />
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
<node id="41" disabled="1">
  <position x="83" y="73" />
  <connection refid="39" disabled="1">
    <position x="83" y="73" />
    <position x="81" y="73" />
    <position x="81" y="73" />
    <position x="79" y="73" />
  </connection>
</node>
<node id="42" disabled="1">
  <position x="38" y="82" />
  <connection refid="20" name="Q" disabled="1">
    <position x="38" y="82" />
    <position x="34" y="82" />
    <position x="34" y="82" />
    <position x="31" y="82" />
  </connection>
</node>
<outVariable name="ob_led_ob_lr" type="BOOL" id="43" order="12">
  <position x="114" y="35" />
  <connection refid="27" name="OutLED_Red">
    <position x="115" y="36" />
    <position x="111" y="36" />
    <position x="111" y="36" />
    <position x="108" y="36" />
  </connection>
</outVariable>
<inVariable name="tll_ob_lr" type="BOOL" id="44">
  <position x="14" y="118" />
</inVariable>
<block name="TON" instance="tonOb" id="45" height="6" width="6" line="34" order="13">
  <position x="35" y="116" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="48">
        <position x="35" y="119" />
        <position x="33" y="119" />
        <position x="33" y="119" />
        <position x="31" y="119" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="46">
        <position x="35" y="121" />
        <position x="33" y="121" />
        <position x="33" y="121" />
        <position x="32" y="121" />
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
<inVariable name="T#1s" type="TIME" id="46">
  <position x="27" y="120" />
</inVariable>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="47" height="4" width="4" line="38" order="15">
  <position x="47" y="112" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="48">
        <position x="47" y="113" />
        <position x="31" y="113" />
        <position x="31" y="119" />
        <position x="31" y="119" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="45" name="Q">
        <position x="47" y="115" />
        <position x="42" y="115" />
        <position x="42" y="119" />
        <position x="41" y="119" />
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
<node id="48">
  <position x="31" y="119" />
  <connection refid="44">
    <position x="31" y="119" />
    <position x="27" y="119" />
    <position x="27" y="119" />
    <position x="21" y="119" />
  </connection>
</node>
<outVariable name="pomOB" type="TIME" id="49" order="14">
  <position x="45" y="120" />
  <connection refid="45" name="ET">
    <position x="46" y="121" />
    <position x="42" y="121" />
    <position x="42" y="121" />
    <position x="41" y="121" />
  </connection>
</outVariable>
<block name="R_TRIG" instance="trigOb3" id="50" height="4" width="6" line="40" order="16">
  <position x="53" y="110" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="47" name="AND">
        <position x="53" y="113" />
        <position x="52" y="113" />
        <position x="52" y="113" />
        <position x="51" y="113" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<comment id="51" height="10" width="14">
  <position x="14" y="106" />
pokud podrzi tlacitko leve-dolni na&gt;3s tak se zapne/vypne venkovni svetlo
</comment>
<block name="R_TRIG" instance="Trig_Ob_6" id="52" height="4" width="6" line="44" order="18">
  <position x="34" y="134" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="53">
        <position x="34" y="137" />
        <position x="31" y="137" />
        <position x="31" y="137" />
        <position x="27" y="137" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<inVariable name="tl_kuchyne_okna" type="BOOL" id="53">
  <position x="14" y="136" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="54" height="4" width="4" line="46" order="19">
  <position x="67" y="136" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="52" name="Q">
        <position x="67" y="137" />
        <position x="47" y="137" />
        <position x="47" y="137" />
        <position x="40" y="137" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="56">
        <position x="67" y="139" />
        <position x="64" y="139" />
        <position x="64" y="139" />
        <position x="63" y="139" />
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
<outVariable name="sv_ku_okna" type="BOOL" id="55" order="20">
  <position x="76" y="136" />
  <connection refid="54" name="XOR">
    <position x="77" y="137" />
    <position x="72" y="137" />
    <position x="72" y="137" />
    <position x="71" y="137" />
  </connection>
</outVariable>
<inVariable name="sv_ku_okna" type="BOOL" id="56">
  <position x="53" y="138" />
</inVariable>
<block name="R_TRIG" instance="Trig_Ob_7" id="57" height="4" width="6" line="49" order="21">
  <position x="39" y="146" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="58">
        <position x="39" y="149" />
        <position x="36" y="149" />
        <position x="36" y="149" />
        <position x="32" y="149" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<inVariable name="tl_kuchyne_vchod_vlevo" type="BOOL" id="58">
  <position x="14" y="148" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="59" height="4" width="4" line="51" order="22">
  <position x="72" y="148" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="57" name="Q">
        <position x="72" y="149" />
        <position x="52" y="149" />
        <position x="52" y="149" />
        <position x="45" y="149" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="61">
        <position x="72" y="151" />
        <position x="69" y="151" />
        <position x="69" y="151" />
        <position x="68" y="151" />
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
<outVariable name="sv_ku_linka" type="BOOL" id="60" order="23">
  <position x="81" y="148" />
  <connection refid="59" name="XOR">
    <position x="82" y="149" />
    <position x="77" y="149" />
    <position x="77" y="149" />
    <position x="76" y="149" />
  </connection>
</outVariable>
<inVariable name="sv_ku_linka" type="BOOL" id="61">
  <position x="59" y="150" />
</inVariable>
<inVariable name="tls_ob_ll" type="BOOL" id="62">
  <position x="14" y="159" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="63" height="4" width="4" line="56" order="25">
  <position x="50" y="159" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="66" name="Q">
        <position x="50" y="160" />
        <position x="43" y="160" />
        <position x="43" y="160" />
        <position x="33" y="160" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="65">
        <position x="50" y="162" />
        <position x="48" y="162" />
        <position x="48" y="162" />
        <position x="46" y="162" />
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
<outVariable name="sv_ku_dvere" type="BOOL" id="64" order="26">
  <position x="65" y="159" />
  <connection refid="63" name="XOR">
    <position x="66" y="160" />
    <position x="58" y="160" />
    <position x="58" y="160" />
    <position x="54" y="160" />
  </connection>
</outVariable>
<inVariable name="sv_ku_dvere" type="BOOL" id="65">
  <position x="36" y="161" />
</inVariable>
<block name="R_TRIG" instance="Trig_Ob_8" id="66" height="4" width="6" line="54" order="24">
  <position x="27" y="157" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="62">
        <position x="27" y="160" />
        <position x="26" y="160" />
        <position x="26" y="160" />
        <position x="21" y="160" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<comment id="67" height="3" width="51">
  <position x="15" y="52" />
Zruseno centralni zapinani a vypinani svetel v obyvaku
</comment>
<outVariable name="sig_tl_obyvak" type="BOOL" id="68" order="17">
  <position x="76" y="112" />
  <connection refid="50" name="Q">
    <position x="77" y="113" />
    <position x="61" y="113" />
    <position x="61" y="113" />
    <position x="59" y="113" />
  </connection>
</outVariable>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
(* 423	*)	_Nod_Tmp_12	:	BOOL;
(* 432	*)	_Nod_Tmp_11	:	BOOL;
(* 365	*)	_Nod_Tmp_9	:	BOOL;
(* 374	*)	_Nod_Tmp_8	:	BOOL;
(* 462	*)	_Nod_Tmp_6	:	TIME;
(* 638	*)	_Nod_Tmp_5	:	BOOL;
END_VAR

//NC
//N000
(*  99	*)	CAL	trigOb1(CLK:=tls_ob_tr)
(*  99	*)	LD 	trigOb1.Q
(* 423	*)	ST	_Nod_Tmp_12
(*  64	*)	LD 	sv_ob_1
(* 432	*)	ST	_Nod_Tmp_11
(*  39	*)	LD 	_Nod_Tmp_12
(*  47	*)	XOR 	_Nod_Tmp_11
(*  17	*)	ST 	sv_ob_1
(* 116	*)	CAL	trigOb2(CLK:=tls_ob_tl)
(* 116	*)	LD 	trigOb2.Q
(* 365	*)	ST	_Nod_Tmp_9
(*  96	*)	LD 	sv_ob_2
(* 374	*)	ST	_Nod_Tmp_8
(*  71	*)	LD 	_Nod_Tmp_9
(*  79	*)	XOR 	_Nod_Tmp_8
(*  26	*)	ST 	sv_ob_2
(* 459	*)	LD 	T#0.5s
(* 462	*)	ST	_Nod_Tmp_6
(* 383	*)	CAL	blik_ob_3(InButton:=_Nod_Tmp_12, InLight:=_Nod_Tmp_11, InTimeOfBlic:=_Nod_Tmp_6)
(* 383	*)	LD 	blik_ob_3.OutLED_Green
(* 441	*)	ST 	ob_led_ob_rg
(* 383	*)	LD 	blik_ob_3.OutLED_Red
(* 450	*)	ST 	ob_led_ob_rr
(* 325	*)	CAL	blik_ob_2(InButton:=_Nod_Tmp_9, InLight:=_Nod_Tmp_8, InTimeOfBlic:=_Nod_Tmp_6)
(* 325	*)	LD 	blik_ob_2.OutLED_Green
(* 316	*)	ST 	ob_led_ob_lg
(* 325	*)	LD 	blik_ob_2.OutLED_Red
(* 563	*)	ST 	ob_led_ob_lr
//N001
(* 572	*)	LD 	tll_ob_lr
(* 638	*)	ST	_Nod_Tmp_5
(* 575	*)	CAL	tonOb(IN:=_Nod_Tmp_5, PT:=T#1s)
(* 575	*)	LD 	tonOb.ET
(* 647	*)	ST 	pomOB
(* 613	*)	LD 	_Nod_Tmp_5
(* 621	*)	AND 	tonOb.Q
(* 656	*)	ST 	trigOb3.CLK
(* 656	*)	CAL	trigOb3()
(* 656	*)	LD 	trigOb3.Q
(* 864	*)	ST 	sig_tl_obyvak
//N002
(* 677	*)	CAL	Trig_Ob_6(CLK:=tl_kuchyne_okna)
(* 701	*)	LD 	Trig_Ob_6.Q
(* 709	*)	XOR 	sv_ku_okna
(* 726	*)	ST 	sv_ku_okna
//N003
(* 738	*)	CAL	Trig_Ob_7(CLK:=tl_kuchyne_vchod_vlevo)
(* 762	*)	LD 	Trig_Ob_7.Q
(* 770	*)	XOR 	sv_ku_linka
(* 787	*)	ST 	sv_ku_linka
//N004
(* 843	*)	CAL	Trig_Ob_8(CLK:=tls_ob_ll)
(* 806	*)	LD 	Trig_Ob_8.Q
(* 814	*)	XOR 	sv_ku_dvere
(* 831	*)	ST 	sv_ku_dvere

END_PROGRAM
