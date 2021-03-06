PROGRAM ovladani_koupelna2
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    trigKo2_2 : R_TRIG;
    trigKo2_1 : R_TRIG;
    trigKo2_3 : R_TRIG;
    trigKo2_4 : R_TRIG;
    trigOnKo2_1 : R_TRIG;
    tp_ko2_2 : TP;
    tp_ko2_1 : TP;
    onKo2 : fb_on_SvKoupelna1;
    offKo2 : fb_off_SvKoupelna1;
    blik_ko2_1 : fb_LED_blik;
    blik_ko2_3 : fb_LED_blik;
    blik_ko2_2 : fb_LED_blik;
    kmit_Ko2 : fb_kmitac;
    
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="pokus.xsl" version="1.1"?>
<fbd version="1.1">
<comment id="1" height="3" width="12">
  <position x="2" y="2" />
Koment�� ke sch�matu
</comment>
<inVariable name="tls_k2_ll" type="BOOL" id="2">
  <position x="10" y="41" />
</inVariable>
<inVariable name="tls_k2_lr" type="BOOL" id="3">
  <position x="12" y="86" />
</inVariable>
<inVariable name="tls_k2_tr" type="BOOL" id="4">
  <position x="10" y="12" />
</inVariable>
<inVariable name="tls_k2_tl" type="BOOL" id="5">
  <position x="10" y="27" />
</inVariable>
<outVariable name="sv_k2_1" type="BOOL" id="6" order="6">
  <position x="52" y="27" />
  <connection refid="68">
    <position x="53" y="28" />
    <position x="50" y="28" />
    <position x="50" y="28" />
    <position x="47" y="28" />
  </connection>
</outVariable>
<outVariable name="sv_k2_2" type="BOOL" id="7" order="3">
  <position x="52" y="12" />
  <connection refid="69">
    <position x="53" y="13" />
    <position x="48" y="13" />
    <position x="48" y="13" />
    <position x="45" y="13" />
  </connection>
</outVariable>
<outVariable name="sv_k2_3" type="BOOL" id="8" order="9">
  <position x="52" y="41" />
  <connection refid="67">
    <position x="53" y="42" />
    <position x="50" y="42" />
    <position x="50" y="42" />
    <position x="49" y="42" />
  </connection>
</outVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="9" height="4" width="4" line="18" order="5">
  <position x="35" y="27" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="45">
        <position x="35" y="28" />
        <position x="34" y="28" />
        <position x="34" y="28" />
        <position x="33" y="28" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="46">
        <position x="35" y="30" />
        <position x="32" y="30" />
        <position x="32" y="30" />
        <position x="30" y="30" />
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
<inVariable name="sv_k2_1" type="BOOL" id="10">
  <position x="10" y="29" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="11" height="4" width="4" line="9" order="2">
  <position x="35" y="12" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="40">
        <position x="35" y="13" />
        <position x="34" y="13" />
        <position x="34" y="13" />
        <position x="33" y="13" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="41">
        <position x="35" y="15" />
        <position x="32" y="15" />
        <position x="32" y="15" />
        <position x="30" y="15" />
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
<inVariable name="sv_k2_2" type="BOOL" id="12">
  <position x="10" y="14" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="13" height="4" width="4" line="27" order="8">
  <position x="35" y="41" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="36">
        <position x="35" y="42" />
        <position x="34" y="42" />
        <position x="34" y="42" />
        <position x="33" y="42" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="52">
        <position x="35" y="44" />
        <position x="32" y="44" />
        <position x="32" y="44" />
        <position x="30" y="44" />
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
<inVariable name="sv_k2_3" type="BOOL" id="14">
  <position x="10" y="43" />
