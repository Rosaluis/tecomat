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
<comment id="1" height="3" width="12">
  <position x="2" y="2" />
Komentář ke schématu
</comment>
<outVariable name="led_k1_lg" type="BOOL" id="2" order="3">
  <position x="42" y="13" />
  <connection refid="4" name="OR">
    <position x="43" y="14" />
    <position x="37" y="14" />
    <position x="37" y="14" />
    <position x="36" y="14" />
  </connection>
</outVariable>
<inVariable name="k1_led_k1_lg" type="BOOL" id="3">
  <position x="16" y="13" />
  <comment>
vystup na LED v Logusech  </comment>
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="4" height="4" width="3" line="8" order="2">
  <position x="33" y="13" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="3">
        <position x="33" y="14" />
        <position x="28" y="14" />
        <position x="28" y="14" />
        <position x="27" y="14" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="31">
        <position x="33" y="16" />
        <position x="23" y="16" />
        <position x="23" y="16" />
        <position x="13" y="16" />
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
<inVariable name="k1_led_k1_lr" type="BOOL" id="5">
  <position x="16" y="19" />
</inVariable>
<inVariable name="k1_led_k1_rg" type="BOOL" id="6">
  <position x="16" y="25" />
</inVariable>
<inVariable name="k1_led_k1_rr" type="BOOL" id="7">
  <position x="16" y="31" />
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="8" height="4" width="3" line="11" order="4">
  <position x="33" y="19" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="5">
        <position x="33" y="20" />
        <position x="29" y="20" />
        <position x="29" y="20" />
        <position x="26" y="20" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="33">
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="9" height="4" width="3" line="14" order="6">
  <position x="33" y="25" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="6">
        <position x="33" y="26" />
        <position x="29" y="26" />
        <position x="29" y="26" />
        <position x="27" y="26" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="32">
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="10" height="4" width="3" line="17" order="8">
  <position x="33" y="31" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="7">
        <position x="33" y="32" />
        <position x="29" y="32" />
        <position x="29" y="32" />
        <position x="26" y="32" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="46">
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
<outVariable name="led_k1_lr" type="BOOL" id="11" order="5">
  <position x="42" y="19" />
  <connection refid="8" name="OR">
    <position x="43" y="20" />
    <position x="40" y="20" />
    <position x="40" y="20" />
    <position x="36" y="20" />
  </connection>
</outVariable>
<outVariable name="led_k1_rg" type="BOOL" id="12" order="7">
  <position x="42" y="25" />
  <connection refid="9" name="OR">
    <position x="43" y="26" />
    <position x="40" y="26" />
    <position x="40" y="26" />
    <position x="36" y="26" />
  </connection>
</outVariable>
<outVariable name="led_k1_rr" type="BOOL" id="13" order="9">
  <position x="42" y="31" />
  <connection refid="10" name="OR">
    <position x="43" y="32" />
    <position x="41" y="32" />
    <position x="41" y="32" />
    <position x="36" y="32" />
  </connection>
</outVariable>
<outVariable name="led_k2_lg" type="BOOL" id="14" order="15">
  <position x="88" y="13" />
  <connection refid="16" name="OR">
    <position x="89" y="14" />
    <position x="83" y="14" />
    <position x="83" y="14" />
    <position x="82" y="14" />
  </connection>
</outVariable>
<inVariable name="k2_led_k2_lg" type="BOOL" id="15">
  <position x="62" y="13" />
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="16" height="4" width="3" line="28" order="14">
  <position x="79" y="13" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="15">
        <position x="79" y="14" />
        <position x="74" y="14" />
        <position x="74" y="14" />
        <position x="73" y="14" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="28">
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
<inVariable name="k2_led_k2_lr" type="BOOL" id="17">
  <position x="62" y="19" />
</inVariable>
<inVariable name="k2_led_k2_rg" type="BOOL" id="18">
  <position x="62" y="25" />
