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
<inVariable name="tl_zadveri_svetlo_venk_jih" type="BOOL" id="3" disabled="1">
  <position x="4" y="37" />
</inVariable>
<block name="R_TRIG" instance="trigVenk1" id="4" height="4" width="6" line="3" order="1">
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
<block name="R_TRIG" instance="trigVenk2" id="5" height="4" width="6" disabled="1">
  <position x="33" y="35" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="3" disabled="1">
        <position x="33" y="38" />
        <position x="31" y="38" />
        <position x="31" y="38" />
        <position x="23" y="38" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="TP" instance="timeVenk1" id="6" height="6" width="6" line="4" order="2">
  <position x="62" y="18" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="4" name="Q">
        <position x="62" y="21" />
        <position x="53" y="21" />
        <position x="53" y="21" />
        <position x="46" y="21" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="7">
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
<inVariable name="T#2s" type="TIME" id="7">
  <position x="50" y="22" />
</inVariable>
<outVariable name="sv_venkovni_sever_rozp" type="BOOL" id="8" order="3">
  <position x="85" y="20" />
  <connection refid="6" name="Q">
    <position x="86" y="21" />
    <position x="76" y="21" />
    <position x="76" y="21" />
    <position x="68" y="21" />
  </connection>
</outVariable>
<block name="TP" instance="timeVenk2" id="9" height="6" width="6" disabled="1">
  <position x="62" y="35" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="12" disabled="1">
        <position x="62" y="38" />
        <position x="53" y="38" />
        <position x="53" y="38" />
        <position x="45" y="38" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="11" disabled="1">
        <position x="62" y="40" />
        <position x="59" y="40" />
        <position x="59" y="40" />
        <position x="55" y="40" />
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
<outVariable name="sv_venkovni_jih_rozp" type="BOOL" id="10" disabled="1">
  <position x="87" y="37" />
  <connection refid="9" name="Q" disabled="1">
    <position x="88" y="38" />
    <position x="77" y="38" />
    <position x="77" y="38" />
    <position x="68" y="38" />
  </connection>
</outVariable>
<inVariable name="T#2s" type="TIME" id="11" disabled="1">
  <position x="50" y="39" />
</inVariable>
<node id="12" disabled="1">
  <position x="45" y="38" />
  <connection refid="5" name="Q" disabled="1">
    <position x="45" y="38" />
    <position x="42" y="38" />
    <position x="42" y="38" />
    <position x="39" y="38" />
  </connection>
</node>
<outVariable name="sig_tl_zadveri" type="BOOL" id="13" disabled="1">
  <position x="87" y="49" />
  <connection refid="12" disabled="1">
    <position x="88" y="50" />
    <position x="45" y="50" />
    <position x="45" y="38" />
    <position x="45" y="38" />
  </connection>
</outVariable>
<outVariable name="sv_ve_zapad" type="BOOL" id="14" order="12">
  <position x="103" y="104" />
  <connection refid="57">
    <position x="104" y="105" />
    <position x="98" y="105" />
    <position x="98" y="105" />
    <position x="74" y="105" />
  </connection>
</outVariable>
<inVariable name="sv_ve_zapad" type="BOOL" id="15">
  <position x="6" y="104" />
</inVariable>
<outVariable name="sv_ve_vychod" type="BOOL" id="16" order="17">
  <position x="103" y="120" />
  <connection refid="63">
    <position x="104" y="121" />
    <position x="90" y="121" />
    <position x="90" y="121" />
    <position x="74" y="121" />
  </connection>
</outVariable>
<inVariable name="sv_ve_vychod" type="BOOL" id="17">
  <position x="5" y="120" />
</inVariable>
<inVariable name="sig_tl_zadveri" type="BOOL" id="18">
  <position x="5" y="129" />
</inVariable>
<inVariable name="sig_tl_pokojV" type="BOOL" id="19">
  <position x="5" y="122" />
