PROGRAM ovladani_koupelna1
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    trigKo1 : R_TRIG;
    trigKo2 : R_TRIG;
    trigKo3 : R_TRIG;
    trigKo4 : R_TRIG;
    offKo1 : fb_off_SvKoupelna1;
    tonV1 : TON;
    pomTomV1 : TIME;
    tofV1 : TOF;
    pomTofV1 : TIME;
    tov2V1 : TOF;
    pomTof2V1 : TIME;
    ton2V1 : TON;
    pomTom2V2 : TIME;
    onKo1 : fb_on_SvKoupelna1;
    trigOnKo1 : R_TRIG;
    blik_ko1_2 : fb_LED_blik;
    blik_ko1_1 : fb_LED_blik;
    blik_ko1_3 : fb_LED_blik;
    tp_ko1_1 : TP;
    tp_ko1_2 : TP;
    ftrig_ventKo1 : F_TRIG;
    TON_K1_Vent : TON;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="pokus.xsl" version="1.1"?>
<fbd version="1.1">
<comment id="1" height="3" width="39">
  <position x="2" y="2" />
ovladani svetel a ventilatoru v koupelne 1NP
</comment>
<inVariable name="tls_k1_ll" type="BOOL" id="2">
  <position x="12" y="78" />
</inVariable>
<inVariable name="tls_k1_lr" type="BOOL" id="3">
  <position x="12" y="96" />
</inVariable>
<inVariable name="tls_k1_tr" type="BOOL" id="4">
  <position x="11" y="13" />
</inVariable>
<inVariable name="tls_k1_tl" type="BOOL" id="5">
  <position x="11" y="29" />
</inVariable>
<outVariable name="sv_k1_1" type="BOOL" id="6" order="7">
  <position x="48" y="29" />
  <connection refid="137">
    <position x="49" y="30" />
    <position x="48" y="30" />
    <position x="48" y="30" />
    <position x="43" y="30" />
  </connection>
</outVariable>
<outVariable name="sv_k1_2" type="BOOL" id="7" order="6">
  <position x="48" y="26" />
  <connection refid="137">
    <position x="49" y="27" />
    <position x="43" y="27" />
    <position x="43" y="30" />
    <position x="43" y="30" />
  </connection>
</outVariable>
<outVariable name="sv_k1_3" type="BOOL" id="8" order="3">
  <position x="47" y="13" />
  <connection refid="11" name="XOR">
    <position x="48" y="14" />
    <position x="43" y="14" />
    <position x="43" y="14" />
    <position x="40" y="14" />
  </connection>
</outVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="9" height="4" width="4" line="17" order="5">
  <position x="36" y="29" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="41">
        <position x="36" y="30" />
        <position x="35" y="30" />
        <position x="35" y="30" />
        <position x="34" y="30" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="42">
        <position x="36" y="32" />
        <position x="33" y="32" />
        <position x="33" y="32" />
        <position x="31" y="32" />
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
<inVariable name="sv_k1_1" type="BOOL" id="10">
  <position x="11" y="31" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="11" height="4" width="4" line="9" order="2">
  <position x="36" y="13" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="37">
        <position x="36" y="14" />
        <position x="35" y="14" />
        <position x="35" y="14" />
        <position x="34" y="14" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="133">
        <position x="36" y="16" />
        <position x="33" y="16" />
        <position x="33" y="16" />
        <position x="30" y="16" />
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
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="12" height="4" width="4" line="49" order="20">
  <position x="53" y="78" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="159">
        <position x="53" y="79" />
        <position x="51" y="79" />
        <position x="51" y="79" />
        <position x="50" y="79" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="141">
        <position x="53" y="81" />
        <position x="52" y="81" />
        <position x="52" y="81" />
        <position x="48" y="81" />
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
<inVariable name="sv_k1_3" type="BOOL" id="13">
  <position x="11" y="15" />