</inVariable>
<inVariable name="k2_led_k2_rr" type="BOOL" id="19">
  <position x="62" y="31" />
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="20" height="4" width="3" line="31" order="16">
  <position x="79" y="19" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="17">
        <position x="79" y="20" />
        <position x="75" y="20" />
        <position x="75" y="20" />
        <position x="72" y="20" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="29">
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="21" height="4" width="3" line="34" order="18">
  <position x="79" y="25" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="18">
        <position x="79" y="26" />
        <position x="75" y="26" />
        <position x="75" y="26" />
        <position x="73" y="26" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="30">
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="22" height="4" width="3" line="37" order="20">
  <position x="79" y="31" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="19">
        <position x="79" y="32" />
        <position x="75" y="32" />
        <position x="75" y="32" />
        <position x="72" y="32" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="141">
        <position x="79" y="34" />
        <position x="68" y="34" />
        <position x="68" y="34" />
        <position x="57" y="34" />
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
<outVariable name="led_k2_lr" type="BOOL" id="23" order="17">
  <position x="88" y="19" />
  <connection refid="20" name="OR">
    <position x="89" y="20" />
    <position x="86" y="20" />
    <position x="86" y="20" />
    <position x="82" y="20" />
  </connection>
</outVariable>
<outVariable name="led_k2_rg" type="BOOL" id="24" order="19">
  <position x="88" y="25" />
  <connection refid="21" name="OR">
    <position x="89" y="26" />
    <position x="86" y="26" />
    <position x="86" y="26" />
    <position x="82" y="26" />
  </connection>
</outVariable>
<outVariable name="led_k2_rr" type="BOOL" id="25" order="21">
  <position x="88" y="31" />
  <connection refid="22" name="OR">
    <position x="89" y="32" />
    <position x="87" y="32" />
    <position x="87" y="32" />
    <position x="82" y="32" />
  </connection>
</outVariable>
<block name="boFALSE" instance="fb_boFalse" id="26" height="4" width="7" line="3" order="1">
  <position x="3" y="8" />
  <outVariables>
    <variable name="out" type="BOOL">
    </variable>
  </outVariables>
</block>
<node id="27">
  <position x="13" y="11" />
  <connection refid="26" name="out">
    <position x="13" y="11" />
    <position x="11" y="11" />
    <position x="11" y="11" />
    <position x="10" y="11" />
  </connection>
</node>
<node id="28">
  <position x="57" y="16" />
  <connection refid="174">
    <position x="57" y="16" />
    <position x="57" y="16" />
    <position x="57" y="11" />
    <position x="57" y="11" />
  </connection>
</node>
<node id="29">
  <position x="57" y="22" />
  <connection refid="28">
    <position x="57" y="22" />
    <position x="57" y="22" />
    <position x="57" y="16" />
    <position x="57" y="16" />
  </connection>
</node>
<node id="30">
  <position x="57" y="28" />
  <connection refid="29">
    <position x="57" y="28" />
    <position x="57" y="28" />
    <position x="57" y="22" />
    <position x="57" y="22" />
  </connection>
</node>
<node id="31">
  <position x="13" y="16" />
  <connection refid="27">
    <position x="13" y="16" />
    <position x="13" y="16" />
    <position x="13" y="11" />
    <position x="13" y="11" />
  </connection>
</node>
<node id="32">
  <position x="13" y="28" />
  <connection refid="33">
    <position x="13" y="28" />
    <position x="13" y="28" />
    <position x="13" y="22" />
    <position x="13" y="22" />
  </connection>
</node>
<node id="33">
  <position x="13" y="22" />
  <connection refid="31">
    <position x="13" y="22" />
    <position x="13" y="22" />
    <position x="13" y="16" />
    <position x="13" y="16" />
  </connection>