</inVariable>
<block name="R_TRIG" instance="trigKo2_1" id="15" height="4" width="6" line="12" order="4">
  <position x="21" y="25" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="5">
        <position x="21" y="28" />
        <position x="20" y="28" />
        <position x="20" y="28" />
        <position x="17" y="28" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="trigKo2_2" id="16" height="4" width="6" line="3" order="1">
  <position x="21" y="10" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="4">
        <position x="21" y="13" />
        <position x="20" y="13" />
        <position x="20" y="13" />
        <position x="18" y="13" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="trigKo2_3" id="17" height="4" width="6" line="21" order="7">
  <position x="21" y="39" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="2">
        <position x="21" y="42" />
        <position x="19" y="42" />
        <position x="19" y="42" />
        <position x="17" y="42" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="trigKo2_4" id="18" height="4" width="6" line="30" order="10">
  <position x="23" y="84" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="3">
        <position x="23" y="87" />
        <position x="20" y="87" />
        <position x="20" y="87" />
        <position x="19" y="87" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="fb_off_SvKoupelna1" instance="offKo2" id="19" height="10" width="15" line="33" order="11">
  <position x="33" y="84" />
  <inVariables>
    <variable name="in" type="BOOL">
      <connection refid="56">
        <position x="33" y="87" />
        <position x="32" y="87" />
        <position x="32" y="87" />
        <position x="31" y="87" />
      </connection>
    <comment>vstup od tla��tka</comment>
    </variable>
    <variable name="sig0" type="BOOL">
      <connection refid="21">
        <position x="33" y="89" />
        <position x="31" y="89" />
        <position x="31" y="89" />
        <position x="19" y="89" />
      </connection>
    <comment>vstup stavu svetla 0</comment>
    </variable>
    <variable name="sig1" type="BOOL">
      <connection refid="24">
        <position x="33" y="91" />
        <position x="31" y="91" />
        <position x="31" y="91" />
        <position x="19" y="91" />
      </connection>
    <comment>vstup stavu svetla 1</comment>
    </variable>
    <variable name="sig2" type="BOOL">
      <connection refid="25">
        <position x="33" y="93" />
        <position x="31" y="93" />
        <position x="31" y="93" />
        <position x="19" y="93" />
      </connection>
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
<outVariable name="sv_k2_1" type="BOOL" id="20" order="12">
  <position x="54" y="88" />
  <connection refid="19" name="sOff0">
    <position x="55" y="89" />
    <position x="50" y="89" />
    <position x="50" y="89" />
    <position x="48" y="89" />
  </connection>
</outVariable>
<inVariable name="sv_k2_1" type="BOOL" id="21">
  <position x="12" y="88" />
</inVariable>
<outVariable name="sv_k2_2" type="BOOL" id="22" order="13">
  <position x="54" y="90" />
  <connection refid="19" name="sOff1">
    <position x="55" y="91" />
    <position x="50" y="91" />
    <position x="50" y="91" />
    <position x="48" y="91" />
  </connection>
</outVariable>
<outVariable name="sv_k2_3" type="BOOL" id="23" order="14">
  <position x="54" y="92" />
  <connection refid="19" name="sOff2">
    <position x="55" y="93" />
    <position x="51" y="93" />
    <position x="51" y="93" />
    <position x="48" y="93" />
  </connection>
</outVariable>
<inVariable name="sv_k2_2" type="BOOL" id="24">
  <position x="12" y="90" />
</inVariable>
<inVariable name="sv_k2_3" type="BOOL" id="25">
  <position x="12" y="92" />
</inVariable>
<inVariable name="tll_k2_lr" type="BOOL" id="26">
  <position x="12" y="103" />
</inVariable>
<outVariable name="sv_k2_1" type="BOOL" id="27" order="17">
  <position x="54" y="105" />
  <connection refid="30" name="sOff0">
    <position x="55" y="106" />
    <position x="52" y="106" />
    <position x="52" y="106" />
    <position x="48" y="106" />
  </connection>
</outVariable>
<outVariable name="sv_k2_2" type="BOOL" id="28" order="18">
  <position x="54" y="107" />
  <connection refid="30" name="sOff1">
    <position x="55" y="108" />
    <position x="52" y="108" />
    <position x="52" y="108" />
    <position x="48" y="108" />
  </connection>
</outVariable>
<outVariable name="sv_k2_3" type="BOOL" id="29" order="19">
  <position x="54" y="109" />
  <connection refid="30" name="sOff2">
    <position x="55" y="110" />
    <position x="52" y="110" />
    <position x="52" y="110" />
    <position x="48" y="110" />
  </connection>