</inVariable>
<inVariable name="sig_tl_pokojZ" type="BOOL" id="20">
  <position x="6" y="106" />
</inVariable>
<comment id="21" height="6" width="47">
  <position x="5" y="62" />
Ovladani svetel k silnici a do zahrady. 
Nabezne hrany jsou reseny v jednotlivych pokojich.
</comment>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="22" height="4" width="4" line="21" order="7">
  <position x="52" y="104" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="28">
        <position x="52" y="105" />
        <position x="49" y="105" />
        <position x="49" y="105" />
        <position x="24" y="105" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="24" name="OR">
        <position x="52" y="107" />
        <position x="48" y="107" />
        <position x="48" y="107" />
        <position x="47" y="107" />
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
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="23" height="4" width="4" line="43" order="14">
  <position x="51" y="120" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="29">
        <position x="51" y="121" />
        <position x="48" y="121" />
        <position x="48" y="121" />
        <position x="24" y="121" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="25" name="OR">
        <position x="51" y="123" />
        <position x="48" y="123" />
        <position x="48" y="123" />
        <position x="47" y="123" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="24" height="6" width="3" line="18" order="6">
  <position x="44" y="106" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="20">
        <position x="44" y="107" />
        <position x="31" y="107" />
        <position x="31" y="107" />
        <position x="17" y="107" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="64">
        <position x="44" y="109" />
        <position x="29" y="109" />
        <position x="29" y="109" />
        <position x="16" y="109" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="67">
        <position x="44" y="111" />
        <position x="41" y="111" />
        <position x="41" y="127" />
        <position x="41" y="127" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="25" height="6" width="3" line="40" order="13">
  <position x="44" y="122" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="19">
        <position x="44" y="123" />
        <position x="30" y="123" />
        <position x="30" y="123" />
        <position x="16" y="123" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="65">
        <position x="44" y="125" />
        <position x="30" y="125" />
        <position x="30" y="125" />
        <position x="16" y="125" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="67">
        <position x="44" y="127" />
        <position x="42" y="127" />
        <position x="42" y="127" />
        <position x="41" y="127" />
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
<inVariable name="tl_chodba_2NP_rozvadec" type="BOOL" id="26" disabled="1">
  <position x="3" y="152" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="27" height="4" width="4" line="26" order="8">
  <position x="26" y="111" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="28">
        <position x="26" y="112" />
        <position x="24" y="112" />
        <position x="24" y="105" />
        <position x="24" y="105" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="29">
        <position x="26" y="114" />
        <position x="24" y="114" />
        <position x="24" y="121" />
        <position x="24" y="121" />
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
<node id="28">
  <position x="24" y="105" />
  <connection refid="15">
    <position x="24" y="105" />
    <position x="22" y="105" />
    <position x="22" y="105" />
    <position x="16" y="105" />
  </connection>