</inVariable>
<block name="R_TRIG" instance="trigKo1" id="14" height="4" width="6" line="11" order="4">
  <position x="22" y="27" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="5">
        <position x="22" y="30" />
        <position x="21" y="30" />
        <position x="21" y="30" />
        <position x="18" y="30" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="trigKo2" id="15" height="4" width="6" line="3" order="1">
  <position x="22" y="11" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="4">
        <position x="22" y="14" />
        <position x="21" y="14" />
        <position x="21" y="14" />
        <position x="19" y="14" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="trigKo3" id="16" height="4" width="6" line="42" order="18">
  <position x="23" y="76" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="2">
        <position x="23" y="79" />
        <position x="21" y="79" />
        <position x="21" y="79" />
        <position x="19" y="79" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="trigKo4" id="17" height="4" width="6" line="22" order="8">
  <position x="23" y="94" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="3">
        <position x="23" y="97" />
        <position x="20" y="97" />
        <position x="20" y="97" />
        <position x="19" y="97" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="fb_off_SvKoupelna1" instance="offKo1" id="18" height="10" width="15" line="25" order="9">
  <position x="33" y="94" />
  <inVariables>
    <variable name="in" type="BOOL">
      <connection refid="51">
        <position x="33" y="97" />
        <position x="32" y="97" />
        <position x="32" y="97" />
        <position x="31" y="97" />
      </connection>
    <comment>vstup od tlačítka</comment>
    </variable>
    <variable name="sig0" type="BOOL">
      <connection refid="20">
        <position x="33" y="99" />
        <position x="31" y="99" />
        <position x="31" y="99" />
        <position x="19" y="99" />
      </connection>
    <comment>vstup stavu svetla 0</comment>
    </variable>
    <variable name="sig1" type="BOOL">
      <connection refid="23">
        <position x="33" y="101" />
        <position x="31" y="101" />
        <position x="31" y="101" />
        <position x="19" y="101" />
      </connection>
    <comment>vstup stavu svetla 1</comment>
    </variable>
    <variable name="sig2" type="BOOL">
      <connection refid="24">
        <position x="33" y="103" />
        <position x="31" y="103" />
        <position x="31" y="103" />
        <position x="19" y="103" />
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
<outVariable name="sv_k1_1" type="BOOL" id="19" order="10">
  <position x="54" y="98" />
  <connection refid="18" name="sOff0">
    <position x="55" y="99" />
    <position x="50" y="99" />
    <position x="50" y="99" />
    <position x="48" y="99" />
  </connection>
</outVariable>
<inVariable name="sv_k1_1" type="BOOL" id="20">
  <position x="12" y="98" />
</inVariable>
<outVariable name="sv_k1_2" type="BOOL" id="21" order="11">
  <position x="54" y="100" />
  <connection refid="18" name="sOff1">
    <position x="55" y="101" />
    <position x="50" y="101" />
    <position x="50" y="101" />
    <position x="48" y="101" />
  </connection>
</outVariable>
<outVariable name="sv_k1_3" type="BOOL" id="22" order="12">
  <position x="54" y="102" />
  <connection refid="18" name="sOff2">
    <position x="55" y="103" />
    <position x="51" y="103" />
    <position x="51" y="103" />
    <position x="48" y="103" />
  </connection>
</outVariable>
<inVariable name="sv_k1_2" type="BOOL" id="23">
  <position x="12" y="100" />
</inVariable>
<inVariable name="sv_k1_3" type="BOOL" id="24">
  <position x="12" y="102" />
</inVariable>
<inVariable name="tll_k1_lr" type="BOOL" id="25">
  <position x="12" y="113" />
</inVariable>
<outVariable name="sv_k1_1" type="BOOL" id="26" order="15">
  <position x="54" y="115" />
  <connection refid="29" name="sOff0">
    <position x="55" y="116" />
    <position x="52" y="116" />
    <position x="52" y="116" />
    <position x="48" y="116" />
  </connection>
</outVariable>
<outVariable name="sv_k1_2" type="BOOL" id="27" order="16">
  <position x="54" y="117" />
  <connection refid="29" name="sOff1">
    <position x="55" y="118" />
    <position x="52" y="118" />
    <position x="52" y="118" />
    <position x="48" y="118" />
  </connection>
</outVariable>
<outVariable name="sv_k1_3" type="BOOL" id="28" order="17">
  <position x="54" y="119" />
  <connection refid="29" name="sOff2">
    <position x="55" y="120" />
    <position x="52" y="120" />
    <position x="52" y="120" />
    <position x="48" y="120" />
  </connection>
