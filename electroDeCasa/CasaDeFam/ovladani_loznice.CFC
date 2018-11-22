FUNCTION ovladani_loznice : BOOL
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
<inVariable name="tls_ob_ll" type="BOOL" id="2">
  <position x="14" y="33" />
</inVariable>
<inVariable name="tls_ob_lr" type="BOOL" id="3">
  <position x="14" y="45" />
</inVariable>
<inVariable name="tls_ob_tl" type="BOOL" id="4">
  <position x="14" y="24" />
</inVariable>
<inVariable name="tls_ob_tr" type="BOOL" id="5">
  <position x="14" y="14" />
</inVariable>
<outVariable name="sv_ob_1" type="BOOL" id="6" order="3">
  <position x="62" y="14" />
  <connection refid="9" name="XOR">
    <position x="63" y="15" />
    <position x="49" y="15" />
    <position x="49" y="15" />
    <position x="38" y="15" />
  </connection>
</outVariable>
<outVariable name="sv_ob_2" type="BOOL" id="7" order="6">
  <position x="62" y="24" />
  <connection refid="11" name="XOR">
    <position x="63" y="25" />
    <position x="47" y="25" />
    <position x="47" y="25" />
    <position x="38" y="25" />
  </connection>
</outVariable>
<outVariable name="sv_ji" type="BOOL" id="8" order="9">
  <position x="65" y="33" />
  <connection refid="13" name="XOR">
    <position x="66" y="34" />
    <position x="49" y="34" />
    <position x="49" y="34" />
    <position x="38" y="34" />
  </connection>
</outVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="9" height="4" width="4" line="5" order="2">
  <position x="34" y="14" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="15" name="Q">
        <position x="34" y="15" />
        <position x="32" y="15" />
        <position x="32" y="15" />
        <position x="31" y="15" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="10">
        <position x="34" y="17" />
        <position x="24" y="17" />
        <position x="24" y="17" />
        <position x="21" y="17" />
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
<inVariable name="sv_ob_1" type="BOOL" id="10">
  <position x="14" y="16" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="11" height="4" width="4" line="10" order="5">
  <position x="34" y="24" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="16" name="Q">
        <position x="34" y="25" />
        <position x="32" y="25" />
        <position x="32" y="25" />
        <position x="31" y="25" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="12">
        <position x="34" y="27" />
        <position x="25" y="27" />
        <position x="25" y="27" />
        <position x="21" y="27" />
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
<inVariable name="sv_ob_2" type="BOOL" id="12">
  <position x="14" y="26" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="13" height="4" width="4" line="15" order="8">
  <position x="34" y="33" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="17" name="Q">
        <position x="34" y="34" />
        <position x="32" y="34" />
        <position x="32" y="34" />
        <position x="31" y="34" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="14">
        <position x="34" y="36" />
        <position x="24" y="36" />
        <position x="24" y="36" />
        <position x="18" y="36" />
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
<inVariable name="sv_ji" type="BOOL" id="14">
  <position x="14" y="35" />
