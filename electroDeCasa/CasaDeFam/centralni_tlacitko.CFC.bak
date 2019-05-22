PROGRAM centralni_tlacitko
(*tlacitko pod rozvadecem v 2NP
*)
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    TON_stredni_impuls : TON;
    TON_delsi_impuls : TON;
    kmit_central_1 : fb_kmitac;
    TOF_central_1 : TOF;
    TON_kratky_impuls : TON;
    swi : fb_cas_prepinac;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="pokus.xsl" version="1.1"?>
<fbd version="1.1">
<comment id="5" height="3" width="53">
  <position x="5" y="5" />
ovladani z jednoho tlacitka pod rozvadecem v 2NP
</comment>
<inVariable name="tl_chodba_2NP_rozvadec" type="BOOL" id="6">
  <position x="17" y="59" />
</inVariable>
<block name="TON" instance="TON_stredni_impuls" id="7" height="6" width="6" line="10" order="4">
  <position x="48" y="48" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="11">
        <position x="48" y="51" />
        <position x="46" y="51" />
        <position x="46" y="51" />
        <position x="39" y="51" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="8">
        <position x="48" y="53" />
        <position x="46" y="53" />
        <position x="46" y="53" />
        <position x="45" y="53" />
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
<inVariable name="T#1s" type="TIME" id="8">
  <position x="40" y="52" />
</inVariable>
<block name="TON" instance="TON_delsi_impuls" id="9" height="6" width="6" line="9" order="3">
  <position x="53" y="38" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="11">
        <position x="53" y="41" />
        <position x="39" y="41" />
        <position x="39" y="51" />
        <position x="39" y="51" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="10">
        <position x="53" y="43" />
        <position x="51" y="43" />
        <position x="51" y="43" />
        <position x="45" y="43" />
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
<inVariable name="T#3s" type="TIME" id="10">
  <position x="40" y="42" />
</inVariable>
<node id="11">
  <position x="39" y="51" />
  <connection refid="20">
    <position x="39" y="51" />
    <position x="39" y="51" />
    <position x="39" y="60" />
    <position x="39" y="60" />
  </connection>
</node>
<block name="fb_kmitac" instance="kmit_central_1" id="12" height="8" width="12" line="12" order="6">
  <position x="122" y="51" />
  <inVariables>
    <variable name="sig_IN" type="BOOL">
      <connection refid="18" name="Q">
        <position x="122" y="54" />
        <position x="116" y="54" />
        <position x="116" y="31" />
        <position x="114" y="31" />
      </connection>
    <comment>spousteci signal</comment>
    </variable>
    <variable name="time_ON" type="TIME">
      <connection refid="50" name="time_OUT">
        <position x="122" y="56" />
        <position x="112" y="56" />
        <position x="112" y="49" />
        <position x="99" y="49" />
      </connection>
    <comment>delka sviceni</comment>
    </variable>
    <variable name="time_OFF" type="TIME">
      <connection refid="13">
        <position x="122" y="58" />
        <position x="120" y="58" />
        <position x="120" y="58" />
        <position x="119" y="58" />
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
<inVariable name="T#300ms" type="TIME" id="13">
  <position x="111" y="57" />
</inVariable>
<outVariable name="led_pz_rr" type="BOOL" id="14" order="7">
  <position x="141" y="53" />
  <connection refid="12" name="sig_OUT">
    <position x="142" y="54" />
    <position x="141" y="54" />
    <position x="141" y="54" />
    <position x="134" y="54" />
  </connection>
</outVariable>
<inVariable name="T#500ms" type="TIME" id="15">
  <position x="68" y="58" />
</inVariable>
<inVariable name="T#1500ms" type="TIME" id="16">
  <position x="68" y="56" />
</inVariable>
<inVariable name="T#3000ms" type="TIME" id="17">
  <position x="68" y="54" />
</inVariable>
<block name="TOF" instance="TOF_central_1" id="18" height="6" width="6" line="8" order="2">
  <position x="108" y="28" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="62">
        <position x="108" y="31" />
        <position x="64" y="31" />
        <position x="64" y="53" />
        <position x="64" y="53" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="19">
        <position x="108" y="33" />
        <position x="105" y="33" />
        <position x="105" y="33" />
        <position x="104" y="33" />
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
<inVariable name="T#12s" type="TIME" id="19">
  <position x="98" y="32" />