</outVariable>
<block name="fb_on_SvKoupelna1" instance="onKo1" id="29" height="10" width="15" line="35" order="14">
  <position x="33" y="111" />
  <inVariables>
    <variable name="in" type="BOOL">
      <connection refid="55">
        <position x="33" y="114" />
        <position x="32" y="114" />
        <position x="32" y="114" />
        <position x="31" y="114" />
      </connection>
    <comment>vstup od tlačítka</comment>
    </variable>
    <variable name="sig0" type="BOOL">
      <connection refid="30">
        <position x="33" y="116" />
        <position x="25" y="116" />
        <position x="25" y="116" />
        <position x="19" y="116" />
      </connection>
    <comment>vstup stavu svetla 0</comment>
    </variable>
    <variable name="sig1" type="BOOL">
      <connection refid="31">
        <position x="33" y="118" />
        <position x="25" y="118" />
        <position x="25" y="118" />
        <position x="19" y="118" />
      </connection>
    <comment>vstup stavu svetla 1</comment>
    </variable>
    <variable name="sig2" type="BOOL">
      <connection refid="32">
        <position x="33" y="120" />
        <position x="25" y="120" />
        <position x="25" y="120" />
        <position x="19" y="120" />
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
<inVariable name="sv_k1_1" type="BOOL" id="30">
  <position x="12" y="115" />
</inVariable>
<inVariable name="sv_k1_2" type="BOOL" id="31">
  <position x="12" y="117" />
</inVariable>
<inVariable name="sv_k1_3" type="BOOL" id="32">
  <position x="12" y="119" />
</inVariable>
<block name="R_TRIG" instance="trigOnKo1" id="33" height="4" width="6" line="32" order="13">
  <position x="23" y="111" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="25">
        <position x="23" y="114" />
        <position x="21" y="114" />
        <position x="21" y="114" />
        <position x="19" y="114" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="fb_LED_blik" instance="blik_ko1_1" id="34" height="8" width="19" line="64" order="27">
  <position x="111" y="82" />
  <inVariables>
    <variable name="InButton" type="BOOL">
      <connection refid="159">
        <position x="111" y="85" />
        <position x="50" y="85" />
        <position x="50" y="79" />
        <position x="50" y="79" />
      </connection>
    <comment>signal od tlacitka</comment>
    </variable>
    <variable name="InLight" type="BOOL">
      <connection refid="141">
        <position x="111" y="87" />
        <position x="48" y="87" />
        <position x="48" y="81" />
        <position x="48" y="81" />
      </connection>
    <comment>stav svetla ktere tlacitko ovlada</comment>
    </variable>
    <variable name="InTimeOfBlic" type="TIME">
      <connection refid="45">
        <position x="111" y="89" />
        <position x="107" y="89" />
        <position x="107" y="40" />
        <position x="107" y="40" />
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
<outVariable name="k1_led_k1_lr" type="BOOL" id="35" order="34">
  <position x="162" y="85" />
  <connection refid="47" name="OR">
    <position x="163" y="86" />
    <position x="154" y="86" />
    <position x="154" y="86" />
    <position x="153" y="86" />
  </connection>
</outVariable>
<block name="fb_LED_blik" instance="blik_ko1_2" id="36" height="8" width="19" line="54" order="22">
  <position x="110" y="16" />
  <inVariables>
    <variable name="InButton" type="BOOL">
      <connection refid="37">
        <position x="110" y="19" />
        <position x="34" y="19" />
        <position x="34" y="14" />
        <position x="34" y="14" />
      </connection>
    <comment>signal od tlacitka</comment>
    </variable>
    <variable name="InLight" type="BOOL">
      <connection refid="133">
        <position x="110" y="21" />
        <position x="30" y="21" />
        <position x="30" y="16" />
        <position x="30" y="16" />
      </connection>
    <comment>stav svetla ktere tlacitko ovlada</comment>
    </variable>
    <variable name="InTimeOfBlic" type="TIME">
      <connection refid="44">
        <position x="110" y="23" />
        <position x="108" y="23" />
        <position x="108" y="23" />
        <position x="107" y="23" />
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
<node id="37">
  <position x="34" y="14" />
  <connection refid="15" name="Q">
    <position x="34" y="14" />
    <position x="31" y="14" />
    <position x="31" y="14" />
    <position x="28" y="14" />
  </connection>