</outVariable>
<block name="fb_on_SvKoupelna1" instance="onKo2" id="30" height="10" width="15" line="43" order="16">
  <position x="33" y="101" />
  <inVariables>
    <variable name="in" type="BOOL">
      <connection refid="60">
        <position x="33" y="104" />
        <position x="32" y="104" />
        <position x="32" y="104" />
        <position x="31" y="104" />
      </connection>
    <comment>vstup od tla��tka</comment>
    </variable>
    <variable name="sig0" type="BOOL">
      <connection refid="31">
        <position x="33" y="106" />
        <position x="25" y="106" />
        <position x="25" y="106" />
        <position x="19" y="106" />
      </connection>
    <comment>vstup stavu svetla 0</comment>
    </variable>
    <variable name="sig1" type="BOOL">
      <connection refid="32">
        <position x="33" y="108" />
        <position x="25" y="108" />
        <position x="25" y="108" />
        <position x="19" y="108" />
      </connection>
    <comment>vstup stavu svetla 1</comment>
    </variable>
    <variable name="sig2" type="BOOL">
      <connection refid="33">
        <position x="33" y="110" />
        <position x="25" y="110" />
        <position x="25" y="110" />
        <position x="19" y="110" />
      </connection>
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
<inVariable name="sv_k2_1" type="BOOL" id="31">
  <position x="12" y="105" />
</inVariable>
<inVariable name="sv_k2_2" type="BOOL" id="32">
  <position x="12" y="107" />
</inVariable>
<inVariable name="sv_k2_3" type="BOOL" id="33">
  <position x="12" y="109" />
</inVariable>
<block name="R_TRIG" instance="trigOnKo2_1" id="34" height="4" width="6" line="40" order="15">
  <position x="23" y="101" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="26">
        <position x="23" y="104" />
        <position x="21" y="104" />
        <position x="21" y="104" />
        <position x="19" y="104" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="fb_LED_blik" instance="blik_ko2_1" id="35" height="8" width="19" line="53" order="21">
  <position x="76" y="43" />
  <inVariables>
    <variable name="InButton" type="BOOL">
      <connection refid="36">
        <position x="76" y="46" />
        <position x="33" y="46" />
        <position x="33" y="42" />
        <position x="33" y="42" />
      </connection>
    <comment>signal od tlacitka</comment>
    </variable>
    <variable name="InLight" type="BOOL">
      <connection refid="52">
        <position x="76" y="48" />
        <position x="30" y="48" />
        <position x="30" y="44" />
        <position x="30" y="44" />
      </connection>
    <comment>stav svetla ktere tlacitko ovlada</comment>
    </variable>
    <variable name="InTimeOfBlic" type="TIME">
      <connection refid="49">
        <position x="76" y="50" />
        <position x="73" y="50" />
        <position x="73" y="36" />
        <position x="73" y="36" />
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
<node id="36">
  <position x="33" y="42" />
  <connection refid="17" name="Q">
    <position x="33" y="42" />
    <position x="31" y="42" />
    <position x="31" y="42" />
    <position x="27" y="42" />
  </connection>
</node>
<outVariable name="k2_led_k2_lg" type="BOOL" id="37" order="24">
  <position x="114" y="31" />
  <connection refid="50" name="OR">
    <position x="115" y="32" />
    <position x="114" y="32" />
    <position x="114" y="32" />
    <position x="112" y="32" />
  </connection>
</outVariable>
<outVariable name="k2_led_k2_lr" type="BOOL" id="38" order="32">
  <position x="115" y="45" />
  <connection refid="51" name="OR">
    <position x="116" y="46" />
    <position x="115" y="46" />
    <position x="115" y="46" />
    <position x="113" y="46" />
  </connection>