</node>
<node id="29">
  <position x="24" y="121" />
  <connection refid="17">
    <position x="24" y="121" />
    <position x="20" y="121" />
    <position x="20" y="121" />
    <position x="16" y="121" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="30" height="4" width="4" line="29" order="9">
  <position x="34" y="115" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="27" name="XOR">
        <position x="34" y="116" />
        <position x="32" y="116" />
        <position x="32" y="112" />
        <position x="30" y="112" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="66">
        <position x="34" y="118" />
        <position x="32" y="118" />
        <position x="32" y="127" />
        <position x="32" y="127" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="31" height="4" width="4" line="35" order="11">
  <position x="67" y="104" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="22" name="XOR">
        <position x="67" y="105" />
        <position x="60" y="105" />
        <position x="60" y="105" />
        <position x="56" y="105" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="32" name="NOT">
        <position x="67" y="107" />
        <position x="66" y="107" />
        <position x="66" y="107" />
        <position x="65" y="107" />
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
<block name="NOT" instance="" function="true" hiddenPins="true" operator="true" id="32" height="2" width="4" line="32" order="10">
  <position x="61" y="106" />
  <inVariables>
    <variable name="" type="ANY_BIT">
      <connection refid="35">
        <position x="61" y="107" />
        <position x="59" y="107" />
        <position x="59" y="116" />
        <position x="59" y="116" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="33" height="4" width="4" line="49" order="16">
  <position x="67" y="120" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="23" name="XOR">
        <position x="67" y="121" />
        <position x="59" y="121" />
        <position x="59" y="121" />
        <position x="55" y="121" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="34" name="NOT">
        <position x="67" y="123" />
        <position x="66" y="123" />
        <position x="66" y="123" />
        <position x="65" y="123" />
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
<block name="NOT" instance="" function="true" hiddenPins="true" operator="true" id="34" height="2" width="4" line="46" order="15">
  <position x="61" y="122" />
  <inVariables>
    <variable name="" type="ANY_BIT">
      <connection refid="35">
        <position x="61" y="123" />
        <position x="59" y="123" />
        <position x="59" y="116" />
        <position x="59" y="116" />
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
<node id="35">
  <position x="59" y="116" />
  <connection refid="30" name="AND">
    <position x="59" y="116" />
    <position x="56" y="116" />
    <position x="56" y="116" />
    <position x="38" y="116" />
  </connection>
</node>
<block name="R_TRIG" instance="trigVenk3" id="36" height="4" width="6" line="89" order="34" disabled="1">
  <position x="29" y="150" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="26" disabled="1">
        <position x="29" y="153" />
        <position x="25" y="153" />
        <position x="25" y="153" />
        <position x="22" y="153" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<inVariable name="tl_zadveri_svetlo_venk_jih" type="BOOL" id="37">
  <position x="4" y="56" />
</inVariable>
<block name="R_TRIG" instance="trigVenk2" id="38" height="4" width="6" line="8" order="4">
  <position x="33" y="54" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="37">
        <position x="33" y="57" />
        <position x="31" y="57" />
        <position x="31" y="57" />
        <position x="23" y="57" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<outVariable name="sig_tl_zadveri" type="BOOL" id="39" order="5">
  <position x="47" y="56" />
  <connection refid="38" name="Q">
    <position x="48" y="57" />
    <position x="45" y="57" />
    <position x="45" y="57" />
    <position x="39" y="57" />
  </connection>
</outVariable>
<inVariable name="T#500ms" type="TIME" id="40" disabled="1">
  <position x="12" y="89" />
</inVariable>
<outVariable name="led_pz_rg" type="BOOL" id="41" disabled="1">
  <position x="51" y="77" />
  <connection refid="50" disabled="1">
    <position x="52" y="78" />
    <position x="49" y="78" />
    <position x="49" y="80" />
    <position x="49" y="80" />
  </connection>
</outVariable>
<block name="TON" instance="TON_2" id="42" height="6" width="6" line="14" disabled="1">
  <position x="24" y="85" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="47" disabled="1">
        <position x="24" y="88" />
        <position x="22" y="88" />
        <position x="22" y="88" />
        <position x="20" y="88" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="45" disabled="1">
        <position x="24" y="90" />
        <position x="23" y="90" />
        <position x="23" y="90" />
        <position x="24" y="90" />
        <position x="24" y="90" />
        <position x="23" y="90" />
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
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="43" height="4" width="4" line="40" disabled="1">
  <position x="33" y="87" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="42" name="Q" disabled="1">
        <position x="33" y="88" />
        <position x="32" y="88" />
        <position x="32" y="88" />
        <position x="30" y="88" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
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
<block name="TON" instance="TON_1" id="44" height="6" width="6" line="42" disabled="1">
  <position x="40" y="85" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="43" name="XOR" disabled="1">
        <position x="40" y="88" />
        <position x="39" y="88" />
        <position x="39" y="88" />
        <position x="37" y="88" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="45" disabled="1">
        <position x="40" y="90" />
        <position x="38" y="90" />
        <position x="38" y="92" />
        <position x="23" y="92" />
        <position x="23" y="90" />
        <position x="23" y="90" />
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
<node id="45" disabled="1">
  <position x="23" y="90" />
  <connection refid="40" disabled="1">
    <position x="23" y="90" />
    <position x="21" y="90" />
    <position x="21" y="90" />
    <position x="20" y="90" />
  </connection>