</node>
<outVariable name="led_lo_lg" type="BOOL" id="34" order="39">
  <position x="42" y="41" />
  <connection refid="35" name="OR">
    <position x="43" y="42" />
    <position x="37" y="42" />
    <position x="37" y="42" />
    <position x="36" y="42" />
  </connection>
</outVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="35" height="4" width="3" line="67" order="38">
  <position x="33" y="41" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="42">
        <position x="33" y="42" />
        <position x="29" y="42" />
        <position x="29" y="42" />
        <position x="26" y="42" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="47">
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="36" height="4" width="3" line="20" order="10">
  <position x="33" y="47" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="43">
        <position x="33" y="48" />
        <position x="29" y="48" />
        <position x="29" y="48" />
        <position x="25" y="48" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="49">
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="37" height="4" width="3" line="79" order="44">
  <position x="33" y="53" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="44">
        <position x="33" y="54" />
        <position x="29" y="54" />
        <position x="29" y="54" />
        <position x="26" y="54" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="48">
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="38" height="4" width="3" line="23" order="12">
  <position x="33" y="59" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="45">
        <position x="33" y="60" />
        <position x="28" y="60" />
        <position x="28" y="60" />
        <position x="25" y="60" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="49">
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
<outVariable name="led_lo_lr" type="BOOL" id="39" order="11">
  <position x="42" y="47" />
  <connection refid="36" name="OR">
    <position x="43" y="48" />
    <position x="40" y="48" />
    <position x="40" y="48" />
    <position x="36" y="48" />
  </connection>
</outVariable>
<outVariable name="led_lo_rg" type="BOOL" id="40" order="45">
  <position x="42" y="53" />
  <connection refid="37" name="OR">
    <position x="43" y="54" />
    <position x="40" y="54" />
    <position x="40" y="54" />
    <position x="36" y="54" />
  </connection>
</outVariable>
<outVariable name="led_lo_rr" type="BOOL" id="41" order="13">
  <position x="42" y="59" />
  <connection refid="38" name="OR">
    <position x="43" y="60" />
    <position x="41" y="60" />
    <position x="41" y="60" />
    <position x="36" y="60" />
  </connection>
</outVariable>
<inVariable name="lo_led_lo_lg" type="BOOL" id="42">
  <position x="16" y="41" />
</inVariable>
<inVariable name="lo_led_lo_lr" type="BOOL" id="43">
  <position x="16" y="47" />
</inVariable>
<inVariable name="lo_led_lo_rg" type="BOOL" id="44">
  <position x="16" y="53" />
</inVariable>
<inVariable name="lo_led_lo_rr" type="BOOL" id="45">
  <position x="16" y="59" />
</inVariable>
<node id="46">
  <position x="13" y="34" />
  <connection refid="32">
    <position x="13" y="34" />
    <position x="13" y="34" />
    <position x="13" y="28" />
    <position x="13" y="28" />
  </connection>
</node>
<inVariable name="out_vychod" type="BOOL" id="47">
  <position x="16" y="43" />
</inVariable>
<inVariable name="out_zapad" type="BOOL" id="48">
  <position x="16" y="55" />