</outVariable>
<block name="fb_LED_blik" instance="blik_ko2_2" id="39" height="8" width="19" line="63" order="25">
  <position x="76" y="16" />
  <inVariables>
    <variable name="InButton" type="BOOL">
      <connection refid="40">
        <position x="76" y="19" />
        <position x="33" y="19" />
        <position x="33" y="13" />
        <position x="33" y="13" />
      </connection>
    <comment>signal od tlacitka</comment>
    </variable>
    <variable name="InLight" type="BOOL">
      <connection refid="41">
        <position x="76" y="21" />
        <position x="30" y="21" />
        <position x="30" y="15" />
        <position x="30" y="15" />
      </connection>
    <comment>stav svetla ktere tlacitko ovlada</comment>
    </variable>
    <variable name="InTimeOfBlic" type="TIME">
      <connection refid="48">
        <position x="76" y="23" />
        <position x="74" y="23" />
        <position x="74" y="23" />
        <position x="73" y="23" />
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
  <position x="33" y="13" />
  <connection refid="16" name="Q">
    <position x="33" y="13" />
    <position x="30" y="13" />
    <position x="30" y="13" />
    <position x="27" y="13" />
  </connection>
</node>
<node id="41">
  <position x="30" y="15" />
  <connection refid="12">
    <position x="30" y="15" />
    <position x="26" y="15" />
    <position x="26" y="15" />
    <position x="17" y="15" />
  </connection>
</node>
<outVariable name="k2_led_k2_rg" type="BOOL" id="42" order="27">
  <position x="115" y="15" />
  <connection refid="53" name="OR">
    <position x="116" y="16" />
    <position x="114" y="16" />
    <position x="114" y="16" />
    <position x="113" y="16" />
  </connection>
</outVariable>
<outVariable name="k2_led_k2_rr" type="BOOL" id="43" order="30">
  <position x="115" y="20" />
  <connection refid="54" name="OR">
    <position x="116" y="21" />
    <position x="114" y="21" />
    <position x="114" y="21" />
    <position x="113" y="21" />
  </connection>
</outVariable>
<block name="fb_LED_blik" instance="blik_ko2_3" id="44" height="8" width="19" line="52" order="20">
  <position x="76" y="29" />
  <inVariables>
    <variable name="InButton" type="BOOL">
      <connection refid="45">
        <position x="76" y="32" />
        <position x="33" y="32" />
        <position x="33" y="28" />
        <position x="33" y="28" />
      </connection>
    <comment>signal od tlacitka</comment>
    </variable>
    <variable name="InLight" type="BOOL">
      <connection refid="46">
        <position x="76" y="34" />
        <position x="30" y="34" />
        <position x="30" y="30" />
        <position x="30" y="30" />
      </connection>
    <comment>stav svetla ktere tlacitko ovlada</comment>
    </variable>
    <variable name="InTimeOfBlic" type="TIME">
      <connection refid="49">
        <position x="76" y="36" />
        <position x="74" y="36" />
        <position x="74" y="36" />
        <position x="73" y="36" />
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
<node id="45">
  <position x="33" y="28" />
  <connection refid="15" name="Q">
    <position x="33" y="28" />
    <position x="30" y="28" />
    <position x="30" y="28" />
    <position x="27" y="28" />
  </connection>
</node>
<node id="46">
  <position x="30" y="30" />
  <connection refid="10">
    <position x="30" y="30" />
    <position x="25" y="30" />
    <position x="25" y="30" />
    <position x="17" y="30" />
  </connection>
</node>
<inVariable name="T#0.5s" type="TIME" id="47">
  <position x="63" y="22" />
</inVariable>
<node id="48">
  <position x="73" y="23" />
  <connection refid="47">
    <position x="73" y="23" />
    <position x="71" y="23" />
    <position x="71" y="23" />
    <position x="70" y="23" />
  </connection>