</node>
<outVariable name="pom_blik" type="BOOL" id="46" disabled="1">
  <position x="51" y="87" />
  <connection refid="48" disabled="1">
    <position x="52" y="88" />
    <position x="51" y="88" />
    <position x="51" y="88" />
    <position x="49" y="88" />
  </connection>
</outVariable>
<inVariable name="pom_blik" type="BOOL" id="47" disabled="1">
  <position x="12" y="87" />
</inVariable>
<node id="48" disabled="1">
  <position x="49" y="88" />
  <connection refid="44" name="Q" disabled="1">
    <position x="49" y="88" />
    <position x="47" y="88" />
    <position x="47" y="88" />
    <position x="46" y="88" />
  </connection>
</node>
<outVariable name="led_lo_rg" type="BOOL" id="49" disabled="1">
  <position x="51" y="79" />
  <connection refid="50" disabled="1">
    <position x="52" y="80" />
    <position x="51" y="80" />
    <position x="51" y="80" />
    <position x="49" y="80" />
  </connection>
</outVariable>
<node id="50" disabled="1">
  <position x="49" y="80" />
  <connection refid="54" disabled="1">
    <position x="49" y="80" />
    <position x="49" y="80" />
    <position x="49" y="82" />
    <position x="49" y="82" />
  </connection>
</node>
<outVariable name="led_pv_lr" type="BOOL" id="51" disabled="1">
  <position x="51" y="81" />
  <connection refid="54" disabled="1">
    <position x="52" y="82" />
    <position x="50" y="82" />
    <position x="50" y="82" />
    <position x="49" y="82" />
  </connection>
</outVariable>
<outVariable name="led_ob_lr" type="BOOL" id="52" disabled="1">
  <position x="51" y="83" />
  <connection refid="53" disabled="1">
    <position x="52" y="84" />
    <position x="50" y="84" />
    <position x="50" y="84" />
    <position x="49" y="84" />
  </connection>
</outVariable>
<node id="53" disabled="1">
  <position x="49" y="84" />
  <connection refid="48" disabled="1">
    <position x="49" y="84" />
    <position x="49" y="84" />
    <position x="49" y="88" />
    <position x="49" y="88" />
  </connection>
</node>
<node id="54" disabled="1">
  <position x="49" y="82" />
  <connection refid="53" disabled="1">
    <position x="49" y="82" />
    <position x="49" y="82" />
    <position x="49" y="84" />
    <position x="49" y="84" />
  </connection>
</node>
<comment id="55" height="4" width="30">
  <position x="14" y="76" />
Nahrazeno vlastnim FB: fb_kmitac
</comment>
<block name="fb_kmitac" instance="kmit1" id="56" height="8" width="12" line="52" order="18">
  <position x="88" y="94" />
  <inVariables>
    <variable name="sig_IN" type="BOOL">
      <connection refid="57">
        <position x="88" y="97" />
        <position x="74" y="97" />
        <position x="74" y="105" />
        <position x="74" y="105" />
      </connection>
    <comment>spousteci signal</comment>
    </variable>
    <variable name="time_ON" type="TIME">
      <connection refid="58">
        <position x="88" y="99" />
        <position x="84" y="99" />
        <position x="84" y="99" />
        <position x="82" y="99" />
      </connection>
    <comment>delka sviceni</comment>
    </variable>
    <variable name="time_OFF" type="TIME">
      <connection refid="59">
        <position x="88" y="101" />
        <position x="86" y="101" />
        <position x="86" y="101" />
        <position x="85" y="101" />
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
<node id="57">
  <position x="74" y="105" />
  <connection refid="31" name="AND">
    <position x="74" y="105" />
    <position x="73" y="105" />
    <position x="73" y="105" />
    <position x="71" y="105" />
  </connection>
