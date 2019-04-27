PROGRAM ovladani_pir
  VAR_INPUT
  END_VAR
  
  VAR_OUTPUT
  END_VAR
  
  VAR
    act_time : TIME;
    act_timedate : DATE_AND_TIME;
    set_act_timedate : DATE_AND_TIME := DT#2018-10-29-22:49:00;
    timeSvChodba2np : TP;
    cas_svitu : TIME;
    timeSvChodba1np : TP;
    timePredsin : TP;
    timeSvChodba2np2 : TP;
    cas_svitu2 : TIME;
    timePredsin2 : TP;
    timeSvChodba1np2 : TP;
    ftrig_pir2np : F_TRIG;
    rtrig_pir2np : R_TRIG;
    rtrig_pirPredsin : R_TRIG;
    ftrig_pirPredsin : F_TRIG;
    rtrig_pisChodba1np : R_TRIG;
    ftrig_pisChodba1np : F_TRIG;
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
<inVariable name="pir_chodba_2np" type="BOOL" id="2">
  <position x="64" y="25" />
</inVariable>
<block name="NOT" instance="" function="true" hiddenPins="true" operator="true" id="3" height="2" width="4" line="16" order="6">
  <position x="80" y="25" />
  <inVariables>
    <variable name="" type="ANY_BIT">
      <connection refid="2">
        <position x="80" y="26" />
        <position x="78" y="26" />
        <position x="78" y="26" />
        <position x="77" y="26" />
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
<block name="GetTime" instance="" function="true" id="4" height="4" width="7" line="3" order="1">
  <position x="4" y="11" />
  <outVariables>
    <variable name="GetTime" type="TIME">
    <comment>Načíst aktuální čas PLC</comment>
    </variable>
  </outVariables>
</block>
<outVariable name="act_time" type="TIME" id="5" order="2">
  <position x="40" y="13" />
  <connection refid="12">
    <position x="41" y="14" />
    <position x="40" y="14" />
    <position x="40" y="14" />
    <position x="17" y="14" />
  </connection>
</outVariable>
<block name="SetRTC" instance="" function="true" id="6" height="4" width="6" line="110" order="44" disabled="1">
  <position x="42" y="157" />
  <inVariables>
    <variable name="PDT" type="DATE_AND_TIME">
      <connection refid="9" disabled="1">
        <position x="42" y="160" />
        <position x="35" y="160" />
        <position x="35" y="160" />
        <position x="28" y="160" />
      </connection>
    <comment>nový datum a čas</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="SetRTC" type="BOOL">
    <comment>Nastavit nový čas a datum PLC
  Funkce nastaví nový datum a čas do RTC obvodu v PLC</comment>
    </variable>
  </outVariables>
</block>
<block name="GetDateTime" instance="" function="true" id="7" height="4" width="10" line="110" order="44">
  <position x="8" y="170" />
  <outVariables>
    <variable name="GetDateTime" type="DATE_AND_TIME">
    <comment>Načíst aktuální datum a čas PLC</comment>
    </variable>
  </outVariables>
</block>
<outVariable name="act_timedate" type="DATE_AND_TIME" id="8" order="45">
  <position x="30" y="172" />
  <connection refid="7" name="GetDateTime">
    <position x="31" y="173" />
    <position x="23" y="173" />
    <position x="23" y="173" />
    <position x="18" y="173" />
  </connection>
</outVariable>
<inVariable name="set_act_timedate" type="DATE_AND_TIME" id="9" disabled="1">
  <position x="14" y="159" />
</inVariable>
<comment id="10" height="3" width="39">
  <position x="8" y="152" />
pro nastaveni aktualniho casu a datumu:
</comment>
<block name="GT" instance="" function="true" hiddenPins="true" operator="true" id="11" height="4" width="3" line="7" order="3">
  <position x="31" y="20" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="34">
        <position x="31" y="21" />
        <position x="30" y="21" />
        <position x="30" y="21" />
        <position x="28" y="21" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="13">
        <position x="31" y="23" />
        <position x="29" y="23" />
        <position x="29" y="23" />
        <position x="10" y="23" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="GT" type="BOOL">
    <comment>Greater than
  returns true if IN1 &gt; IN2
</comment>
    </variable>
  </outVariables>
