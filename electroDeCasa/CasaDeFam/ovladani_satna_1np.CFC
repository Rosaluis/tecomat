PROGRAM ovladani_satna_1np
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    trigSA1np : R_TRIG;
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
<inVariable name="tl_satna_1NP" type="BOOL" id="3">
  <position x="10" y="21" />
</inVariable>
<block name="XOR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="5" height="4" width="4" line="5" order="2">
  <position x="68" y="21" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="6" name="Q">
        <position x="68" y="22" />
        <position x="47" y="22" />
        <position x="47" y="22" />
        <position x="38" y="22" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="13">
        <position x="68" y="24" />
        <position x="65" y="24" />
        <position x="65" y="24" />
        <position x="58" y="24" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="XOR" type="ANY_BIT">
    <comment>
	Bitwise XOR
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if odd number of bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="trigSA1np" id="6" height="4" width="6" line="3" order="1">
  <position x="32" y="19" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="3">
        <position x="32" y="22" />
        <position x="28" y="22" />
        <position x="28" y="22" />
        <position x="21" y="22" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<outVariable name="sv_satna_1NP" type="BOOL" id="11" order="3">
  <position x="80" y="21" />
  <connection refid="5" name="XOR">
    <position x="81" y="22" />
    <position x="75" y="22" />
    <position x="75" y="22" />
    <position x="72" y="22" />
  </connection>
</outVariable>
<inVariable name="sv_satna_1NP" type="BOOL" id="13">
  <position x="47" y="23" />
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
(*  41	*)	CAL	trigSA1np(CLK:=tl_satna_1NP)
(*  15	*)	LD 	trigSA1np.Q
(*  23	*)	XOR 	sv_satna_1NP
(*  58	*)	ST 	sv_satna_1NP

END_PROGRAM