</node>
<inVariable name="T#1s" type="TIME" id="58">
  <position x="77" y="98" />
</inVariable>
<inVariable name="T#200ms" type="TIME" id="59">
  <position x="77" y="100" />
</inVariable>
<block name="fb_kmitac" instance="kmit2" id="60" height="8" width="12" line="55" order="20">
  <position x="88" y="129" />
  <inVariables>
    <variable name="sig_IN" type="BOOL">
      <connection refid="63">
        <position x="88" y="132" />
        <position x="74" y="132" />
        <position x="74" y="121" />
        <position x="74" y="121" />
      </connection>
    <comment>spousteci signal</comment>
    </variable>
    <variable name="time_ON" type="TIME">
      <connection refid="61">
        <position x="88" y="134" />
        <position x="84" y="134" />
        <position x="84" y="134" />
        <position x="82" y="134" />
      </connection>
    <comment>delka sviceni</comment>
    </variable>
    <variable name="time_OFF" type="TIME">
      <connection refid="62">
        <position x="88" y="136" />
        <position x="86" y="136" />
        <position x="86" y="136" />
        <position x="85" y="136" />
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
<inVariable name="T#1s" type="TIME" id="61">
  <position x="77" y="133" />
</inVariable>
<inVariable name="T#200ms" type="TIME" id="62">
  <position x="77" y="135" />
</inVariable>
<node id="63">
  <position x="74" y="121" />
  <connection refid="33" name="AND">
    <position x="74" y="121" />
    <position x="73" y="121" />
    <position x="73" y="121" />
    <position x="71" y="121" />
  </connection>
</node>
<inVariable name="sig_tl_loznice" type="BOOL" id="64">
  <position x="6" y="108" />
</inVariable>
<inVariable name="sig_tl_obyvak" type="BOOL" id="65">
  <position x="5" y="124" />
</inVariable>
<node id="66">
  <position x="32" y="127" />
  <connection refid="18">
    <position x="32" y="127" />
    <position x="30" y="127" />
    <position x="30" y="130" />
    <position x="16" y="130" />
  </connection>
</node>
<node id="67">
  <position x="41" y="127" />
  <connection refid="66">
    <position x="41" y="127" />
    <position x="37" y="127" />
    <position x="37" y="127" />
    <position x="32" y="127" />
  </connection>
</node>
<outVariable name="out_vychod" type="BOOL" id="132" order="21">
  <position x="104" y="131" />
  <connection refid="60" name="sig_OUT">
    <position x="105" y="132" />
    <position x="101" y="132" />
    <position x="101" y="132" />
    <position x="100" y="132" />
  </connection>
</outVariable>
<outVariable name="out_zapad" type="BOOL" id="135" order="19">
  <position x="104" y="96" />
  <connection refid="56" name="sig_OUT">
    <position x="105" y="97" />
    <position x="101" y="97" />
    <position x="101" y="97" />
    <position x="100" y="97" />
  </connection>
</outVariable>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
(* 354	*)	_Nod_Tmp_16	:	BOOL;
(* 853	*)	_Nod_Tmp_15	:	BOOL;
(* 190	*)	_Fun_Tmp_IN2_13_2	:	BOOL;
(* 401	*)	_Fun_Tmp_IN1_7_1	:	BOOL;
(* 363	*)	_Nod_Tmp_12	:	BOOL;
(* 372	*)	_Fun_Tmp_IN1_10_1	:	BOOL;
(* 499	*)	_Nod_Tmp_9	:	BOOL;
(* 401	*)	_Fun_Tmp_IN2_7_2	:	BOOL;
(* 780	*)	_Nod_Tmp_6	:	BOOL;
(* 219	*)	_Fun_Tmp_IN2_4_2	:	BOOL;
(* 450	*)	_Fun_Tmp_IN1_2_1	:	BOOL;
(* 450	*)	_Fun_Tmp_IN2_2_2	:	BOOL;
(* 838	*)	_Nod_Tmp_1	:	BOOL;
END_VAR