</block>
<node id="12">
  <position x="17" y="14" />
  <connection refid="4" name="GetTime">
    <position x="17" y="14" />
    <position x="16" y="14" />
    <position x="16" y="14" />
    <position x="11" y="14" />
  </connection>
</node>
<inVariable name="T#17h" type="TIME" id="13">
  <position x="4" y="22" />
</inVariable>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="14" height="4" width="4" line="19" order="7">
  <position x="86" y="23" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="33" name="OR">
        <position x="86" y="24" />
        <position x="62" y="24" />
        <position x="62" y="24" />
        <position x="42" y="24" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="3" name="NOT">
        <position x="86" y="26" />
        <position x="85" y="26" />
        <position x="85" y="26" />
        <position x="84" y="26" />
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
<outVariable name="sv_chodba_2np_zed" type="BOOL" id="15" order="17">
  <position x="167" y="30" />
  <connection refid="35" name="OR">
    <position x="168" y="31" />
    <position x="160" y="31" />
    <position x="160" y="31" />
    <position x="158" y="31" />
  </connection>
</outVariable>
<block name="TP" instance="timeSvChodba2np" id="16" height="6" width="6" line="26" order="9">
  <position x="120" y="28" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="59">
        <position x="120" y="31" />
        <position x="114" y="31" />
        <position x="114" y="31" />
        <position x="108" y="31" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="45">
        <position x="120" y="33" />
        <position x="92" y="33" />
        <position x="92" y="33" />
        <position x="88" y="33" />
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
<inVariable name="T#4m" type="TIME" id="17">
  <position x="71" y="32" />
</inVariable>
<outVariable name="cas_svitu" type="TIME" id="18" order="10">
  <position x="128" y="32" />
  <connection refid="16" name="ET">
    <position x="129" y="33" />
    <position x="128" y="33" />
    <position x="128" y="33" />
    <position x="126" y="33" />
  </connection>
</outVariable>
<inVariable name="pir_chodba_1np" type="BOOL" id="19">
  <position x="62" y="53" />
</inVariable>
<block name="NOT" instance="" function="true" hiddenPins="true" operator="true" id="20" height="2" width="4" line="53" order="21">
  <position x="80" y="53" />
  <inVariables>
    <variable name="" type="ANY_BIT">
      <connection refid="19">
        <position x="80" y="54" />
        <position x="76" y="54" />
        <position x="76" y="54" />
        <position x="75" y="54" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="21" height="4" width="4" line="56" order="22">
  <position x="86" y="51" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="75" name="OR">
        <position x="86" y="52" />
        <position x="63" y="52" />
        <position x="63" y="52" />
        <position x="43" y="52" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="20" name="NOT">
        <position x="86" y="54" />
        <position x="85" y="54" />
        <position x="85" y="54" />
        <position x="84" y="54" />
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
<outVariable name="sv_chodba_1NP_sedy" type="BOOL" id="22" order="30">
  <position x="167" y="54" />
  <connection refid="39" name="OR">
    <position x="168" y="55" />
    <position x="164" y="55" />
    <position x="164" y="55" />
    <position x="161" y="55" />
  </connection>
</outVariable>
<block name="TP" instance="timeSvChodba1np" id="23" height="6" width="6" line="63" order="24">
  <position x="120" y="52" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="65">
        <position x="120" y="55" />
        <position x="117" y="55" />
        <position x="117" y="55" />
        <position x="111" y="55" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="54">
        <position x="120" y="57" />
        <position x="97" y="57" />
        <position x="97" y="57" />
        <position x="88" y="57" />
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
<inVariable name="T#4m" type="TIME" id="24">
  <position x="73" y="56" />
</inVariable>
<block name="NOT" instance="" function="true" hiddenPins="true" operator="true" id="25" height="2" width="4" line="86" order="34">
  <position x="80" y="84" />
  <inVariables>
    <variable name="" type="ANY_BIT">
      <connection refid="30">
        <position x="80" y="85" />
        <position x="76" y="85" />
        <position x="76" y="85" />
        <position x="71" y="85" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="26" height="4" width="4" line="89" order="35">
  <position x="87" y="82" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="68" name="OR">
        <position x="87" y="83" />
        <position x="68" y="83" />
        <position x="68" y="83" />
        <position x="45" y="83" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="25" name="NOT">
        <position x="87" y="85" />
        <position x="85" y="85" />
        <position x="85" y="85" />
        <position x="84" y="85" />
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
<outVariable name="sv_predsin_stena" type="BOOL" id="27" order="43">
  <position x="170" y="85" />
  <connection refid="37" name="OR">
    <position x="171" y="86" />
    <position x="163" y="86" />
    <position x="163" y="86" />
    <position x="161" y="86" />
  </connection>