</inVariable>
<node id="49">
  <position x="13" y="50" />
  <connection refid="46">
    <position x="13" y="50" />
    <position x="13" y="50" />
    <position x="13" y="34" />
    <position x="13" y="34" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="96" height="4" width="3" line="71" order="40">
  <position x="79" y="41" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="123">
        <position x="79" y="42" />
        <position x="75" y="42" />
        <position x="75" y="42" />
        <position x="73" y="42" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="100">
        <position x="79" y="44" />
        <position x="75" y="44" />
        <position x="75" y="44" />
        <position x="72" y="44" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="97" height="4" width="3" line="40" order="22">
  <position x="79" y="47" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="127">
        <position x="79" y="48" />
        <position x="75" y="48" />
        <position x="75" y="48" />
        <position x="72" y="48" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="145">
        <position x="79" y="50" />
        <position x="68" y="50" />
        <position x="68" y="50" />
        <position x="57" y="50" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="98" height="4" width="3" line="83" order="46">
  <position x="79" y="53" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="129">
        <position x="79" y="54" />
        <position x="75" y="54" />
        <position x="75" y="54" />
        <position x="73" y="54" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="101">
        <position x="79" y="56" />
        <position x="78" y="56" />
        <position x="78" y="56" />
        <position x="71" y="56" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="99" height="4" width="3" line="43" order="24">
  <position x="79" y="59" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="131">
        <position x="79" y="60" />
        <position x="75" y="60" />
        <position x="75" y="60" />
        <position x="72" y="60" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="145">
        <position x="79" y="62" />
        <position x="57" y="62" />
        <position x="57" y="50" />
        <position x="57" y="50" />
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
<inVariable name="out_vychod" type="BOOL" id="100">
  <position x="62" y="43" />
</inVariable>
<inVariable name="out_zapad" type="BOOL" id="101">
  <position x="62" y="55" />
</inVariable>
<outVariable name="led_pv_lg" type="BOOL" id="106" order="41">
  <position x="88" y="41" />
  <connection refid="96" name="OR">
    <position x="89" y="42" />
    <position x="84" y="42" />
    <position x="84" y="42" />
    <position x="82" y="42" />
  </connection>
</outVariable>
<outVariable name="led_pv_lr" type="BOOL" id="110" order="23">
  <position x="88" y="47" />
  <connection refid="97" name="OR">
    <position x="89" y="48" />
    <position x="84" y="48" />
    <position x="84" y="48" />
    <position x="82" y="48" />
  </connection>
</outVariable>
<outVariable name="led_pv_rg" type="BOOL" id="112" order="47">
  <position x="88" y="53" />
  <connection refid="98" name="OR">
    <position x="89" y="54" />
    <position x="83" y="54" />
    <position x="83" y="54" />
    <position x="82" y="54" />
  </connection>
</outVariable>
<outVariable name="led_pv_rr" type="BOOL" id="114" order="25">
  <position x="88" y="59" />
  <connection refid="99" name="OR">
    <position x="89" y="60" />
    <position x="84" y="60" />
    <position x="84" y="60" />
    <position x="82" y="60" />
  </connection>
</outVariable>
<inVariable name="pv_led_pv_lg" type="BOOL" id="123">
  <position x="62" y="41" />
</inVariable>
<inVariable name="pv_led_pv_lr" type="BOOL" id="127">
  <position x="62" y="47" />
</inVariable>
<inVariable name="pv_led_pv_rg" type="BOOL" id="129">
  <position x="62" y="53" />
</inVariable>
<inVariable name="pv_led_pv_rr" type="BOOL" id="131">
  <position x="62" y="59" />
</inVariable>
<node id="141">
  <position x="57" y="34" />
  <connection refid="30">
    <position x="57" y="34" />
    <position x="57" y="34" />
    <position x="57" y="28" />
    <position x="57" y="28" />
  </connection>
</node>
<node id="145">
  <position x="57" y="50" />
  <connection refid="141">
    <position x="57" y="50" />
    <position x="57" y="50" />
    <position x="57" y="34" />
    <position x="57" y="34" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="147" height="4" width="3" line="75" order="42">
  <position x="120" y="41" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="157">
        <position x="120" y="42" />
        <position x="116" y="42" />
        <position x="116" y="42" />
        <position x="113" y="42" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="151">
        <position x="120" y="44" />
        <position x="116" y="44" />
        <position x="116" y="44" />
        <position x="113" y="44" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="148" height="4" width="3" line="52" order="30">
  <position x="120" y="47" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="158">
        <position x="120" y="48" />
        <position x="116" y="48" />
        <position x="116" y="48" />
        <position x="113" y="48" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="178">
        <position x="120" y="50" />
        <position x="110" y="50" />
        <position x="110" y="50" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="149" height="4" width="3" line="87" order="48">
  <position x="120" y="53" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="159">
        <position x="120" y="54" />
        <position x="116" y="54" />
        <position x="116" y="54" />
        <position x="114" y="54" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="152">
        <position x="120" y="56" />
        <position x="119" y="56" />
        <position x="119" y="56" />
        <position x="112" y="56" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="150" height="4" width="3" line="55" order="32">
  <position x="120" y="59" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="160">
        <position x="120" y="60" />
        <position x="116" y="60" />
        <position x="116" y="60" />
        <position x="113" y="60" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="178">
        <position x="120" y="62" />
        <position x="101" y="62" />
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
<inVariable name="out_vychod" type="BOOL" id="151">
  <position x="103" y="43" />
