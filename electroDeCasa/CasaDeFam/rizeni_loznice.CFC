PROGRAM rizeni_loznice
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    trigLo1 : R_TRIG;
    trigLo2 : R_TRIG;
    trigLo3 : R_TRIG;
    trigLo4 : R_TRIG;
    trigLo5 : R_TRIG;
    offLo : fb_off_SvKoupelna1;
    onLo : fb_on_SvKoupelna1;
    tonLo1 : TON;
    pomTonLo : TIME;
    blik_loznice_1 : fb_LED_blik;
    blik_loznice_2 : fb_LED_blik;
    tp_lo_1 : TP;
    tp_lo_2 : TP;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="pokus.xsl" version="1.1"?>
<fbd version="1.1">
<comment id="1" height="3" width="60">
  <position x="2" y="2" />
ovladani svetel loznice, vcetne venkovniho na zapad (do zahrady)
</comment>
<block name="R_TRIG" instance="trigLo1" id="2" height="4" width="6" line="27" order="12">
  <position x="29" y="15" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="7">
        <position x="29" y="18" />
        <position x="23" y="18" />
        <position x="23" y="18" />
        <position x="17" y="18" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="trigLo2" id="3" height="4" width="6" line="3" order="1">
  <position x="29" y="35" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="8">
        <position x="29" y="38" />
        <position x="22" y="38" />
        <position x="22" y="38" />
        <position x="17" y="38" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="trigLo3" id="4" height="4" width="6" line="11" order="4">
  <position x="29" y="56" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="9">
        <position x="29" y="59" />
        <position x="22" y="59" />
        <position x="22" y="59" />
        <position x="16" y="59" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="trigLo4" id="5" height="4" width="6" line="19" order="8">
  <position x="29" y="74" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="10">
        <position x="29" y="77" />
        <position x="21" y="77" />
        <position x="21" y="77" />
        <position x="16" y="77" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="trigLo5" id="6" height="4" width="6" line="68" order="30">
  <position x="56" y="95" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="31" name="AND">
        <position x="56" y="98" />
        <position x="50" y="98" />
        <position x="50" y="98" />
        <position x="46" y="98" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<inVariable name="tls_lo_tl" type="BOOL" id="7">
  <position x="10" y="17" />
</inVariable>
<inVariable name="tls_lo_tr" type="BOOL" id="8">
  <position x="10" y="37" />
</inVariable>
<inVariable name="tls_lo_ll" type="BOOL" id="9">
  <position x="10" y="58" />
</inVariable>
<inVariable name="tll_lo_ll" type="BOOL" id="10">
  <position x="10" y="76" />
</inVariable>
<inVariable name="tll_lo_lr" type="BOOL" id="11">
  <position x="10" y="100" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="12" height="4" width="4" line="33" order="13">
  <position x="40" y="17" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="34">
        <position x="40" y="18" />
        <position x="39" y="18" />
        <position x="39" y="18" />
        <position x="38" y="18" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="35">
        <position x="40" y="20" />
        <position x="38" y="20" />
        <position x="38" y="20" />
        <position x="36" y="20" />
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
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="13" height="4" width="4" line="9" order="2">
  <position x="40" y="37" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="40">
        <position x="40" y="38" />
        <position x="39" y="38" />
        <position x="39" y="38" />
        <position x="38" y="38" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="41">
        <position x="40" y="40" />
        <position x="38" y="40" />
        <position x="38" y="40" />
        <position x="36" y="40" />
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
<outVariable name="sv_lo_1" type="BOOL" id="14" order="14">
  <position x="67" y="17" />
  <connection refid="12" name="XOR">
    <position x="68" y="18" />
    <position x="49" y="18" />
    <position x="49" y="18" />
    <position x="44" y="18" />
  </connection>
</outVariable>
<outVariable name="sv_lo_2" type="BOOL" id="15" order="3">
  <position x="66" y="37" />
  <connection refid="13" name="XOR">
    <position x="67" y="38" />
    <position x="51" y="38" />
    <position x="51" y="38" />
    <position x="44" y="38" />
  </connection>