</outVariable>
<block name="TP" instance="timePredsin" id="28" height="6" width="6" line="96" order="37">
  <position x="121" y="83" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="62">
        <position x="121" y="86" />
        <position x="116" y="86" />
        <position x="116" y="86" />
        <position x="112" y="86" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="50">
        <position x="121" y="88" />
        <position x="98" y="88" />
        <position x="98" y="88" />
        <position x="89" y="88" />
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
<inVariable name="T#1m" type="TIME" id="29">
  <position x="73" y="87" />
</inVariable>
<inVariable name="pir_predsin" type="BOOL" id="30">
  <position x="62" y="84" />
</inVariable>
<block name="LT" instance="" function="true" hiddenPins="true" operator="true" id="31" height="4" width="3" line="10" order="4">
  <position x="31" y="25" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="69">
        <position x="31" y="26" />
        <position x="29" y="26" />
        <position x="29" y="26" />
        <position x="28" y="26" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="32">
        <position x="31" y="28" />
        <position x="29" y="28" />
        <position x="29" y="28" />
        <position x="9" y="28" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="LT" type="BOOL">
    <comment>Less than
  returns true if IN1 &lt; IN2
</comment>
    </variable>
  </outVariables>
</block>
<inVariable name="T#8h" type="TIME" id="32">
  <position x="4" y="27" />
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="33" height="4" width="3" line="13" order="5">
  <position x="39" y="23" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="11" name="GT">
        <position x="39" y="24" />
        <position x="37" y="24" />
        <position x="37" y="21" />
        <position x="34" y="21" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="31" name="LT">
        <position x="39" y="26" />
        <position x="35" y="26" />
        <position x="35" y="26" />
        <position x="34" y="26" />
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
<node id="34">
  <position x="28" y="21" />
  <connection refid="12">
    <position x="28" y="21" />
    <position x="17" y="21" />
    <position x="17" y="14" />
    <position x="17" y="14" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="35" height="6" width="3" line="41" order="16">
  <position x="155" y="30" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="16" name="Q">
        <position x="155" y="31" />
        <position x="128" y="31" />
        <position x="128" y="31" />
        <position x="126" y="31" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="43">
        <position x="155" y="33" />
        <position x="150" y="33" />
        <position x="150" y="36" />
        <position x="95" y="36" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="44" name="Q">
        <position x="155" y="35" />
        <position x="152" y="35" />
        <position x="152" y="42" />
        <position x="143" y="42" />
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
<block name="TP" instance="timePredsin2" id="36" height="6" width="6" line="104" order="41">
  <position x="142" y="95" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="61" name="AND">
        <position x="142" y="98" />
        <position x="133" y="98" />
        <position x="133" y="96" />
        <position x="131" y="96" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="50">
        <position x="142" y="100" />
        <position x="89" y="100" />
        <position x="89" y="88" />
        <position x="89" y="88" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="37" height="6" width="3" line="107" order="42">
  <position x="158" y="85" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="28" name="Q">
        <position x="158" y="86" />
        <position x="128" y="86" />
        <position x="128" y="86" />
        <position x="127" y="86" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="36" name="Q">
        <position x="158" y="88" />
        <position x="149" y="88" />
        <position x="149" y="98" />
        <position x="148" y="98" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="51">
        <position x="158" y="90" />
        <position x="126" y="90" />
        <position x="126" y="90" />
        <position x="96" y="90" />
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
<block name="TP" instance="timeSvChodba1np2" id="38" height="6" width="6" line="71" order="28">
  <position x="142" y="64" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="63" name="AND">
        <position x="142" y="67" />
        <position x="133" y="67" />
        <position x="133" y="65" />
        <position x="131" y="65" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="54">
        <position x="142" y="69" />
        <position x="88" y="69" />
        <position x="88" y="57" />
        <position x="88" y="57" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="39" height="6" width="3" line="74" order="29">
  <position x="158" y="54" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="23" name="Q">
        <position x="158" y="55" />
        <position x="132" y="55" />
        <position x="132" y="55" />
        <position x="126" y="55" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="38" name="Q">
        <position x="158" y="57" />
        <position x="150" y="57" />
        <position x="150" y="67" />
        <position x="148" y="67" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="55">
        <position x="158" y="59" />
        <position x="127" y="59" />
        <position x="127" y="59" />
        <position x="95" y="59" />
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
<block name="F_TRIG" instance="ftrig_pir2np" id="40" height="4" width="6" line="32" order="12">
  <position x="98" y="39" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="43">
        <position x="98" y="42" />
        <position x="95" y="42" />
        <position x="95" y="36" />
        <position x="95" y="36" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="rtrig_pir2np" id="41" height="4" width="6" line="21" order="8">
  <position x="97" y="21" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="42">
        <position x="97" y="24" />
        <position x="96" y="24" />
        <position x="96" y="24" />
        <position x="95" y="24" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<node id="42">
  <position x="95" y="24" />
  <connection refid="14" name="AND">
    <position x="95" y="24" />
    <position x="92" y="24" />
    <position x="92" y="24" />
    <position x="90" y="24" />
  </connection>