</inVariable>
<inVariable name="out_zapad" type="BOOL" id="152">
  <position x="103" y="55" />
</inVariable>
<outVariable name="led_pz_lg" type="BOOL" id="153" order="43">
  <position x="129" y="41" />
  <connection refid="147" name="OR">
    <position x="130" y="42" />
    <position x="125" y="42" />
    <position x="125" y="42" />
    <position x="123" y="42" />
  </connection>
</outVariable>
<outVariable name="led_pz_lr" type="BOOL" id="154" order="31">
  <position x="129" y="47" />
  <connection refid="148" name="OR">
    <position x="130" y="48" />
    <position x="125" y="48" />
    <position x="125" y="48" />
    <position x="123" y="48" />
  </connection>
</outVariable>
<outVariable name="led_pz_rg" type="BOOL" id="155" order="49">
  <position x="129" y="53" />
  <connection refid="149" name="OR">
    <position x="130" y="54" />
    <position x="124" y="54" />
    <position x="124" y="54" />
    <position x="123" y="54" />
  </connection>
</outVariable>
<outVariable name="led_pz_rr" type="BOOL" id="156" order="33">
  <position x="129" y="59" />
  <connection refid="150" name="OR">
    <position x="130" y="60" />
    <position x="125" y="60" />
    <position x="125" y="60" />
    <position x="123" y="60" />
  </connection>
</outVariable>
<inVariable name="pz_led_pz_lg" type="BOOL" id="157">
  <position x="103" y="41" />
</inVariable>
<inVariable name="pz_led_pz_lr" type="BOOL" id="158">
  <position x="103" y="47" />
</inVariable>
<inVariable name="pz_led_pz_rg" type="BOOL" id="159">
  <position x="103" y="53" />
</inVariable>
<inVariable name="pz_led_pz_rr" type="BOOL" id="160">
  <position x="103" y="59" />
</inVariable>
<node id="174">
  <position x="57" y="11" />
  <connection refid="27">
    <position x="57" y="11" />
    <position x="35" y="11" />
    <position x="35" y="11" />
    <position x="13" y="11" />
  </connection>
</node>
<node id="178">
  <position x="101" y="50" />
  <connection refid="207">
    <position x="101" y="50" />
    <position x="101" y="50" />
    <position x="101" y="34" />
    <position x="101" y="34" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="180" height="4" width="3" line="59" order="34">
  <position x="120" y="13" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="190">
        <position x="120" y="14" />
        <position x="116" y="14" />
        <position x="116" y="14" />
        <position x="114" y="14" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="184">
        <position x="120" y="16" />
        <position x="116" y="16" />
        <position x="116" y="16" />
        <position x="113" y="16" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="181" height="4" width="3" line="46" order="26">
  <position x="120" y="19" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="191">
        <position x="120" y="20" />
        <position x="116" y="20" />
        <position x="116" y="20" />
        <position x="113" y="20" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="211">
        <position x="120" y="22" />
        <position x="110" y="22" />
        <position x="110" y="22" />
        <position x="101" y="22" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="182" height="4" width="3" line="63" order="36">
  <position x="120" y="25" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="192">
        <position x="120" y="26" />
        <position x="116" y="26" />
        <position x="116" y="26" />
        <position x="114" y="26" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="185">
        <position x="120" y="28" />
        <position x="119" y="28" />
        <position x="119" y="28" />
        <position x="112" y="28" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="183" height="4" width="3" line="49" order="28">
  <position x="120" y="31" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="193">
        <position x="120" y="32" />
        <position x="116" y="32" />
        <position x="116" y="32" />
        <position x="114" y="32" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="207">
        <position x="120" y="34" />
        <position x="110" y="34" />
        <position x="110" y="34" />
        <position x="101" y="34" />
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
<inVariable name="out_vychod" type="BOOL" id="184">
  <position x="103" y="15" />