</outVariable>
<block name="fb_off_SvKoupelna1" instance="offLo" id="16" height="10" width="15" line="14" order="5">
  <position x="43" y="56" />
  <inVariables>
    <variable name="in" type="BOOL">
      <connection refid="50">
        <position x="43" y="59" />
        <position x="41" y="59" />
        <position x="41" y="59" />
        <position x="39" y="59" />
      </connection>
    <comment>vstup od tlačítka</comment>
    </variable>
    <variable name="sig0" type="BOOL">
      <connection refid="19">
        <position x="43" y="61" />
        <position x="34" y="61" />
        <position x="34" y="61" />
        <position x="17" y="61" />
      </connection>
    <comment>vstup stavu svetla 0</comment>
    </variable>
    <variable name="sig1" type="BOOL">
      <connection refid="20">
        <position x="43" y="63" />
        <position x="34" y="63" />
        <position x="34" y="63" />
        <position x="17" y="63" />
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
<outVariable name="sv_lo_1" type="BOOL" id="17" order="6">
  <position x="66" y="60" />
  <connection refid="16" name="sOff0">
    <position x="67" y="61" />
    <position x="61" y="61" />
    <position x="61" y="61" />
    <position x="58" y="61" />
  </connection>
</outVariable>
<outVariable name="sv_lo_2" type="BOOL" id="18" order="7">
  <position x="66" y="62" />
  <connection refid="16" name="sOff1">
    <position x="67" y="63" />
    <position x="61" y="63" />
    <position x="61" y="63" />
    <position x="58" y="63" />
  </connection>
</outVariable>
<inVariable name="sv_lo_1" type="BOOL" id="19">
  <position x="10" y="60" />
</inVariable>
<inVariable name="sv_lo_2" type="BOOL" id="20">
  <position x="10" y="62" />
</inVariable>
<block name="fb_on_SvKoupelna1" instance="onLo" id="21" height="10" width="15" line="22" order="9">
  <position x="43" y="74" />
  <inVariables>
    <variable name="in" type="BOOL">
      <connection refid="54">
        <position x="43" y="77" />
        <position x="40" y="77" />
        <position x="40" y="77" />
        <position x="39" y="77" />
      </connection>
    <comment>vstup od tlačítka</comment>
    </variable>
    <variable name="sig0" type="BOOL">
      <connection refid="24">
        <position x="43" y="79" />
        <position x="30" y="79" />
        <position x="30" y="79" />
        <position x="17" y="79" />
      </connection>
    <comment>vstup stavu svetla 0</comment>
    </variable>
    <variable name="sig1" type="BOOL">
      <connection refid="25">
        <position x="43" y="81" />
        <position x="30" y="81" />
        <position x="30" y="81" />
        <position x="17" y="81" />
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
<outVariable name="sv_lo_1" type="BOOL" id="22" order="10">
  <position x="66" y="78" />
  <connection refid="21" name="sOff0">
    <position x="67" y="79" />
    <position x="66" y="79" />
    <position x="66" y="79" />
    <position x="58" y="79" />
  </connection>
</outVariable>
<outVariable name="sv_lo_2" type="BOOL" id="23" order="11">
  <position x="66" y="80" />
  <connection refid="21" name="sOff1">
    <position x="67" y="81" />
    <position x="61" y="81" />
    <position x="61" y="81" />
    <position x="58" y="81" />
  </connection>
</outVariable>
<inVariable name="sv_lo_1" type="BOOL" id="24">
  <position x="10" y="78" />
</inVariable>
<inVariable name="sv_lo_2" type="BOOL" id="25">
  <position x="10" y="80" />
</inVariable>
<inVariable name="sv_lo_1" type="BOOL" id="26">
  <position x="10" y="19" />
</inVariable>
<inVariable name="sv_lo_2" type="BOOL" id="27">
  <position x="10" y="39" />
</inVariable>
<block name="TON" instance="tonLo1" id="28" height="6" width="6" line="62" order="27">
  <position x="27" y="100" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="32">
        <position x="27" y="103" />
        <position x="25" y="103" />
        <position x="25" y="103" />
        <position x="24" y="103" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="29">
        <position x="27" y="105" />
        <position x="24" y="105" />
        <position x="24" y="105" />
        <position x="23" y="105" />
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
<inVariable name="T#1s" type="TIME" id="29">
  <position x="18" y="104" />
</inVariable>
<outVariable name="pomTonLo" type="TIME" id="30" order="28">
  <position x="35" y="104" />
  <connection refid="28" name="ET">
    <position x="36" y="105" />
    <position x="34" y="105" />
    <position x="34" y="105" />
    <position x="33" y="105" />
  </connection>
</outVariable>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="31" height="4" width="4" line="66" order="29">
  <position x="42" y="97" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="32">
        <position x="42" y="98" />
        <position x="24" y="98" />
        <position x="24" y="103" />
        <position x="24" y="103" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="28" name="Q">
        <position x="42" y="100" />
        <position x="36" y="100" />
        <position x="36" y="103" />
        <position x="33" y="103" />
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
<node id="32">
  <position x="24" y="103" />
  <connection refid="11">
    <position x="24" y="103" />
    <position x="21" y="103" />
    <position x="21" y="101" />
    <position x="16" y="101" />
  </connection>