</node>
<node id="43">
  <position x="95" y="36" />
  <connection refid="42">
    <position x="95" y="36" />
    <position x="95" y="36" />
    <position x="95" y="24" />
    <position x="95" y="24" />
  </connection>
</node>
<block name="TP" instance="timeSvChodba2np2" id="44" height="6" width="6" line="36" order="14">
  <position x="137" y="39" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="57" name="AND">
        <position x="137" y="42" />
        <position x="132" y="42" />
        <position x="132" y="40" />
        <position x="129" y="40" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="45">
        <position x="137" y="44" />
        <position x="88" y="44" />
        <position x="88" y="33" />
        <position x="88" y="33" />
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
<node id="45">
  <position x="88" y="33" />
  <connection refid="17">
    <position x="88" y="33" />
    <position x="82" y="33" />
    <position x="82" y="33" />
    <position x="77" y="33" />
  </connection>
</node>
<outVariable name="cas_svitu2" type="TIME" id="46" order="15">
  <position x="145" y="43" />
  <connection refid="44" name="ET">
    <position x="146" y="44" />
    <position x="144" y="44" />
    <position x="144" y="44" />
    <position x="143" y="44" />
  </connection>
</outVariable>
<block name="R_TRIG" instance="rtrig_pirPredsin" id="47" height="4" width="6" line="91" order="36">
  <position x="99" y="80" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="49">
        <position x="99" y="83" />
        <position x="97" y="83" />
        <position x="97" y="83" />
        <position x="96" y="83" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="F_TRIG" instance="ftrig_pirPredsin" id="48" height="4" width="6" line="100" order="39">
  <position x="99" y="95" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="51">
        <position x="99" y="98" />
        <position x="96" y="98" />
        <position x="96" y="90" />
        <position x="96" y="90" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<node id="49">
  <position x="96" y="83" />
  <connection refid="26" name="AND">
    <position x="96" y="83" />
    <position x="95" y="83" />
    <position x="95" y="83" />
    <position x="91" y="83" />
  </connection>
</node>
<node id="50">
  <position x="89" y="88" />
  <connection refid="29">
    <position x="89" y="88" />
    <position x="83" y="88" />
    <position x="83" y="88" />
    <position x="79" y="88" />
  </connection>
</node>
<node id="51">
  <position x="96" y="90" />
  <connection refid="49">
    <position x="96" y="90" />
    <position x="96" y="90" />
    <position x="96" y="83" />
    <position x="96" y="83" />
  </connection>
</node>
<block name="R_TRIG" instance="rtrig_pisChodba1np" id="52" height="4" width="6" line="58" order="23">
  <position x="98" y="49" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="56">
        <position x="98" y="52" />
        <position x="97" y="52" />
        <position x="97" y="52" />
        <position x="95" y="52" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="F_TRIG" instance="ftrig_pisChodba1np" id="53" height="4" width="6" line="67" order="26">
  <position x="98" y="64" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="55">
        <position x="98" y="67" />
        <position x="95" y="67" />
        <position x="95" y="59" />
        <position x="95" y="59" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<node id="54">
  <position x="88" y="57" />
  <connection refid="24">
    <position x="88" y="57" />
    <position x="81" y="57" />
    <position x="81" y="57" />
    <position x="79" y="57" />
  </connection>