</node>
<node id="49">
  <position x="73" y="36" />
  <connection refid="48">
    <position x="73" y="36" />
    <position x="73" y="36" />
    <position x="73" y="23" />
    <position x="73" y="23" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="50" height="6" width="3" line="61" order="23">
  <position x="109" y="31" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="44" name="OutLED_Green">
        <position x="109" y="32" />
        <position x="99" y="32" />
        <position x="99" y="32" />
        <position x="95" y="32" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="35" name="OutLED_Green">
        <position x="109" y="34" />
        <position x="97" y="34" />
        <position x="97" y="46" />
        <position x="95" y="46" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="61">
        <position x="109" y="36" />
        <position x="104" y="36" />
        <position x="104" y="36" />
        <position x="103" y="36" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="51" height="6" width="3" line="75" order="31">
  <position x="110" y="45" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="44" name="OutLED_Red">
        <position x="110" y="46" />
        <position x="99" y="46" />
        <position x="99" y="34" />
        <position x="95" y="34" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="35" name="OutLED_Red">
        <position x="110" y="48" />
        <position x="101" y="48" />
        <position x="101" y="48" />
        <position x="95" y="48" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="57">
        <position x="110" y="50" />
        <position x="102" y="50" />
        <position x="102" y="50" />
        <position x="101" y="50" />
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
<node id="52">
  <position x="30" y="44" />
  <connection refid="14">
    <position x="30" y="44" />
    <position x="25" y="44" />
    <position x="25" y="44" />
    <position x="17" y="44" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="53" height="4" width="3" line="65" order="26">
  <position x="110" y="15" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="39" name="OutLED_Green">
        <position x="110" y="16" />
        <position x="98" y="16" />
        <position x="98" y="19" />
        <position x="95" y="19" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="61">
        <position x="110" y="18" />
        <position x="103" y="18" />
        <position x="103" y="36" />
        <position x="103" y="36" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="54" height="4" width="3" line="71" order="29">
  <position x="110" y="20" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="39" name="OutLED_Red">
        <position x="110" y="21" />
        <position x="96" y="21" />
        <position x="96" y="21" />
        <position x="95" y="21" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="57">
        <position x="110" y="23" />
        <position x="101" y="23" />
        <position x="101" y="50" />
        <position x="101" y="50" />
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
<block name="TP" instance="tp_ko2_1" id="55" height="6" width="6" line="67" order="28">
  <position x="89" y="92" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="56">
        <position x="89" y="95" />
        <position x="31" y="95" />
        <position x="31" y="87" />
        <position x="31" y="87" />
      </connection>
    <comment>vstup �asova�e</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="62">
        <position x="89" y="97" />
        <position x="87" y="97" />
        <position x="87" y="97" />
        <position x="85" y="97" />
      </connection>
    <comment>p�edvolba �asova�e</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    <comment>v�stup �asova�e</comment>
    </variable>
    <variable name="ET" type="TIME">
    <comment>aktu�ln� hodnota �asova�e</comment>
    </variable>
  </outVariables>
</block>
<node id="56">
  <position x="31" y="87" />
  <connection refid="18" name="Q">
    <position x="31" y="87" />
    <position x="30" y="87" />
    <position x="30" y="87" />
    <position x="29" y="87" />
  </connection>
</node>
<node id="57">
  <position x="101" y="50" />
  <connection refid="55" name="Q">
    <position x="101" y="50" />
    <position x="101" y="50" />
    <position x="101" y="95" />
    <position x="95" y="95" />
  </connection>
</node>
<inVariable name="T#1s" type="TIME" id="58">
  <position x="73" y="96" />
</inVariable>
<block name="TP" instance="tp_ko2_2" id="59" height="6" width="6" line="56" order="22">
  <position x="89" y="110" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="60">
        <position x="89" y="113" />
        <position x="31" y="113" />
        <position x="31" y="104" />
        <position x="31" y="104" />
      </connection>
    <comment>vstup �asova�e</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="62">
        <position x="89" y="115" />
        <position x="85" y="115" />
        <position x="85" y="97" />
        <position x="85" y="97" />
      </connection>
    <comment>p�edvolba �asova�e</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    <comment>v�stup �asova�e</comment>
    </variable>
    <variable name="ET" type="TIME">
    <comment>aktu�ln� hodnota �asova�e</comment>
    </variable>
  </outVariables>
</block>
<node id="60">
  <position x="31" y="104" />
  <connection refid="34" name="Q">
    <position x="31" y="104" />
    <position x="30" y="104" />
    <position x="30" y="104" />
    <position x="29" y="104" />
  </connection>