</inVariable>
<inVariable name="out_zapad" type="BOOL" id="185">
  <position x="103" y="27" />
</inVariable>
<outVariable name="led_ob_lg" type="BOOL" id="186" order="35">
  <position x="129" y="13" />
  <connection refid="180" name="OR">
    <position x="130" y="14" />
    <position x="125" y="14" />
    <position x="125" y="14" />
    <position x="123" y="14" />
  </connection>
</outVariable>
<outVariable name="led_ob_lr" type="BOOL" id="187" order="27">
  <position x="129" y="19" />
  <connection refid="181" name="OR">
    <position x="130" y="20" />
    <position x="125" y="20" />
    <position x="125" y="20" />
    <position x="123" y="20" />
  </connection>
</outVariable>
<outVariable name="led_ob_rg" type="BOOL" id="188" order="37">
  <position x="129" y="25" />
  <connection refid="182" name="OR">
    <position x="130" y="26" />
    <position x="124" y="26" />
    <position x="124" y="26" />
    <position x="123" y="26" />
  </connection>
</outVariable>
<outVariable name="led_ob_rr" type="BOOL" id="189" order="29">
  <position x="129" y="31" />
  <connection refid="183" name="OR">
    <position x="130" y="32" />
    <position x="125" y="32" />
    <position x="125" y="32" />
    <position x="123" y="32" />
  </connection>
</outVariable>
<inVariable name="ob_led_ob_lg" type="BOOL" id="190">
  <position x="103" y="13" />
</inVariable>
<inVariable name="ob_led_ob_lr" type="BOOL" id="191">
  <position x="103" y="19" />
</inVariable>
<inVariable name="ob_led_ob_rg" type="BOOL" id="192">
  <position x="103" y="25" />
</inVariable>
<inVariable name="ob_led_ob_rr" type="BOOL" id="193">
  <position x="103" y="31" />
</inVariable>
<node id="207">
  <position x="101" y="34" />
  <connection refid="211">
    <position x="101" y="34" />
    <position x="101" y="34" />
    <position x="101" y="22" />
    <position x="101" y="22" />
  </connection>
</node>
<node id="211">
  <position x="101" y="22" />
  <connection refid="174">
    <position x="101" y="22" />
    <position x="101" y="22" />
    <position x="101" y="11" />
    <position x="57" y="11" />
  </connection>
</node>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
(* 345	*)	_Nod_Tmp_11	:	BOOL;
(* 381	*)	_Nod_Tmp_23	:	BOOL;
(* 354	*)	_Nod_Tmp_16	:	BOOL;
END_VAR