</node>
<node id="55">
  <position x="95" y="59" />
  <connection refid="56">
    <position x="95" y="59" />
    <position x="95" y="59" />
    <position x="95" y="52" />
    <position x="95" y="52" />
  </connection>
</node>
<node id="56">
  <position x="95" y="52" />
  <connection refid="21" name="AND">
    <position x="95" y="52" />
    <position x="93" y="52" />
    <position x="93" y="52" />
    <position x="90" y="52" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="57" height="4" width="4" line="34" order="13">
  <position x="125" y="39" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="58" name="NOT">
        <position x="125" y="40" />
        <position x="121" y="40" />
        <position x="121" y="40" />
        <position x="120" y="40" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="40" name="Q">
        <position x="125" y="42" />
        <position x="106" y="42" />
        <position x="106" y="42" />
        <position x="104" y="42" />
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
<block name="NOT" instance="" function="true" hiddenPins="true" operator="true" id="58" height="2" width="4" line="30" order="11">
  <position x="116" y="39" />
  <inVariables>
    <variable name="" type="ANY_BIT">
      <connection refid="59">
        <position x="116" y="40" />
        <position x="108" y="40" />
        <position x="108" y="31" />
        <position x="108" y="31" />
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
<node id="59">
  <position x="108" y="31" />
  <connection refid="41" name="Q">
    <position x="108" y="31" />
    <position x="108" y="31" />
    <position x="108" y="24" />
    <position x="103" y="24" />
  </connection>
</node>
<block name="NOT" instance="" function="true" hiddenPins="true" operator="true" id="60" height="2" width="4" line="98" order="38">
  <position x="117" y="95" />
  <inVariables>
    <variable name="" type="ANY_BIT">
      <connection refid="62">
        <position x="117" y="96" />
        <position x="112" y="96" />
        <position x="112" y="86" />
        <position x="112" y="86" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="61" height="4" width="4" line="102" order="40">
  <position x="127" y="95" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="60" name="NOT">
        <position x="127" y="96" />
        <position x="122" y="96" />
        <position x="122" y="96" />
        <position x="121" y="96" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="48" name="Q">
        <position x="127" y="98" />
        <position x="114" y="98" />
        <position x="114" y="98" />
        <position x="105" y="98" />
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
<node id="62">
  <position x="112" y="86" />
  <connection refid="47" name="Q">
    <position x="112" y="86" />
    <position x="112" y="86" />
    <position x="112" y="83" />
    <position x="105" y="83" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="63" height="4" width="4" line="69" order="27">
  <position x="127" y="64" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="64" name="NOT">
        <position x="127" y="65" />
        <position x="122" y="65" />
        <position x="122" y="65" />
        <position x="121" y="65" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="53" name="Q">
        <position x="127" y="67" />
        <position x="112" y="67" />
        <position x="112" y="67" />
        <position x="104" y="67" />
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
<block name="NOT" instance="" function="true" hiddenPins="true" operator="true" id="64" height="2" width="4" line="65" order="25">
  <position x="117" y="64" />
  <inVariables>
    <variable name="" type="ANY_BIT">
      <connection refid="65">
        <position x="117" y="65" />
        <position x="111" y="65" />
        <position x="111" y="55" />
        <position x="111" y="55" />
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
<node id="65">
  <position x="111" y="55" />
  <connection refid="52" name="Q">
    <position x="111" y="55" />
    <position x="111" y="55" />
    <position x="111" y="52" />
    <position x="104" y="52" />
  </connection>
</node>
<block name="GT" instance="" function="true" hiddenPins="true" operator="true" id="66" height="4" width="3" line="77" order="31">
  <position x="33" y="80" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="70">
        <position x="33" y="81" />
        <position x="30" y="81" />
        <position x="30" y="81" />
        <position x="28" y="81" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="71">
        <position x="33" y="83" />
        <position x="24" y="83" />
        <position x="24" y="83" />
        <position x="11" y="83" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="GT" type="BOOL">
    <comment>Greater than
  returns true if IN1 &gt; IN2
</comment>
    </variable>
  </outVariables>