</node>
<node id="61">
  <position x="103" y="36" />
  <connection refid="59" name="Q">
    <position x="103" y="36" />
    <position x="103" y="36" />
    <position x="103" y="113" />
    <position x="95" y="113" />
  </connection>
</node>
<node id="62">
  <position x="85" y="97" />
  <connection refid="58">
    <position x="85" y="97" />
    <position x="84" y="97" />
    <position x="84" y="97" />
    <position x="78" y="97" />
  </connection>
</node>
<inVariable name="T#0.2s" type="TIME" id="63">
  <position x="62" y="64" />
</inVariable>
<inVariable name="T#0.5s" type="TIME" id="64">
  <position x="62" y="66" />
</inVariable>
<block name="fb_kmitac" instance="kmit_Ko2" id="65" height="8" width="12" line="81" order="34">
  <position x="80" y="60" />
  <inVariables>
    <variable name="sig_IN" type="BOOL">
      <connection refid="66" name="OR">
        <position x="80" y="63" />
        <position x="68" y="63" />
        <position x="68" y="63" />
        <position x="59" y="63" />
      </connection>
    <comment>spousteci signal</comment>
    </variable>
    <variable name="time_ON" type="TIME">
      <connection refid="63">
        <position x="80" y="65" />
        <position x="73" y="65" />
        <position x="73" y="65" />
        <position x="69" y="65" />
      </connection>
    <comment>delka sviceni</comment>
    </variable>
    <variable name="time_OFF" type="TIME">
      <connection refid="64">
        <position x="80" y="67" />
        <position x="74" y="67" />
        <position x="74" y="67" />
        <position x="69" y="67" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="66" height="6" width="3" line="79" order="33">
  <position x="56" y="62" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="67">
        <position x="56" y="63" />
        <position x="49" y="63" />
        <position x="49" y="42" />
        <position x="49" y="42" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="68">
        <position x="56" y="65" />
        <position x="47" y="65" />
        <position x="47" y="28" />
        <position x="47" y="28" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="69">
        <position x="56" y="67" />
        <position x="45" y="67" />
        <position x="45" y="13" />
        <position x="45" y="13" />
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
<node id="67">
  <position x="49" y="42" />
  <connection refid="13" name="XOR">
    <position x="49" y="42" />
    <position x="44" y="42" />
    <position x="44" y="42" />
    <position x="39" y="42" />
  </connection>
</node>
<node id="68">
  <position x="47" y="28" />
  <connection refid="9" name="XOR">
    <position x="47" y="28" />
    <position x="43" y="28" />
    <position x="43" y="28" />
    <position x="39" y="28" />
  </connection>
</node>
<node id="69">
  <position x="45" y="13" />
  <connection refid="11" name="XOR">
    <position x="45" y="13" />
    <position x="42" y="13" />
    <position x="42" y="13" />
    <position x="39" y="13" />
  </connection>
</node>
<outVariable name="pz_led_pz_lr" type="BOOL" id="70" order="35">
  <position x="115" y="62" />
  <connection refid="74">
    <position x="116" y="63" />
    <position x="114" y="63" />
    <position x="114" y="63" />
    <position x="109" y="63" />
  </connection>
</outVariable>
<outVariable name="lo_led_lo_lr" type="BOOL" id="71" order="38">
  <position x="116" y="64" />
  <connection refid="76">
    <position x="117" y="65" />
    <position x="112" y="65" />
    <position x="112" y="65" />
    <position x="109" y="65" />
  </connection>
</outVariable>
<outVariable name="ob_led_ob_lr" type="BOOL" id="72" order="36">
  <position x="115" y="66" />
  <connection refid="75">
    <position x="116" y="67" />
    <position x="111" y="67" />
    <position x="111" y="67" />
    <position x="109" y="67" />
  </connection>
</outVariable>
<outVariable name="pv_led_pv_lr" type="BOOL" id="73" order="37">
  <position x="115" y="68" />
  <connection refid="75">
    <position x="116" y="69" />
    <position x="109" y="69" />
    <position x="109" y="67" />
    <position x="109" y="67" />
  </connection>