</inVariable>
<node id="20">
  <position x="39" y="60" />
  <connection refid="6">
    <position x="39" y="60" />
    <position x="38" y="60" />
    <position x="38" y="60" />
    <position x="36" y="60" />
  </connection>
</node>
<block name="TON" instance="TON_kratky_impuls" id="21" height="6" width="6" line="5" order="1">
  <position x="48" y="57" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="20">
        <position x="48" y="60" />
        <position x="43" y="60" />
        <position x="43" y="60" />
        <position x="39" y="60" />
      </connection>
    <comment>vstup časovače</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="22">
        <position x="48" y="62" />
        <position x="47" y="62" />
        <position x="47" y="62" />
        <position x="46" y="62" />
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
<inVariable name="T#50ms" type="TIME" id="22">
  <position x="39" y="61" />
</inVariable>
<block name="fb_cas_prepinac" instance="swi" id="50" height="14" width="12" line="11" order="5">
  <position x="87" y="46" />
  <inVariables>
    <variable name="IN3" type="BOOL">
      <connection refid="9" name="Q">
        <position x="87" y="49" />
        <position x="84" y="49" />
        <position x="84" y="41" />
        <position x="59" y="41" />
      </connection>
    </variable>
    <variable name="IN2" type="BOOL">
      <connection refid="7" name="Q">
        <position x="87" y="51" />
        <position x="70" y="51" />
        <position x="70" y="51" />
        <position x="54" y="51" />
      </connection>
    </variable>
    <variable name="IN1" type="BOOL">
      <connection refid="62">
        <position x="87" y="53" />
        <position x="75" y="53" />
        <position x="75" y="53" />
        <position x="64" y="53" />
      </connection>
    </variable>
    <variable name="time3" type="TIME">
      <connection refid="17">
        <position x="87" y="55" />
        <position x="82" y="55" />
        <position x="82" y="55" />
        <position x="77" y="55" />
      </connection>
    <comment>vstupni cas 3</comment>
    </variable>
    <variable name="time2" type="TIME">
      <connection refid="16">
        <position x="87" y="57" />
        <position x="78" y="57" />
        <position x="78" y="57" />
        <position x="77" y="57" />
      </connection>
    <comment>vstupni cas 2</comment>
    </variable>
    <variable name="time1" type="TIME">
      <connection refid="15">
        <position x="87" y="59" />
        <position x="81" y="59" />
        <position x="81" y="59" />
        <position x="76" y="59" />
      </connection>
    <comment>vstupni cas</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="time_OUT" type="TIME">
    <comment>vystupni cas</comment>
    </variable>
    <variable name="OUT_RUN" type="BOOL">
    </variable>
  </outVariables>
</block>
<node id="62">
  <position x="64" y="53" />
  <connection refid="21" name="Q">
    <position x="64" y="53" />
    <position x="64" y="53" />
    <position x="64" y="60" />
    <position x="54" y="60" />
  </connection>
</node>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
(* 180	*)	_Nod_Tmp_1	:	BOOL;
(* 286	*)	_Nod_Tmp_2	:	BOOL;
END_VAR

//NC
//N000
(*   8	*)	LD 	tl_chodba_2NP_rozvadec
(* 180	*)	ST	_Nod_Tmp_1
(* 189	*)	CAL	TON_kratky_impuls(IN:=_Nod_Tmp_1, PT:=T#50ms)
(* 189	*)	LD 	TON_kratky_impuls.Q
(* 286	*)	ST	_Nod_Tmp_2
(* 146	*)	CAL	TOF_central_1(IN:=_Nod_Tmp_2, PT:=T#12s)
(*  45	*)	CAL	TON_delsi_impuls(IN:=_Nod_Tmp_1, PT:=T#3s)
(*  11	*)	CAL	TON_stredni_impuls(IN:=_Nod_Tmp_1, PT:=T#1s)
(* 223	*)	CAL	swi(IN3:=TON_delsi_impuls.Q, IN2:=TON_stredni_impuls.Q, IN1:=_Nod_Tmp_2, time3:=T#3000ms, time2:=T#1500ms, time1:=T#500ms)
(*  88	*)	CAL	kmit_central_1(sig_IN:=TOF_central_1.Q, time_ON:=swi.time_OUT, time_OFF:=T#300ms)
(*  88	*)	LD 	kmit_central_1.sig_OUT
(* 128	*)	ST 	led_pz_rr

END_PROGRAM