</block>
<block name="LT" instance="" function="true" hiddenPins="true" operator="true" id="67" height="4" width="3" line="80" order="32">
  <position x="33" y="86" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="70">
        <position x="33" y="87" />
        <position x="28" y="87" />
        <position x="28" y="81" />
        <position x="28" y="81" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="72">
        <position x="33" y="89" />
        <position x="24" y="89" />
        <position x="24" y="89" />
        <position x="10" y="89" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="LT" type="BOOL">
    <comment>Less than
  returns true if IN1 &lt; IN2
</comment>
    </variable>
  </outVariables>
</block>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="68" height="4" width="3" line="83" order="33">
  <position x="42" y="82" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="66" name="GT">
        <position x="42" y="83" />
        <position x="38" y="83" />
        <position x="38" y="81" />
        <position x="36" y="81" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="67" name="LT">
        <position x="42" y="85" />
        <position x="38" y="85" />
        <position x="38" y="87" />
        <position x="36" y="87" />
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
<node id="69">
  <position x="28" y="26" />
  <connection refid="34">
    <position x="28" y="26" />
    <position x="28" y="26" />
    <position x="28" y="21" />
    <position x="28" y="21" />
  </connection>
</node>
<node id="70">
  <position x="28" y="81" />
  <connection refid="79">
    <position x="28" y="81" />
    <position x="28" y="81" />
    <position x="28" y="54" />
    <position x="28" y="54" />
  </connection>
</node>
<inVariable name="T#16h" type="TIME" id="71">
  <position x="5" y="82" />
</inVariable>
<inVariable name="T#8h" type="TIME" id="72">
  <position x="5" y="88" />
</inVariable>
<block name="GT" instance="" function="true" hiddenPins="true" operator="true" id="73" height="4" width="3" line="44" order="18">
  <position x="32" y="48" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="78">
        <position x="32" y="49" />
        <position x="29" y="49" />
        <position x="29" y="49" />
        <position x="28" y="49" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="76">
        <position x="32" y="51" />
        <position x="20" y="51" />
        <position x="20" y="51" />
        <position x="10" y="51" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="GT" type="BOOL">
    <comment>Greater than
  returns true if IN1 &gt; IN2
</comment>
    </variable>
  </outVariables>
</block>
<block name="LT" instance="" function="true" hiddenPins="true" operator="true" id="74" height="4" width="3" line="47" order="19">
  <position x="32" y="53" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="79">
        <position x="32" y="54" />
        <position x="29" y="54" />
        <position x="29" y="54" />
        <position x="28" y="54" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="77">
        <position x="32" y="56" />
        <position x="19" y="56" />
        <position x="19" y="56" />
        <position x="9" y="56" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="LT" type="BOOL">
    <comment>Less than
  returns true if IN1 &lt; IN2
</comment>
    </variable>
  </outVariables>
</block>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="75" height="4" width="3" line="50" order="20">
  <position x="40" y="51" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="73" name="GT">
        <position x="40" y="52" />
        <position x="38" y="52" />
        <position x="38" y="49" />
        <position x="35" y="49" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="74" name="LT">
        <position x="40" y="54" />
        <position x="36" y="54" />
        <position x="36" y="54" />
        <position x="35" y="54" />
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
<inVariable name="T#20h" type="TIME" id="76">
  <position x="4" y="50" />
</inVariable>
<inVariable name="T#7h" type="TIME" id="77">
  <position x="4" y="55" />
</inVariable>
<node id="78">
  <position x="28" y="49" />
  <connection refid="69">
    <position x="28" y="49" />
    <position x="28" y="49" />
    <position x="28" y="26" />
    <position x="28" y="26" />
  </connection>
</node>
<node id="79">
  <position x="28" y="54" />
  <connection refid="78">
    <position x="28" y="54" />
    <position x="28" y="54" />
    <position x="28" y="49" />
    <position x="28" y="49" />
  </connection>