</outVariable>
<node id="74">
  <position x="109" y="63" />
  <connection refid="65" name="sig_OUT">
    <position x="109" y="63" />
    <position x="100" y="63" />
    <position x="100" y="63" />
    <position x="92" y="63" />
  </connection>
</node>
<node id="75">
  <position x="109" y="67" />
  <connection refid="76">
    <position x="109" y="67" />
    <position x="109" y="67" />
    <position x="109" y="65" />
    <position x="109" y="65" />
  </connection>
</node>
<node id="76">
  <position x="109" y="65" />
  <connection refid="74">
    <position x="109" y="65" />
    <position x="109" y="65" />
    <position x="109" y="63" />
    <position x="109" y="63" />
  </connection>
</node>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
(* 520	*)	_Nod_Tmp_24	:	BOOL;
(* 529	*)	_Nod_Tmp_23	:	BOOL;
(* 984	*)	_Nod_Tmp_21	:	BOOL;
(* 596	*)	_Nod_Tmp_20	:	BOOL;
(* 605	*)	_Nod_Tmp_19	:	BOOL;
(* 975	*)	_Nod_Tmp_17	:	BOOL;
(* 453	*)	_Nod_Tmp_16	:	BOOL;
(* 709	*)	_Nod_Tmp_15	:	BOOL;
(* 966	*)	_Nod_Tmp_13	:	BOOL;
(* 807	*)	_Nod_Tmp_12	:	BOOL;
(* 859	*)	_Nod_Tmp_11	:	BOOL;
(* 617	*)	_Nod_Tmp_10	:	TIME;
(* 877	*)	_Nod_Tmp_9	:	TIME;
(* 868	*)	_Nod_Tmp_8	:	BOOL;
(* 816	*)	_Nod_Tmp_5	:	BOOL;
(*1029	*)	_Nod_Tmp_1	:	BOOL;
END_VAR

