PROGRAM klavesnice
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    pomBOOL1 : BOOL;
    kmit : fb_kmitac;
    sviti_cervena : BOOL;
    sviti_zluta : BOOL;
    status : USINT;
    stateOfCiB : BOOL;
    info : TCIBunitInfo;
    beep : BOOL;
    klavesnice_control_out : UINT;
    klavesnice_stat_out : USINT;
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
<outVariable name="klavesnice_beeper" type="BOOL" id="2" order="2">
  <position x="90" y="48" />
</outVariable>
<outVariable name="klavesnice_yellow" type="BOOL" id="3" order="2">
  <position x="90" y="24" />
  <connection refid="5" name="sig_OUT">
    <position x="91" y="25" />
    <position x="83" y="25" />
    <position x="83" y="25" />
    <position x="79" y="25" />
  </connection>
</outVariable>
<inVariable name="pomBOOL1" type="BOOL" id="4">
  <position x="45" y="24" />
</inVariable>
<block name="fb_kmitac" instance="kmit" id="5" height="8" width="12" line="3" order="1">
  <position x="67" y="22" />
  <inVariables>
    <variable name="sig_IN" type="BOOL">
      <connection refid="4">
        <position x="67" y="25" />
        <position x="60" y="25" />
        <position x="60" y="25" />
        <position x="54" y="25" />
      </connection>
    <comment>spousteci signal</comment>
    </variable>
    <variable name="time_ON" type="TIME">
      <connection refid="6">
        <position x="67" y="27" />
        <position x="66" y="27" />
        <position x="66" y="27" />
        <position x="61" y="27" />
      </connection>
    <comment>delka sviceni</comment>
    </variable>
    <variable name="time_OFF" type="TIME">
      <connection refid="7">
        <position x="67" y="29" />
        <position x="65" y="29" />
        <position x="65" y="29" />
        <position x="62" y="29" />
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
<inVariable name="T#1s" type="TIME" id="6">
  <position x="56" y="26" />
</inVariable>
<inVariable name="T#1s" type="TIME" id="7">
  <position x="57" y="28" />
</inVariable>
<inVariable name="beep" type="BOOL" id="8">
  <position x="52" y="40" />
</inVariable>
<outVariable name="klavesnice_out3" type="BOOL" id="9" order="3">
  <position x="91" y="40" />
</outVariable>
<inVariable name="klavesnice_stat" type="USINT" id="10">
  <position x="12" y="52" />
</inVariable>
<inVariable name="klavesnice_control" type="UINT" id="11">
  <position x="12" y="56" />
</inVariable>
<inVariable name="klavesnice_val" type="ARRAY [0..4] OF USINT" id="12">
  <position x="12" y="60" />
</inVariable>
<outVariable name="klavesnice_control_out" type="UINT" id="13" order="4">
  <position x="39" y="56" />
  <connection refid="11">
    <position x="40" y="57" />
    <position x="30" y="57" />
    <position x="30" y="57" />
    <position x="26" y="57" />
  </connection>
</outVariable>
<outVariable name="klavesnice_stat_out" type="USINT" id="14" order="3">
  <position x="36" y="52" />
  <connection refid="10">
    <position x="37" y="53" />
    <position x="30" y="53" />
    <position x="30" y="53" />
    <position x="24" y="53" />
  </connection>
</outVariable>
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
(*  23	*)	CAL	kmit(sig_IN:=pomBOOL1, time_ON:=T#1s, time_OFF:=T#1s)
(*  23	*)	LD 	kmit.sig_OUT
(*  11	*)	ST 	klavesnice_yellow
//N004
(*  72	*)	LD 	klavesnice_stat
(*  90	*)	ST 	klavesnice_stat_out
//N005
(*  75	*)	LD 	klavesnice_control
(*  81	*)	ST 	klavesnice_control_out

END_PROGRAM