</node>
<outVariable name="k1_led_k1_rg" type="BOOL" id="38" order="25">
  <position x="160" y="15" />
  <connection refid="48" name="OR">
    <position x="161" y="16" />
    <position x="153" y="16" />
    <position x="153" y="16" />
    <position x="152" y="16" />
  </connection>
</outVariable>
<outVariable name="k1_led_k1_rr" type="BOOL" id="39" order="32">
  <position x="161" y="20" />
  <connection refid="49" name="OR">
    <position x="162" y="21" />
    <position x="154" y="21" />
    <position x="154" y="21" />
    <position x="152" y="21" />
  </connection>
</outVariable>
<block name="fb_LED_blik" instance="blik_ko1_3" id="40" height="8" width="19" line="63" order="26">
  <position x="110" y="33" />
  <inVariables>
    <variable name="InButton" type="BOOL">
      <connection refid="41">
        <position x="110" y="36" />
        <position x="34" y="36" />
        <position x="34" y="30" />
        <position x="34" y="30" />
      </connection>
    <comment>signal od tlacitka</comment>
    </variable>
    <variable name="InLight" type="BOOL">
      <connection refid="42">
        <position x="110" y="38" />
        <position x="31" y="38" />
        <position x="31" y="32" />
        <position x="31" y="32" />
      </connection>
    <comment>stav svetla ktere tlacitko ovlada</comment>
    </variable>
    <variable name="InTimeOfBlic" type="TIME">
      <connection refid="45">
        <position x="110" y="40" />
        <position x="108" y="40" />
        <position x="108" y="40" />
        <position x="107" y="40" />
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
  <position x="34" y="30" />
  <connection refid="14" name="Q">
    <position x="34" y="30" />
    <position x="31" y="30" />
    <position x="31" y="30" />
    <position x="28" y="30" />
  </connection>
</node>
<node id="42">
  <position x="31" y="32" />
  <connection refid="10">
    <position x="31" y="32" />
    <position x="26" y="32" />
    <position x="26" y="32" />
    <position x="18" y="32" />
  </connection>
</node>
<inVariable name="T#0.5s" type="TIME" id="43">
  <position x="96" y="22" />
</inVariable>
<node id="44">
  <position x="107" y="23" />
  <connection refid="43">
    <position x="107" y="23" />
    <position x="104" y="23" />
    <position x="104" y="23" />
    <position x="103" y="23" />
  </connection>
</node>
<node id="45">
  <position x="107" y="40" />
  <connection refid="44">
    <position x="107" y="40" />
    <position x="107" y="40" />
    <position x="107" y="23" />
    <position x="107" y="23" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="46" height="6" width="3" line="67" order="28">
  <position x="149" y="32" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="40" name="OutLED_Green">
        <position x="149" y="33" />
        <position x="133" y="33" />
        <position x="133" y="36" />
        <position x="129" y="36" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="34" name="OutLED_Green">
        <position x="149" y="35" />
        <position x="145" y="35" />
        <position x="145" y="85" />
        <position x="130" y="85" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="56">
        <position x="149" y="37" />
        <position x="138" y="37" />
        <position x="138" y="37" />
        <position x="137" y="37" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="47" height="6" width="3" line="77" order="33">
  <position x="150" y="85" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="40" name="OutLED_Red">
        <position x="150" y="86" />
        <position x="133" y="86" />
        <position x="133" y="38" />
        <position x="129" y="38" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="34" name="OutLED_Red">
        <position x="150" y="88" />
        <position x="136" y="88" />
        <position x="136" y="87" />
        <position x="130" y="87" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="52">
        <position x="150" y="90" />
        <position x="137" y="90" />
        <position x="137" y="90" />
        <position x="136" y="90" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="48" height="4" width="3" line="61" order="24">
  <position x="149" y="15" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="36" name="OutLED_Green">
        <position x="149" y="16" />
        <position x="132" y="16" />
        <position x="132" y="19" />
        <position x="129" y="19" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="56">
        <position x="149" y="18" />
        <position x="137" y="18" />
        <position x="137" y="37" />
        <position x="137" y="37" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="49" height="4" width="3" line="73" order="31">
  <position x="149" y="20" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="36" name="OutLED_Red">
        <position x="149" y="21" />
        <position x="130" y="21" />
        <position x="130" y="21" />
        <position x="129" y="21" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="52">
        <position x="149" y="23" />
        <position x="136" y="23" />
        <position x="136" y="90" />
        <position x="136" y="90" />
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
<block name="TP" instance="tp_ko1_1" id="50" height="6" width="6" line="69" order="30">
  <position x="89" y="102" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="51">
        <position x="89" y="105" />
        <position x="31" y="105" />
        <position x="31" y="97" />
        <position x="31" y="97" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="57">
        <position x="89" y="107" />
        <position x="87" y="107" />
        <position x="87" y="107" />
        <position x="85" y="107" />
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
<node id="51">
  <position x="31" y="97" />
  <connection refid="17" name="Q">
    <position x="31" y="97" />
    <position x="30" y="97" />
    <position x="30" y="97" />
    <position x="29" y="97" />
  </connection>