//NC
//N000
(* 160	*)	CAL	trigKo2_2(CLK:=tls_k2_tr)
(* 160	*)	LD 	trigKo2_2.Q
(* 520	*)	ST	_Nod_Tmp_24
(* 108	*)	LD 	sv_k2_2
(* 529	*)	ST	_Nod_Tmp_23
(*  83	*)	LD 	_Nod_Tmp_24
(*  91	*)	XOR 	_Nod_Tmp_23
(* 984	*)	ST	_Nod_Tmp_21
(*  29	*)	ST 	sv_k2_2
(* 143	*)	CAL	trigKo2_1(CLK:=tls_k2_tl)
(* 143	*)	LD 	trigKo2_1.Q
(* 596	*)	ST	_Nod_Tmp_20
(*  76	*)	LD 	sv_k2_1
(* 605	*)	ST	_Nod_Tmp_19
(*  51	*)	LD 	_Nod_Tmp_20
(*  59	*)	XOR 	_Nod_Tmp_19
(* 975	*)	ST	_Nod_Tmp_17
(*  20	*)	ST 	sv_k2_1
(* 177	*)	CAL	trigKo2_3(CLK:=tls_k2_ll)
(* 177	*)	LD 	trigKo2_3.Q
(* 453	*)	ST	_Nod_Tmp_16
(* 140	*)	LD 	sv_k2_3
(* 709	*)	ST	_Nod_Tmp_15
(* 115	*)	LD 	_Nod_Tmp_16
(* 123	*)	XOR 	_Nod_Tmp_15
(* 966	*)	ST	_Nod_Tmp_13
(*  38	*)	ST 	sv_k2_3
(* 194	*)	CAL	trigKo2_4(CLK:=tls_k2_lr)
(* 194	*)	LD 	trigKo2_4.Q
(* 807	*)	ST	_Nod_Tmp_12
(* 211	*)	CAL	offKo2(in:=_Nod_Tmp_12, sig0:=sv_k2_1, sig1:=sv_k2_2, sig2:=sv_k2_3)
(* 211	*)	LD 	offKo2.sOff0
(* 266	*)	ST 	sv_k2_1
(* 211	*)	LD 	offKo2.sOff1
(* 278	*)	ST 	sv_k2_2
(* 211	*)	LD 	offKo2.sOff2
(* 287	*)	ST 	sv_k2_3
(* 396	*)	CAL	trigOnKo2_1(CLK:=tll_k2_lr)
(* 396	*)	LD 	trigOnKo2_1.Q
(* 859	*)	ST	_Nod_Tmp_11
(* 332	*)	CAL	onKo2(in:=_Nod_Tmp_11, sig0:=sv_k2_1, sig1:=sv_k2_2, sig2:=sv_k2_3)
(* 332	*)	LD 	onKo2.sOff0
(* 305	*)	ST 	sv_k2_1
(* 332	*)	LD 	onKo2.sOff1
(* 314	*)	ST 	sv_k2_2
(* 332	*)	LD 	onKo2.sOff2
(* 323	*)	ST 	sv_k2_3
(* 614	*)	LD 	T#0.5s
(* 617	*)	ST	_Nod_Tmp_10
(* 556	*)	CAL	blik_ko2_3(InButton:=_Nod_Tmp_20, InLight:=_Nod_Tmp_19, InTimeOfBlic:=_Nod_Tmp_10)
(* 413	*)	CAL	blik_ko2_1(InButton:=_Nod_Tmp_16, InLight:=_Nod_Tmp_15, InTimeOfBlic:=_Nod_Tmp_10)
(* 825	*)	LD 	T#1s
(* 877	*)	ST	_Nod_Tmp_9
(* 828	*)	CAL	tp_ko2_2(IN:=_Nod_Tmp_11, PT:=_Nod_Tmp_9)
(* 828	*)	LD 	tp_ko2_2.Q
(* 868	*)	ST	_Nod_Tmp_8
(* 639	*)	LD 	blik_ko2_3.OutLED_Green
(* 647	*)	OR 	blik_ko2_1.OutLED_Green
(* 655	*)	OR 	_Nod_Tmp_8
(* 462	*)	ST 	k2_led_k2_lg
(* 480	*)	CAL	blik_ko2_2(InButton:=_Nod_Tmp_24, InLight:=_Nod_Tmp_23, InTimeOfBlic:=_Nod_Tmp_10)
(* 722	*)	LD 	blik_ko2_2.OutLED_Green
(* 730	*)	OR 	_Nod_Tmp_8
(* 538	*)	ST 	k2_led_k2_rg
(* 776	*)	CAL	tp_ko2_1(IN:=_Nod_Tmp_12, PT:=_Nod_Tmp_9)
(* 776	*)	LD 	tp_ko2_1.Q
(* 816	*)	ST	_Nod_Tmp_5
(* 751	*)	LD 	blik_ko2_2.OutLED_Red
(* 759	*)	OR 	_Nod_Tmp_5
(* 547	*)	ST 	k2_led_k2_rr
(* 676	*)	LD 	blik_ko2_3.OutLED_Red
(* 684	*)	OR 	blik_ko2_1.OutLED_Red
(* 692	*)	OR 	_Nod_Tmp_5
(* 471	*)	ST 	k2_led_k2_lr
(* 933	*)	LD 	_Nod_Tmp_13
(* 941	*)	OR 	_Nod_Tmp_17
(* 949	*)	OR 	_Nod_Tmp_21
(* 892	*)	ST 	kmit_Ko2.sig_IN
(* 892	*)	CAL	kmit_Ko2(time_ON:=T#0.2s, time_OFF:=T#0.5s)
(* 892	*)	LD 	kmit_Ko2.sig_OUT
(*1029	*)	ST	_Nod_Tmp_1
(* 993	*)	ST 	pz_led_pz_lr
(*1029	*)	LD	_Nod_Tmp_1
(*1011	*)	ST 	ob_led_ob_lr
(*1038	*)	LD	_Nod_Tmp_1
(*1020	*)	ST 	pv_led_pv_lr
(*1047	*)	LD	_Nod_Tmp_1
(*1002	*)	ST 	lo_led_lo_lr

END_PROGRAM