</node>
<block name="fb_LED_blik" instance="blik_loznice_1" id="33" height="8" width="19" line="37" order="15">
  <position x="89" y="22" />
  <inVariables>
    <variable name="InButton" type="BOOL">
      <connection refid="34">
        <position x="89" y="25" />
        <position x="38" y="25" />
        <position x="38" y="18" />
        <position x="38" y="18" />
      </connection>
    <comment>signal od tlacitka</comment>
    </variable>
    <variable name="InLight" type="BOOL">
      <connection refid="35">
        <position x="89" y="27" />
        <position x="36" y="27" />
        <position x="36" y="20" />
        <position x="36" y="20" />
      </connection>
    <comment>stav svetla ktere tlacitko ovlada</comment>
    </variable>
    <variable name="InTimeOfBlic" type="TIME">
      <connection refid="44">
        <position x="89" y="29" />
        <position x="88" y="29" />
        <position x="88" y="29" />
        <position x="86" y="29" />
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
<node id="34">
  <position x="38" y="18" />
  <connection refid="2" name="Q">
    <position x="38" y="18" />
    <position x="36" y="18" />
    <position x="36" y="18" />
    <position x="35" y="18" />
  </connection>
</node>
<node id="35">
  <position x="36" y="20" />
  <connection refid="26">
    <position x="36" y="20" />
    <position x="28" y="20" />
    <position x="28" y="20" />
    <position x="17" y="20" />
  </connection>
</node>
<inVariable name="T#0.5s" type="TIME" id="36">
  <position x="75" y="28" />
</inVariable>
<outVariable name="led_lo_lg" type="BOOL" id="37" order="18">
  <position x="127" y="17" />
  <connection refid="45" name="OR">
    <position x="128" y="18" />
    <position x="125" y="18" />
    <position x="125" y="18" />
    <position x="124" y="18" />
  </connection>
</outVariable>
<outVariable name="led_lo_lr" type="BOOL" id="38" order="24">
  <position x="128" y="26" />
  <connection refid="46" name="OR">
    <position x="129" y="27" />
    <position x="125" y="27" />
    <position x="125" y="27" />
    <position x="124" y="27" />
  </connection>
</outVariable>
<block name="fb_LED_blik" instance="blik_loznice_2" id="39" height="8" width="19" line="46" order="19">
  <position x="89" y="40" />
  <inVariables>
    <variable name="InButton" type="BOOL">
      <connection refid="40">
        <position x="89" y="43" />
        <position x="38" y="43" />
        <position x="38" y="38" />
        <position x="38" y="38" />
      </connection>
    <comment>signal od tlacitka</comment>
    </variable>
    <variable name="InLight" type="BOOL">
      <connection refid="41">
        <position x="89" y="45" />
        <position x="36" y="45" />
        <position x="36" y="40" />
        <position x="36" y="40" />
      </connection>
    <comment>stav svetla ktere tlacitko ovlada</comment>
    </variable>
    <variable name="InTimeOfBlic" type="TIME">
      <connection refid="44">
        <position x="89" y="47" />
        <position x="86" y="47" />
        <position x="86" y="29" />
        <position x="86" y="29" />
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
<node id="40">
  <position x="38" y="38" />
  <connection refid="3" name="Q">
    <position x="38" y="38" />
    <position x="36" y="38" />
    <position x="36" y="38" />
    <position x="35" y="38" />
  </connection>
</node>
<node id="41">
  <position x="36" y="40" />
  <connection refid="27">
    <position x="36" y="40" />
    <position x="28" y="40" />
    <position x="28" y="40" />
    <position x="17" y="40" />
  </connection>
</node>
<outVariable name="led_lo_rg" type="BOOL" id="42" order="21">
  <position x="127" y="36" />
  <connection refid="47" name="OR">
    <position x="128" y="37" />
    <position x="125" y="37" />
    <position x="125" y="37" />
    <position x="124" y="37" />
  </connection>
</outVariable>
<outVariable name="led_lo_rr" type="BOOL" id="43" order="26">
  <position x="128" y="44" />
  <connection refid="48" name="OR">
    <position x="129" y="45" />
    <position x="125" y="45" />
    <position x="125" y="45" />
    <position x="124" y="45" />
  </connection>