</node>
<node id="52">
  <position x="136" y="90" />
  <connection refid="50" name="Q">
    <position x="136" y="90" />
    <position x="136" y="90" />
    <position x="136" y="105" />
    <position x="95" y="105" />
  </connection>
</node>
<inVariable name="T#1s" type="TIME" id="53">
  <position x="73" y="106" />
</inVariable>
<block name="TP" instance="tp_ko1_2" id="54" height="6" width="6" line="57" order="23">
  <position x="89" y="120" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="55">
        <position x="89" y="123" />
        <position x="31" y="123" />
        <position x="31" y="114" />
        <position x="31" y="114" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="57">
        <position x="89" y="125" />
        <position x="85" y="125" />
        <position x="85" y="107" />
        <position x="85" y="107" />
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
<node id="55">
  <position x="31" y="114" />
  <connection refid="33" name="Q">
    <position x="31" y="114" />
    <position x="30" y="114" />
    <position x="30" y="114" />
    <position x="29" y="114" />
  </connection>
</node>
<node id="56">
  <position x="137" y="37" />
  <connection refid="54" name="Q">
    <position x="137" y="37" />
    <position x="137" y="37" />
    <position x="137" y="123" />
    <position x="95" y="123" />
  </connection>
</node>
<node id="57">
  <position x="85" y="107" />
  <connection refid="53">
    <position x="85" y="107" />
    <position x="84" y="107" />
    <position x="84" y="107" />
    <position x="78" y="107" />
  </connection>
</node>
<outVariable name="k1_led_k1_lg" type="BOOL" id="58" order="29">
  <position x="160" y="32" />
  <comment>
vystup na LED v Logusech  </comment>
  <connection refid="46" name="OR">
    <position x="161" y="33" />
    <position x="153" y="33" />
    <position x="153" y="33" />
    <position x="152" y="33" />
  </connection>
</outVariable>
<outVariable name="vent_k1" type="BOOL" id="118" order="21">
  <position x="83" y="78" />
  <connection refid="146">
    <position x="84" y="79" />
    <position x="74" y="79" />
    <position x="74" y="79" />
    <position x="59" y="79" />
  </connection>
</outVariable>
<comment id="120" height="3" width="12">
  <position x="58" y="27" />
světlo na stropě
</comment>
<comment id="121" height="3" width="12">
  <position x="58" y="30" />
světlo ve sprše
</comment>
<comment id="122" height="3" width="16">
  <position x="57" y="14" />
světlo nad umyvadlem
</comment>
<inVariable name="vent_k1" type="BOOL" id="126">
  <position x="12" y="80" />
</inVariable>
<node id="133">
  <position x="30" y="16" />
  <connection refid="13">
    <position x="30" y="16" />
    <position x="24" y="16" />
    <position x="24" y="16" />
    <position x="18" y="16" />
  </connection>
</node>
<node id="137">
  <position x="43" y="30" />
  <connection refid="9" name="XOR">
    <position x="43" y="30" />
    <position x="41" y="30" />
    <position x="41" y="30" />
    <position x="40" y="30" />
  </connection>