//NC
//N000
(* 338	*)	CAL	fb_boFalse()
(* 338	*)	LD 	fb_boFalse.out
(* 345	*)	ST	_Nod_Tmp_11
(* 381	*)	ST	_Nod_Tmp_23
(*  26	*)	LD 	k1_led_k1_lg
(*  34	*)	OR 	_Nod_Tmp_23
(*   8	*)	ST 	led_k1_lg
(*  64	*)	LD 	k1_led_k1_lr
(*  72	*)	OR 	_Nod_Tmp_23
(* 147	*)	ST 	led_k1_lr
(*  93	*)	LD 	k1_led_k1_rg
(* 101	*)	OR 	_Nod_Tmp_23
(* 156	*)	ST 	led_k1_rg
(* 122	*)	LD 	k1_led_k1_rr
(* 130	*)	OR 	_Nod_Tmp_23
(* 165	*)	ST 	led_k1_rr
(* 450	*)	LD 	lo_led_lo_lr
(* 458	*)	OR 	_Nod_Tmp_23
(* 533	*)	ST 	led_lo_lr
(* 508	*)	LD 	lo_led_lo_rr
(* 516	*)	OR 	_Nod_Tmp_23
(* 551	*)	ST 	led_lo_rr
(* 345	*)	LD	_Nod_Tmp_11
(* 354	*)	ST	_Nod_Tmp_16
(* 190	*)	LD 	k2_led_k2_lg
(* 198	*)	OR 	_Nod_Tmp_16
(* 174	*)	ST 	led_k2_lg
(* 228	*)	LD 	k2_led_k2_lr
(* 236	*)	OR 	_Nod_Tmp_16
(* 311	*)	ST 	led_k2_lr
(* 257	*)	LD 	k2_led_k2_rg
(* 265	*)	OR 	_Nod_Tmp_16
(* 320	*)	ST 	led_k2_rg
(* 286	*)	LD 	k2_led_k2_rr
(* 294	*)	OR 	_Nod_Tmp_16
(* 329	*)	ST 	led_k2_rr
(* 629	*)	LD 	pv_led_pv_lr
(* 637	*)	OR 	_Nod_Tmp_16
(* 727	*)	ST 	led_pv_lr
(* 687	*)	LD 	pv_led_pv_rr
(* 695	*)	OR 	_Nod_Tmp_16
(* 745	*)	ST 	led_pv_rr
(*1005	*)	LD 	ob_led_ob_lr
(*1013	*)	OR 	_Nod_Tmp_11
(*1103	*)	ST 	led_ob_lr
(*1063	*)	LD 	ob_led_ob_rr
(*1071	*)	OR 	_Nod_Tmp_11
(*1121	*)	ST 	led_ob_rr
(* 817	*)	LD 	pz_led_pz_lr
(* 825	*)	OR 	_Nod_Tmp_11
(* 915	*)	ST 	led_pz_lr
(* 875	*)	LD 	pz_led_pz_rr
(* 883	*)	OR 	_Nod_Tmp_11
(* 933	*)	ST 	led_pz_rr
//N001
(* 976	*)	LD 	ob_led_ob_lg
(* 984	*)	OR 	out_vychod
(*1094	*)	ST 	led_ob_lg
//N002
(*1034	*)	LD 	ob_led_ob_rg
(*1042	*)	OR 	out_zapad
(*1112	*)	ST 	led_ob_rg
//N003
(* 421	*)	LD 	lo_led_lo_lg
(* 429	*)	OR 	out_vychod
(* 408	*)	ST 	led_lo_lg
//N004
(* 600	*)	LD 	pv_led_pv_lg
(* 608	*)	OR 	out_vychod
(* 718	*)	ST 	led_pv_lg
//N005
(* 788	*)	LD 	pz_led_pz_lg
(* 796	*)	OR 	out_vychod
(* 906	*)	ST 	led_pz_lg
//N006
(* 479	*)	LD 	lo_led_lo_rg
(* 487	*)	OR 	out_zapad
(* 542	*)	ST 	led_lo_rg
//N007
(* 658	*)	LD 	pv_led_pv_rg
(* 666	*)	OR 	out_zapad
(* 736	*)	ST 	led_pv_rg
//N008
(* 846	*)	LD 	pz_led_pz_rg
(* 854	*)	OR 	out_zapad
(* 924	*)	ST 	led_pz_rg

END_PROGRAM