</outVariable>
<node id="44">
  <position x="86" y="29" />
  <connection refid="36">
    <position x="86" y="29" />
    <position x="84" y="29" />
    <position x="84" y="29" />
    <position x="82" y="29" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="45" height="4" width="3" line="44" order="17">
  <position x="121" y="17" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="33" name="OutLED_Green">
        <position x="121" y="18" />
        <position x="113" y="18" />
        <position x="113" y="25" />
        <position x="108" y="25" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="55">
        <position x="121" y="20" />
        <position x="117" y="20" />
        <position x="117" y="39" />
        <position x="117" y="39" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="46" height="4" width="3" line="54" order="23">
  <position x="121" y="26" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="33" name="OutLED_Red">
        <position x="121" y="27" />
        <position x="113" y="27" />
        <position x="113" y="27" />
        <position x="108" y="27" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="52">
        <position x="121" y="29" />
        <position x="119" y="29" />
        <position x="119" y="47" />
        <position x="119" y="47" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="47" height="4" width="3" line="48" order="20">
  <position x="121" y="36" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="39" name="OutLED_Green">
        <position x="121" y="37" />
        <position x="113" y="37" />
        <position x="113" y="43" />
        <position x="108" y="43" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="55">
        <position x="121" y="39" />
        <position x="118" y="39" />
        <position x="118" y="39" />
        <position x="117" y="39" />
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
  <position x="121" y="44" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="39" name="OutLED_Red">
        <position x="121" y="45" />
        <position x="113" y="45" />
        <position x="113" y="45" />
        <position x="108" y="45" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="52">
        <position x="121" y="47" />
        <position x="120" y="47" />
        <position x="120" y="47" />
        <position x="119" y="47" />
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
<block name="TP" instance="tp_lo_1" id="49" height="6" width="6" line="50" order="22">
  <position x="95" y="65" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="50">
        <position x="95" y="68" />
        <position x="39" y="68" />
        <position x="39" y="59" />
        <position x="39" y="59" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="56">
        <position x="95" y="70" />
        <position x="94" y="70" />
        <position x="94" y="70" />
        <position x="93" y="70" />
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
  <position x="39" y="59" />
  <connection refid="4" name="Q">
    <position x="39" y="59" />
    <position x="38" y="59" />
    <position x="38" y="59" />
    <position x="35" y="59" />
  </connection>
</node>
<inVariable name="T#1s" type="TIME" id="51">
  <position x="83" y="69" />
</inVariable>
<node id="52">
  <position x="119" y="47" />
  <connection refid="49" name="ET">
    <position x="119" y="47" />
    <position x="119" y="47" />
    <position x="119" y="70" />
    <position x="101" y="70" />
  </connection>
</node>
<block name="TP" instance="tp_lo_2" id="53" height="6" width="6" line="40" order="16">
  <position x="95" y="84" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="54">
        <position x="95" y="87" />
        <position x="39" y="87" />
        <position x="39" y="77" />
        <position x="39" y="77" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="56">
        <position x="95" y="89" />
        <position x="93" y="89" />
        <position x="93" y="70" />
        <position x="93" y="70" />
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
  <position x="39" y="77" />
  <connection refid="5" name="Q">
    <position x="39" y="77" />
    <position x="37" y="77" />
    <position x="37" y="77" />
    <position x="35" y="77" />
  </connection>
</node>
<node id="55">
  <position x="117" y="39" />
  <connection refid="53" name="Q">
    <position x="117" y="39" />
    <position x="117" y="39" />
    <position x="117" y="87" />
    <position x="101" y="87" />
  </connection>
</node>
<node id="56">
  <position x="93" y="70" />
  <connection refid="51">
    <position x="93" y="70" />
    <position x="89" y="70" />
    <position x="89" y="70" />
    <position x="88" y="70" />
  </connection>
</node>
<outVariable name="sig_tl_loznice" type="BOOL" id="117" order="31">
  <position x="83" y="97" />
  <connection refid="6" name="Q">
    <position x="84" y="98" />
    <position x="63" y="98" />
    <position x="63" y="98" />
    <position x="62" y="98" />
  </connection>
</outVariable>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
(* 536	*)	_Nod_Tmp_18	:	BOOL;
(* 545	*)	_Nod_Tmp_17	:	BOOL;
(* 728	*)	_Nod_Tmp_15	:	BOOL;
(* 780	*)	_Nod_Tmp_14	:	BOOL;
(* 457	*)	_Nod_Tmp_13	:	BOOL;
(* 466	*)	_Nod_Tmp_12	:	BOOL;
(* 572	*)	_Nod_Tmp_10	:	TIME;
(* 798	*)	_Nod_Tmp_9	:	TIME;
(* 789	*)	_Nod_Tmp_8	:	BOOL;
(* 740	*)	_Nod_Tmp_5	:	BOOL;
(* 408	*)	_Nod_Tmp_2	:	BOOL;
END_VAR