</node>
<node id="141">
  <position x="48" y="81" />
  <connection refid="126">
    <position x="48" y="81" />
    <position x="33" y="81" />
    <position x="33" y="81" />
    <position x="19" y="81" />
  </connection>
</node>
<block name="TON" instance="TON_K1_Vent" id="142" height="6" width="6" line="79" order="35">
  <position x="70" y="66" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="146">
        <position x="70" y="69" />
        <position x="59" y="69" />
        <position x="59" y="79" />
        <position x="59" y="79" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="147">
        <position x="70" y="71" />
        <position x="69" y="71" />
        <position x="69" y="71" />
        <position x="67" y="71" />
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
<node id="146">
  <position x="59" y="79" />
  <connection refid="12" name="XOR">
    <position x="59" y="79" />
    <position x="58" y="79" />
    <position x="58" y="79" />
    <position x="57" y="79" />
  </connection>
</node>
<inVariable name="T#2h" type="TIME" id="147">
  <position x="62" y="70" />
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="149" height="4" width="3" line="44" order="19">
  <position x="37" y="76" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="142" name="Q">
        <position x="37" y="77" />
        <position x="31" y="77" />
        <position x="31" y="59" />
        <position x="81" y="59" />
        <position x="81" y="69" />
        <position x="76" y="69" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="16" name="Q">
        <position x="37" y="79" />
        <position x="32" y="79" />
        <position x="32" y="79" />
        <position x="29" y="79" />
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
<node id="159">
  <position x="50" y="79" />
  <connection refid="149" name="OR">
    <position x="50" y="79" />
    <position x="45" y="79" />
    <position x="45" y="77" />
    <position x="40" y="77" />
  </connection>
</node>
</fbd>
{/NOCODE}
//LVD
VAR
(* 956	*)	_Tmp_For_Back_Conn_1	:	BOOL;
END_VAR

//TVD
VAR_TEMP
(* 499	*)	_Nod_Tmp_22	:	BOOL;
(* 882	*)	_Nod_Tmp_21	:	BOOL;
(* 566	*)	_Nod_Tmp_19	:	BOOL;
(* 575	*)	_Nod_Tmp_18	:	BOOL;
(* 891	*)	_Nod_Tmp_16	:	BOOL;
(* 768	*)	_Nod_Tmp_15	:	BOOL;
(* 820	*)	_Nod_Tmp_14	:	BOOL;
(* 984	*)	_Nod_Tmp_12	:	BOOL;
(* 900	*)	_Nod_Tmp_11	:	BOOL;
(* 940	*)	_Nod_Tmp_9	:	BOOL;
(* 587	*)	_Nod_Tmp_5	:	TIME;
(* 838	*)	_Nod_Tmp_8	:	TIME;
(* 829	*)	_Nod_Tmp_7	:	BOOL;
(* 777	*)	_Nod_Tmp_3	:	BOOL;
END_VAR