</inVariable>
<block name="R_TRIG" instance="trigOb1" id="15" height="4" width="6" line="3" order="1">
  <position x="25" y="12" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="5">
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
<block name="R_TRIG" instance="trigOb2" id="16" height="4" width="6" line="8" order="4">
  <position x="25" y="22" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="4">
        <position x="25" y="25" />
        <position x="24" y="25" />
        <position x="24" y="25" />
        <position x="21" y="25" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="trigOb3" id="17" height="4" width="6" line="13" order="7">
  <position x="25" y="31" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="2">
        <position x="25" y="34" />
        <position x="23" y="34" />
        <position x="23" y="34" />
        <position x="21" y="34" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="trigOb4" id="18" height="4" width="6" line="18" order="10">
  <position x="25" y="43" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="3">
        <position x="25" y="46" />
        <position x="22" y="46" />
        <position x="22" y="46" />
        <position x="21" y="46" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="fb_off_SvKoupelna1" instance="offOb" id="19" height="10" width="15" line="19" order="11">
  <position x="44" y="43" />
  <inVariables>
    <variable name="in" type="BOOL">
      <connection refid="18" name="Q">
        <position x="44" y="46" />
        <position x="37" y="46" />
        <position x="37" y="46" />
        <position x="31" y="46" />
      </connection>
    <comment>vstup od tlačítka</comment>
    </variable>
    <variable name="sig0" type="BOOL">
      <connection refid="21">
        <position x="44" y="48" />
        <position x="32" y="48" />
        <position x="32" y="48" />
        <position x="21" y="48" />
      </connection>
    <comment>vstup stavu svetla 0</comment>
    </variable>
    <variable name="sig1" type="BOOL">
      <connection refid="24">
        <position x="44" y="50" />
        <position x="32" y="50" />
        <position x="32" y="50" />
        <position x="21" y="50" />
      </connection>
    <comment>vstup stavu svetla 1</comment>
    </variable>
    <variable name="sig2" type="BOOL">
      <connection refid="25">
        <position x="44" y="52" />
        <position x="30" y="52" />
        <position x="30" y="52" />
        <position x="18" y="52" />
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
<outVariable name="sv_ob_1" type="BOOL" id="20" order="12">
  <position x="65" y="47" />
  <connection refid="19" name="sOff0">
    <position x="66" y="48" />
    <position x="61" y="48" />
    <position x="61" y="48" />
    <position x="59" y="48" />
  </connection>
</outVariable>
<inVariable name="sv_ob_1" type="BOOL" id="21">
  <position x="14" y="47" />
</inVariable>
<outVariable name="sv_ob_2" type="BOOL" id="22" order="13">
  <position x="65" y="49" />
  <connection refid="19" name="sOff1">
    <position x="66" y="50" />
    <position x="61" y="50" />
    <position x="61" y="50" />
    <position x="59" y="50" />
  </connection>
</outVariable>
<outVariable name="sv_ji" type="BOOL" id="23" order="14">
  <position x="68" y="51" />
  <connection refid="19" name="sOff2">
    <position x="69" y="52" />
    <position x="62" y="52" />
    <position x="62" y="52" />
    <position x="59" y="52" />
  </connection>
</outVariable>
<inVariable name="sv_ob_2" type="BOOL" id="24">
  <position x="14" y="49" />
</inVariable>
<inVariable name="sv_ji" type="BOOL" id="25">
  <position x="14" y="51" />
</inVariable>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
END_VAR

//NC
//N000
(* 143	*)	CAL	trigOb1(CLK:=tls_ob_tr)
(*  51	*)	LD 	trigOb1.Q
(*  59	*)	XOR 	sv_ob_1
(*  20	*)	ST 	sv_ob_1
//N001
(* 160	*)	CAL	trigOb2(CLK:=tls_ob_tl)
(*  83	*)	LD 	trigOb2.Q
(*  91	*)	XOR 	sv_ob_2
(*  29	*)	ST 	sv_ob_2
//N002
(* 177	*)	CAL	trigOb3(CLK:=tls_ob_ll)
(* 115	*)	LD 	trigOb3.Q
(* 123	*)	XOR 	sv_ji
(*  38	*)	ST 	sv_ji
//N003
(* 194	*)	CAL	trigOb4(CLK:=tls_ob_lr)
(* 211	*)	CAL	offOb(in:=trigOb4.Q, sig0:=sv_ob_1, sig1:=sv_ob_2, sig2:=sv_ji)
(* 211	*)	LD 	offOb.sOff0
(* 266	*)	ST 	sv_ob_1
(* 211	*)	LD 	offOb.sOff1
(* 278	*)	ST 	sv_ob_2
(* 211	*)	LD 	offOb.sOff2
(* 287	*)	ST 	sv_ji