//NC
//N000
(*  25	*)	CAL	trigLo2(CLK:=tls_lo_tr)
(*  25	*)	LD 	trigLo2.Q
(* 536	*)	ST	_Nod_Tmp_18
(* 333	*)	LD 	sv_lo_2
(* 545	*)	ST	_Nod_Tmp_17
(* 141	*)	LD 	_Nod_Tmp_18
(* 149	*)	XOR 	_Nod_Tmp_17
(* 175	*)	ST 	sv_lo_2
(*  42	*)	CAL	trigLo3(CLK:=tls_lo_ll)
(*  42	*)	LD 	trigLo3.Q
(* 728	*)	ST	_Nod_Tmp_15
(* 184	*)	CAL	offLo(in:=_Nod_Tmp_15, sig0:=sv_lo_1, sig1:=sv_lo_2)
(* 184	*)	LD 	offLo.sOff0
(* 233	*)	ST 	sv_lo_1
(* 184	*)	LD 	offLo.sOff1
(* 242	*)	ST 	sv_lo_2
(*  59	*)	CAL	trigLo4(CLK:=tll_lo_ll)
(*  59	*)	LD 	trigLo4.Q
(* 780	*)	ST	_Nod_Tmp_14
(* 257	*)	CAL	onLo(in:=_Nod_Tmp_14, sig0:=sv_lo_1, sig1:=sv_lo_2)
(* 257	*)	LD 	onLo.sOff0
(* 306	*)	ST 	sv_lo_1
(* 257	*)	LD 	onLo.sOff1
(* 315	*)	ST 	sv_lo_2
(*   8	*)	CAL	trigLo1(CLK:=tls_lo_tl)
(*   8	*)	LD 	trigLo1.Q
(* 457	*)	ST	_Nod_Tmp_13
(* 330	*)	LD 	sv_lo_1
(* 466	*)	ST	_Nod_Tmp_12
(* 112	*)	LD 	_Nod_Tmp_13
(* 120	*)	XOR 	_Nod_Tmp_12
(* 166	*)	ST 	sv_lo_1
(* 475	*)	LD 	T#0.5s
(* 572	*)	ST	_Nod_Tmp_10
(* 417	*)	CAL	blik_loznice_1(InButton:=_Nod_Tmp_13, InLight:=_Nod_Tmp_12, InTimeOfBlic:=_Nod_Tmp_10)
(* 737	*)	LD 	T#1s
(* 798	*)	ST	_Nod_Tmp_9
(* 749	*)	CAL	tp_lo_2(IN:=_Nod_Tmp_14, PT:=_Nod_Tmp_9)
(* 749	*)	LD 	tp_lo_2.Q
(* 789	*)	ST	_Nod_Tmp_8
(* 585	*)	LD 	blik_loznice_1.OutLED_Green
(* 593	*)	OR 	_Nod_Tmp_8
(* 478	*)	ST 	led_lo_lg
(* 496	*)	CAL	blik_loznice_2(InButton:=_Nod_Tmp_18, InLight:=_Nod_Tmp_17, InTimeOfBlic:=_Nod_Tmp_10)
(* 643	*)	LD 	blik_loznice_2.OutLED_Green
(* 651	*)	OR 	_Nod_Tmp_8
(* 554	*)	ST 	led_lo_rg
(* 697	*)	CAL	tp_lo_1(IN:=_Nod_Tmp_15, PT:=_Nod_Tmp_9)
(* 697	*)	LD 	tp_lo_1.ET
(* 740	*)	ST	_Nod_Tmp_5
(* 614	*)	LD 	blik_loznice_1.OutLED_Red
(* 622	*)	OR 	_Nod_Tmp_5
(* 487	*)	ST 	led_lo_lr
(* 672	*)	LD 	blik_loznice_2.OutLED_Red
(* 680	*)	OR 	_Nod_Tmp_5
(* 563	*)	ST 	led_lo_rr
//N001
(* 105	*)	LD 	tll_lo_lr
(* 408	*)	ST	_Nod_Tmp_2
(* 336	*)	CAL	tonLo1(IN:=_Nod_Tmp_2, PT:=T#1s)
(* 336	*)	LD 	tonLo1.ET
(* 370	*)	ST 	pomTonLo
(* 383	*)	LD 	_Nod_Tmp_2
(* 391	*)	AND 	tonLo1.Q
(*  76	*)	ST 	trigLo5.CLK
(*  76	*)	CAL	trigLo5()
(*  76	*)	LD 	trigLo5.Q
(* 807	*)	ST 	sig_tl_loznice

END_PROGRAM