//NC
//N000
(* 157	*)	CAL	trigKo2(CLK:=tls_k1_tr)
(* 157	*)	LD 	trigKo2.Q
(* 499	*)	ST	_Nod_Tmp_22
(* 137	*)	LD 	sv_k1_3
(* 882	*)	ST	_Nod_Tmp_21
(*  83	*)	LD 	_Nod_Tmp_22
(*  91	*)	XOR 	_Nod_Tmp_21
(*  38	*)	ST 	sv_k1_3
(* 140	*)	CAL	trigKo1(CLK:=tls_k1_tl)
(* 140	*)	LD 	trigKo1.Q
(* 566	*)	ST	_Nod_Tmp_19
(*  76	*)	LD 	sv_k1_1
(* 575	*)	ST	_Nod_Tmp_18
(*  51	*)	LD 	_Nod_Tmp_19
(*  59	*)	XOR 	_Nod_Tmp_18
(* 891	*)	ST	_Nod_Tmp_16
(*  29	*)	ST 	sv_k1_2
(* 891	*)	LD	_Nod_Tmp_16
(*  20	*)	ST 	sv_k1_1
(* 191	*)	CAL	trigKo4(CLK:=tls_k1_lr)
(* 191	*)	LD 	trigKo4.Q
(* 768	*)	ST	_Nod_Tmp_15
(* 208	*)	CAL	offKo1(in:=_Nod_Tmp_15, sig0:=sv_k1_1, sig1:=sv_k1_2, sig2:=sv_k1_3)
(* 208	*)	LD 	offKo1.sOff0
(* 263	*)	ST 	sv_k1_1
(* 208	*)	LD 	offKo1.sOff1
(* 275	*)	ST 	sv_k1_2
(* 208	*)	LD 	offKo1.sOff2
(* 284	*)	ST 	sv_k1_3
(* 393	*)	CAL	trigOnKo1(CLK:=tll_k1_lr)
(* 393	*)	LD 	trigOnKo1.Q
(* 820	*)	ST	_Nod_Tmp_14
(* 329	*)	CAL	onKo1(in:=_Nod_Tmp_14, sig0:=sv_k1_1, sig1:=sv_k1_2, sig2:=sv_k1_3)
(* 329	*)	LD 	onKo1.sOff0
(* 302	*)	ST 	sv_k1_1
(* 329	*)	LD 	onKo1.sOff1
(* 311	*)	ST 	sv_k1_2
(* 329	*)	LD 	onKo1.sOff2
(* 320	*)	ST 	sv_k1_3
(* 174	*)	CAL	trigKo3(CLK:=tls_k1_ll)
(* 956	*)	LD 	_Tmp_For_Back_Conn_1
(* 966	*)	OR 	trigKo3.Q
(* 984	*)	ST	_Nod_Tmp_12
(* 879	*)	LD 	vent_k1
(* 900	*)	ST	_Nod_Tmp_11
(* 112	*)	LD 	_Nod_Tmp_12
(* 120	*)	XOR 	_Nod_Tmp_11
(* 940	*)	ST	_Nod_Tmp_9
(* 858	*)	ST 	vent_k1
(* 584	*)	LD 	T#0.5s
(* 587	*)	ST	_Nod_Tmp_5
(* 459	*)	CAL	blik_ko1_2(InButton:=_Nod_Tmp_22, InLight:=_Nod_Tmp_21, InTimeOfBlic:=_Nod_Tmp_5)
(* 786	*)	LD 	T#1s
(* 838	*)	ST	_Nod_Tmp_8
(* 789	*)	CAL	tp_ko1_2(IN:=_Nod_Tmp_14, PT:=_Nod_Tmp_8)
(* 789	*)	LD 	tp_ko1_2.Q
(* 829	*)	ST	_Nod_Tmp_7
(* 683	*)	LD 	blik_ko1_2.OutLED_Green
(* 691	*)	OR 	_Nod_Tmp_7
(* 508	*)	ST 	k1_led_k1_rg
(* 526	*)	CAL	blik_ko1_3(InButton:=_Nod_Tmp_19, InLight:=_Nod_Tmp_18, InTimeOfBlic:=_Nod_Tmp_5)
(* 410	*)	CAL	blik_ko1_1(InButton:=_Nod_Tmp_12, InLight:=_Nod_Tmp_11, InTimeOfBlic:=_Nod_Tmp_5)
(* 609	*)	LD 	blik_ko1_3.OutLED_Green
(* 617	*)	OR 	blik_ko1_1.OutLED_Green
(* 625	*)	OR 	_Nod_Tmp_7
(* 847	*)	ST 	k1_led_k1_lg
(* 737	*)	CAL	tp_ko1_1(IN:=_Nod_Tmp_15, PT:=_Nod_Tmp_8)
(* 737	*)	LD 	tp_ko1_1.Q
(* 777	*)	ST	_Nod_Tmp_3
(* 712	*)	LD 	blik_ko1_2.OutLED_Red
(* 720	*)	OR 	_Nod_Tmp_3
(* 517	*)	ST 	k1_led_k1_rr
(* 646	*)	LD 	blik_ko1_3.OutLED_Red
(* 654	*)	OR 	blik_ko1_1.OutLED_Red
(* 662	*)	OR 	_Nod_Tmp_3
(* 450	*)	ST 	k1_led_k1_lr
(* 909	*)	CAL	TON_K1_Vent(IN:=_Nod_Tmp_9, PT:=T#2h)
(* 909	*)	LD 	TON_K1_Vent.Q
//N001
(* 956	*)	ST	_Tmp_For_Back_Conn_1

END_PROGRAM