//NC
//N000
(*  14	*)	CAL	trigVenk1(CLK:=tl_tech_m_svetlo_venk_sever)
(*  48	*)	CAL	timeVenk1(IN:=trigVenk1.Q, PT:=T#2s)
(*  48	*)	LD 	timeVenk1.Q
(*  82	*)	ST 	sv_venkovni_sever_rozp
//N001
(* 528	*)	CAL	trigVenk2(CLK:=tl_zadveri_svetlo_venk_jih)
(* 528	*)	LD 	trigVenk2.Q
(* 545	*)	ST 	sig_tl_zadveri
//N002
(* 161	*)	LD 	sv_ve_zapad
(* 354	*)	ST	_Nod_Tmp_16
(* 176	*)	LD 	sig_tl_zadveri
(* 853	*)	ST	_Nod_Tmp_15
(* 252	*)	LD 	sig_tl_pokojZ
(* 260	*)	OR 	sig_tl_loznice
(* 268	*)	OR 	_Nod_Tmp_15
(* 202	*)	ST 	_Fun_Tmp_IN2_13_2
(* 194	*)	LD 	_Nod_Tmp_16
(* 202	*)	XOR 	_Fun_Tmp_IN2_13_2
(* 405	*)	ST 	_Fun_Tmp_IN1_7_1
(* 173	*)	LD 	sv_ve_vychod
(* 363	*)	ST	_Nod_Tmp_12
(* 329	*)	LD 	_Nod_Tmp_16
(* 337	*)	XOR 	_Nod_Tmp_12
(* 376	*)	ST 	_Fun_Tmp_IN1_10_1
(* 376	*)	LD 	_Fun_Tmp_IN1_10_1
(* 384	*)	AND 	_Nod_Tmp_15
(* 499	*)	ST	_Nod_Tmp_9
(* 434	*)	LD 	_Nod_Tmp_9
(* 430	*)	NOT
(* 413	*)	ST 	_Fun_Tmp_IN2_7_2
(* 405	*)	LD 	_Fun_Tmp_IN1_7_1
(* 413	*)	AND 	_Fun_Tmp_IN2_7_2
(* 780	*)	ST	_Nod_Tmp_6
(* 152	*)	ST 	sv_ve_zapad
(* 289	*)	LD 	sig_tl_pokojV
(* 297	*)	OR 	sig_tl_obyvak
(* 305	*)	OR 	_Nod_Tmp_15
(* 231	*)	ST 	_Fun_Tmp_IN2_4_2
(* 223	*)	LD 	_Nod_Tmp_12
(* 231	*)	XOR 	_Fun_Tmp_IN2_4_2
(* 454	*)	ST 	_Fun_Tmp_IN1_2_1
(* 483	*)	LD 	_Nod_Tmp_9
(* 479	*)	NOT
(* 462	*)	ST 	_Fun_Tmp_IN2_2_2
(* 454	*)	LD 	_Fun_Tmp_IN1_2_1
(* 462	*)	AND 	_Fun_Tmp_IN2_2_2
(* 838	*)	ST	_Nod_Tmp_1
(* 164	*)	ST 	sv_ve_vychod
(* 743	*)	CAL	kmit1(sig_IN:=_Nod_Tmp_6, time_ON:=T#1s, time_OFF:=T#200ms)
(* 743	*)	LD 	kmit1.sig_OUT
(* 880	*)	ST 	out_zapad
(* 795	*)	CAL	kmit2(sig_IN:=_Nod_Tmp_1, time_ON:=T#1s, time_OFF:=T#200ms)
(* 795	*)	LD 	kmit2.sig_OUT
(* 871	*)	ST 	out_vychod

END_PROGRAM