</node>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
(* 120	*)	_Nod_Tmp_13	:	TIME;
(* 434	*)	_Fun_Tmp_IN1_33_1	:	BOOL;
(* 434	*)	_Fun_Tmp_IN2_33_2	:	BOOL;
(* 132	*)	_Fun_Tmp_IN1_31_1	:	BOOL;
(* 132	*)	_Fun_Tmp_IN2_31_2	:	BOOL;
(* 679	*)	_Nod_Tmp_27	:	BOOL;
(* 917	*)	_Nod_Tmp_30	:	BOOL;
(* 728	*)	_Nod_Tmp_29	:	TIME;
(* 868	*)	_Fun_Tmp_IN1_26_1	:	BOOL;
(*1207	*)	_Fun_Tmp_IN1_22_1	:	BOOL;
(*1207	*)	_Fun_Tmp_IN2_22_2	:	BOOL;
(* 236	*)	_Fun_Tmp_IN1_20_1	:	BOOL;
(* 236	*)	_Fun_Tmp_IN2_20_2	:	BOOL;
(* 859	*)	_Nod_Tmp_16	:	BOOL;
(*1033	*)	_Nod_Tmp_19	:	BOOL;
(* 841	*)	_Nod_Tmp_18	:	TIME;
(* 984	*)	_Fun_Tmp_IN1_15_1	:	BOOL;
(*1098	*)	_Fun_Tmp_IN1_10_1	:	BOOL;
(*1098	*)	_Fun_Tmp_IN2_10_2	:	BOOL;
(* 328	*)	_Fun_Tmp_IN1_8_1	:	BOOL;
(* 328	*)	_Fun_Tmp_IN2_8_2	:	BOOL;
(* 780	*)	_Nod_Tmp_4	:	BOOL;
(* 975	*)	_Nod_Tmp_7	:	BOOL;
(* 789	*)	_Nod_Tmp_6	:	TIME;
(* 946	*)	_Fun_Tmp_IN1_3_1	:	BOOL;
END_VAR

//NC
//N000
(*  31	*)	GetTime
(* 120	*)	ST	_Nod_Tmp_13
(*  39	*)	ST 	act_time
(*  96	*)	LD 	_Nod_Tmp_13
(* 104	*)	GT 	T#17h
(* 438	*)	ST 	_Fun_Tmp_IN1_33_1
(* 407	*)	LD 	_Nod_Tmp_13
(* 415	*)	LT 	T#8h
(* 446	*)	ST 	_Fun_Tmp_IN2_33_2
(* 438	*)	LD 	_Fun_Tmp_IN1_33_1
(* 446	*)	OR 	_Fun_Tmp_IN2_33_2
(* 136	*)	ST 	_Fun_Tmp_IN1_31_1
(*  15	*)	LD 	pir_chodba_2np
(*  11	*)	NOT
(* 144	*)	ST 	_Fun_Tmp_IN2_31_2
(* 136	*)	LD 	_Fun_Tmp_IN1_31_1
(* 144	*)	AND 	_Fun_Tmp_IN2_31_2
(* 679	*)	ST	_Nod_Tmp_27
(* 662	*)	CAL	rtrig_pir2np(CLK:=_Nod_Tmp_27)
(* 662	*)	LD 	rtrig_pir2np.Q
(* 917	*)	ST	_Nod_Tmp_30
(* 201	*)	LD 	T#4m
(* 728	*)	ST	_Nod_Tmp_29
(* 170	*)	CAL	timeSvChodba2np(IN:=_Nod_Tmp_30, PT:=_Nod_Tmp_29)
(* 170	*)	LD 	timeSvChodba2np.ET
(* 204	*)	ST 	cas_svitu
(* 901	*)	LD 	_Nod_Tmp_30
(* 897	*)	NOT
(* 872	*)	ST 	_Fun_Tmp_IN1_26_1
(* 645	*)	CAL	ftrig_pir2np(CLK:=_Nod_Tmp_27)
(* 872	*)	LD 	_Fun_Tmp_IN1_26_1
(* 880	*)	AND 	ftrig_pir2np.Q
(* 697	*)	ST 	timeSvChodba2np2.IN
(* 697	*)	CAL	timeSvChodba2np2(PT:=_Nod_Tmp_29)
(* 697	*)	LD 	timeSvChodba2np2.ET
(* 737	*)	ST 	cas_svitu2
(* 476	*)	LD 	timeSvChodba2np.Q
(* 484	*)	OR 	_Nod_Tmp_27
(* 492	*)	OR 	timeSvChodba2np2.Q
(* 161	*)	ST 	sv_chodba_2np_zed
(*1155	*)	LD 	_Nod_Tmp_13
(*1163	*)	GT 	T#20h
(*1211	*)	ST 	_Fun_Tmp_IN1_22_1
(*1183	*)	LD 	_Nod_Tmp_13
(*1191	*)	LT 	T#7h
(*1219	*)	ST 	_Fun_Tmp_IN2_22_2
(*1211	*)	LD 	_Fun_Tmp_IN1_22_1
(*1219	*)	OR 	_Fun_Tmp_IN2_22_2
(* 240	*)	ST 	_Fun_Tmp_IN1_20_1
(* 220	*)	LD 	pir_chodba_1np
(* 216	*)	NOT
(* 248	*)	ST 	_Fun_Tmp_IN2_20_2
(* 240	*)	LD 	_Fun_Tmp_IN1_20_1
(* 248	*)	AND 	_Fun_Tmp_IN2_20_2
(* 859	*)	ST	_Nod_Tmp_16
(* 807	*)	CAL	rtrig_pisChodba1np(CLK:=_Nod_Tmp_16)
(* 807	*)	LD 	rtrig_pisChodba1np.Q
(*1033	*)	ST	_Nod_Tmp_19
(* 305	*)	LD 	T#4m
(* 841	*)	ST	_Nod_Tmp_18
(* 274	*)	CAL	timeSvChodba1np(IN:=_Nod_Tmp_19, PT:=_Nod_Tmp_18)
(*1017	*)	LD 	_Nod_Tmp_19
(*1013	*)	NOT
(* 988	*)	ST 	_Fun_Tmp_IN1_15_1
(* 824	*)	CAL	ftrig_pisChodba1np(CLK:=_Nod_Tmp_16)
(* 988	*)	LD 	_Fun_Tmp_IN1_15_1
(* 996	*)	AND 	ftrig_pisChodba1np.Q
(* 577	*)	ST 	timeSvChodba1np2.IN
(* 577	*)	CAL	timeSvChodba1np2(PT:=_Nod_Tmp_18)
(* 612	*)	LD 	timeSvChodba1np.Q
(* 620	*)	OR 	timeSvChodba1np2.Q
(* 628	*)	OR 	_Nod_Tmp_16
(* 265	*)	ST 	sv_chodba_1NP_sedy
(*1046	*)	LD 	_Nod_Tmp_13
(*1054	*)	GT 	T#16h
(*1102	*)	ST 	_Fun_Tmp_IN1_10_1
(*1074	*)	LD 	_Nod_Tmp_13
(*1082	*)	LT 	T#8h
(*1110	*)	ST 	_Fun_Tmp_IN2_10_2
(*1102	*)	LD 	_Fun_Tmp_IN1_10_1
(*1110	*)	OR 	_Fun_Tmp_IN2_10_2
(* 332	*)	ST 	_Fun_Tmp_IN1_8_1
(* 312	*)	LD 	pir_predsin
(* 308	*)	NOT
(* 340	*)	ST 	_Fun_Tmp_IN2_8_2
(* 332	*)	LD 	_Fun_Tmp_IN1_8_1
(* 340	*)	AND 	_Fun_Tmp_IN2_8_2
(* 780	*)	ST	_Nod_Tmp_4
(* 746	*)	CAL	rtrig_pirPredsin(CLK:=_Nod_Tmp_4)
(* 746	*)	LD 	rtrig_pirPredsin.Q
(* 975	*)	ST	_Nod_Tmp_7
(* 397	*)	LD 	T#1m
(* 789	*)	ST	_Nod_Tmp_6
(* 366	*)	CAL	timePredsin(IN:=_Nod_Tmp_7, PT:=_Nod_Tmp_6)
(* 930	*)	LD 	_Nod_Tmp_7
(* 926	*)	NOT
(* 950	*)	ST 	_Fun_Tmp_IN1_3_1
(* 763	*)	CAL	ftrig_pirPredsin(CLK:=_Nod_Tmp_4)
(* 950	*)	LD 	_Fun_Tmp_IN1_3_1
(* 958	*)	AND 	ftrig_pirPredsin.Q
(* 509	*)	ST 	timePredsin2.IN
(* 509	*)	CAL	timePredsin2(PT:=_Nod_Tmp_6)
(* 544	*)	LD 	timePredsin.Q
(* 552	*)	OR 	timePredsin2.Q
(* 560	*)	OR 	_Nod_Tmp_4
(* 357	*)	ST 	sv_predsin_stena
//N001
(*  68	*)	GetDateTime
(*  76	*)	ST 	act_timedate

END_PROGRAM
