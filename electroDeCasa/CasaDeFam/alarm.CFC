PROGRAM alarm
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    ussd : BOOL;
    dial : BOOL;
    pin : PIN_STRING;
    smscenter : NUMBER_STRING := '+420602909909';
    caller : NUMBER_STRING := '+420601586927';
    state : TGSMGateStateOut;
    ready : BOOL;
    signal : SINT;
    ringing : BOOL;
    err : TGSMGateError;
    smska : BOOL;
    sms2 : SMS_HANDLER_2;
    coding : TGSMGatePlcCoding;
    smscoding : TGSMGateSmsCoding;
    newstat : BOOL;
    sending : BOOL;
    init_handler : BOOL;
    rst_sw : BOOL;
    erase_init_sms : BOOL;
    stat : BOOL;
    lojza : NUMBER_STRING := '+420725505062';
    dialing : BOOL;
    sender : NUMBER_STRING;
    recvsms : SMS_STRING;
    get_sms : SMS_STRING;
    smstext : SMS_STRING := 'sms od tecomatu :-)';
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
<inVariable name="ussd" type="BOOL" id="2">
  <position x="76" y="32" />
</inVariable>
<inVariable name="init_handler" type="BOOL" id="3">
  <position x="76" y="34" />
</inVariable>
<inVariable name="rst_sw" type="BOOL" id="4">
  <position x="76" y="36" />
</inVariable>
<inVariable name="erase_init_sms" type="BOOL" id="5">
  <position x="76" y="38" />
</inVariable>
<inVariable name="dial" type="BOOL" id="6">
  <position x="76" y="40" />
</inVariable>
<inVariable name="T#20s" type="TIME" id="7">
  <position x="76" y="44" />
</inVariable>
<inVariable name="pin" type="PIN_STRING" id="8">
  <position x="76" y="60" />
</inVariable>
<inVariable name="smscenter" type="NUMBER_STRING" id="9">
  <position x="76" y="62" />
</inVariable>
<inVariable name="lojza" type="NUMBER_STRING" id="10">
  <position x="76" y="68" />
</inVariable>
<inVariable name="caller" type="NUMBER_STRING" id="11">
  <position x="76" y="72" />
</inVariable>
<outVariable name="ready" type="BOOL" id="12" order="7">
  <position x="115" y="32" />
  <connection refid="18" name="Ready">
    <position x="116" y="33" />
    <position x="115" y="33" />
    <position x="115" y="33" />
    <position x="108" y="33" />
  </connection>
</outVariable>
<outVariable name="ringing" type="BOOL" id="13" order="5">
  <position x="114" y="34" />
  <connection refid="18" name="Ring">
    <position x="115" y="35" />
    <position x="114" y="35" />
    <position x="114" y="35" />
    <position x="108" y="35" />
  </connection>
</outVariable>
<outVariable name="signal" type="SINT" id="14" order="8">
  <position x="115" y="48" />
  <connection refid="18" name="Signal">
    <position x="116" y="49" />
    <position x="115" y="49" />
    <position x="115" y="49" />
    <position x="108" y="49" />
  </connection>
</outVariable>
<outVariable name="state" type="TGSMGateStateOut" id="15" order="9">
  <position x="115" y="50" />
  <connection refid="18" name="State">
    <position x="116" y="51" />
    <position x="115" y="51" />
    <position x="115" y="51" />
    <position x="108" y="51" />
  </connection>
</outVariable>
<outVariable name="err" type="TGSMGateError" id="16" order="10">
  <position x="117" y="52" />
  <connection refid="18" name="Error">
    <position x="118" y="53" />
    <position x="117" y="53" />
    <position x="117" y="53" />
    <position x="108" y="53" />
  </connection>
</outVariable>
<outVariable name="smska" type="BOOL" id="17" order="4">
  <position x="114" y="30" />
  <connection refid="18" name="NewMess">
    <position x="115" y="31" />
    <position x="114" y="31" />
    <position x="114" y="31" />
    <position x="108" y="31" />
  </connection>
</outVariable>
<block name="SMS_HANDLER_2" instance="sms2" id="18" height="46" width="16" line="3" order="1">
  <position x="92" y="28" />
  <inVariables>
    <variable name="Send" type="BOOL R_EDGE">
      <connection refid="30">
        <position x="92" y="31" />
        <position x="71" y="31" />
        <position x="71" y="31" />
        <position x="49" y="31" />
      </connection>
    <comment>Na n�b�nou hranu odeslat SMS</comment>
    </variable>
    <variable name="Ussd" type="BOOL R_EDGE">
      <connection refid="2">
        <position x="92" y="33" />
        <position x="86" y="33" />
        <position x="86" y="33" />
        <position x="81" y="33" />
      </connection>
    <comment>Na n�b�nou hranu odeslat p��kaz jako telefonn� ��slo</comment>
    </variable>
    <variable name="Reset" type="BOOL R_EDGE">
      <connection refid="3">
        <position x="92" y="35" />
        <position x="90" y="35" />
        <position x="90" y="35" />
        <position x="85" y="35" />
      </connection>
    <comment>Na n�b�nou hranu zinicializovat GSM br�nu</comment>
    </variable>
    <variable name="Cold" type="BOOL">
      <connection refid="4">
        <position x="92" y="37" />
        <position x="87" y="37" />
        <position x="87" y="37" />
        <position x="82" y="37" />
      </connection>
    <comment>Prov�st p�i inicializaci i softwarov� reset modemu</comment>
    </variable>
    <variable name="Erase" type="BOOL">
      <connection refid="5">
        <position x="92" y="39" />
        <position x="90" y="39" />
        <position x="90" y="39" />
        <position x="87" y="39" />
      </connection>
    <comment>Vymazat SMS ulo�en� na SIM p�i inicializaci modemu</comment>
    </variable>
    <variable name="Dial" type="BOOL R_EDGE">
      <connection refid="6">
        <position x="92" y="41" />
        <position x="85" y="41" />
        <position x="85" y="41" />
        <position x="80" y="41" />
      </connection>
    <comment>Prozvonit ��slo p��jemce SMS (Recipient)</comment>
    </variable>
    <variable name="Stat" type="BOOL">
      <connection refid="24">
        <position x="92" y="43" />
        <position x="85" y="43" />
        <position x="85" y="43" />
        <position x="80" y="43" />
      </connection>
    <comment>Vy�adovat stav doru�en�</comment>
    </variable>
    <variable name="DialTime" type="TIME">
      <connection refid="7">
        <position x="92" y="45" />
        <position x="87" y="45" />
        <position x="87" y="45" />
        <position x="82" y="45" />
      </connection>
    <comment>Doba prozv�n�n�</comment>
    </variable>
    <variable name="PlcCoding" type="TGSMGatePlcCoding">
      <connection refid="19">
        <position x="92" y="47" />
        <position x="89" y="47" />
        <position x="89" y="47" />
        <position x="82" y="47" />
      </connection>
    <comment>K�dov�n� STRING� v programu PLC</comment>
    </variable>
    <variable name="SmsCoding" type="TGSMGateSmsCoding">
      <connection refid="20">
        <position x="92" y="49" />
        <position x="90" y="49" />
        <position x="90" y="49" />
        <position x="85" y="49" />
      </connection>
    <comment>K�dov�n� SMS zpr�v</comment>
    </variable>
    <variable name="ChanCode" type="UINT">
      <connection refid="23">
        <position x="92" y="51" />
        <position x="88" y="51" />
        <position x="88" y="51" />
        <position x="83" y="51" />
      </connection>
    <comment>��slo kan�lu v re�imu UNI (CH1_uni .. CH10_uni)</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="NewMess" type="BOOL">
    <comment>P�ijata nov� SMS zpr�va</comment>
    </variable>
    <variable name="Ready" type="BOOL">
    <comment>GSM br�na je p�ipravena pro p��jem a vys�l�n�</comment>
    </variable>
    <variable name="Ring" type="BOOL">
    <comment>Signalizace p��choz�ho vol�n�</comment>
    </variable>
    <variable name="NewStat" type="BOOL">
    <comment>P�ijat nov� status</comment>
    </variable>
    <variable name="StatCode" type="TGSMGateSmsStatus">
    <comment>Status o doru�en� SMS zpr�vy</comment>
    </variable>
    <variable name="SmsRef" type="USINT">
    <comment>Identifika�n� ��slo SMS zpr�vy p�i odesl�n�, nebo reference na zpr�vu p�i p�ijet� statusu</comment>
    </variable>
    <variable name="RecvTime" type="DATE_AND_TIME">
    <comment>�as p�ijet� SMS zpr�vy</comment>
    </variable>
    <variable name="StatTime" type="DATE_AND_TIME">
    <comment>�as z�sk�n� statusu (doba doru�en�/nedoru�en�)</comment>
    </variable>
    <variable name="RingCount" type="USINT">
    </variable>
    <variable name="Signal" type="SINT">
    <comment>S�la sign�lu v procentech.</comment>
    </variable>
    <variable name="State" type="TGSMGateStateOut">
    <comment>Stav komunikace s modemem</comment>
    </variable>
    <variable name="Error" type="TGSMGateError">
    <comment>Specifikace chyby p�i komunikaci s modemem</comment>
    </variable>
    <variable name="SendPending" type="BOOL">
    <comment>Prob�h� odes�l�n� SMS</comment>
    </variable>
    <variable name="UssdPending" type="BOOL">
    <comment>Prob�h� odes�l�n� p��kazu jako telefonn�ho ��sla</comment>
    </variable>
    <variable name="DialPending" type="BOOL">
    <comment>Prob�h� prozv�n�n� telefonn�ho ��sla</comment>
    </variable>
  </outVariables>
  <inOutVariables>
    <variable name="Pin" type="PIN_STRING">
      <connection refid="8">
        <position x="92" y="61" />
        <position x="86" y="61" />
        <position x="86" y="61" />
        <position x="80" y="61" />
      </connection>
    <comment>Pin SIM karty</comment>
    </variable>
    <variable name="SMSCenter" type="NUMBER_STRING">
      <connection refid="9">
        <position x="92" y="63" />
        <position x="91" y="63" />
        <position x="91" y="63" />
        <position x="85" y="63" />
      </connection>
    <comment>��slo st�ediska SMS zpr�v</comment>
    </variable>
    <variable name="Sender" type="NUMBER_STRING">
      <connection refid="26">
        <position x="92" y="65" />
        <position x="88" y="65" />
        <position x="88" y="65" />
        <position x="82" y="65" />
      </connection>
    <comment>Telefonn� ��slo odes�latele p�ijat� SMS zpr�vy</comment>
    </variable>
    <variable name="RecvMess" type="SMS_STRING">
      <connection refid="28">
        <position x="92" y="67" />
        <position x="89" y="67" />
        <position x="89" y="67" />
        <position x="83" y="67" />
      </connection>
    <comment>Text p�ijat� SMS zpr�vy</comment>
    </variable>
    <variable name="Recipient" type="NUMBER_STRING">
      <connection refid="10">
        <position x="92" y="69" />
        <position x="86" y="69" />
        <position x="86" y="69" />
        <position x="80" y="69" />
      </connection>
    <comment>Telefonn� ��slo p��jemce zpr�vy k odesl�n�</comment>
    </variable>
    <variable name="MessToSend" type="SMS_STRING">
      <connection refid="29">
        <position x="92" y="71" />
        <position x="62" y="71" />
        <position x="62" y="71" />
        <position x="45" y="71" />
      </connection>
    <comment>Text SMS zpr�vy k odesl�n�</comment>
    </variable>
    <variable name="Caller" type="NUMBER_STRING">
      <connection refid="11">
        <position x="92" y="73" />
        <position x="87" y="73" />
        <position x="87" y="73" />
        <position x="81" y="73" />
      </connection>
    <comment>Telefonn� ��slo volaj�c�ho</comment>
    </variable>
  </inOutVariables>
</block>
<inVariable name="coding" type="TGSMGatePlcCoding" id="19">
  <position x="76" y="46" />
</inVariable>
<inVariable name="smscoding" type="TGSMGateSmsCoding" id="20">
  <position x="76" y="48" />
</inVariable>
<outVariable name="newstat" type="BOOL" id="21" order="2">
  <position x="113" y="36" />
  <connection refid="18" name="NewStat">
    <position x="114" y="37" />
    <position x="112" y="37" />
    <position x="112" y="37" />
    <position x="108" y="37" />
  </connection>
</outVariable>
<outVariable name="sending" type="BOOL" id="22" order="3">
  <position x="113" y="54" />
  <connection refid="18" name="SendPending">
    <position x="114" y="55" />
    <position x="112" y="55" />
    <position x="112" y="55" />
    <position x="108" y="55" />
  </connection>
</outVariable>
<inVariable name="CH1_uni" type="UINT" id="23">
  <position x="76" y="50" />
  <comment>
S�riov� kan�l CH1, re�im uni  </comment>
</inVariable>
<inVariable name="stat" type="BOOL" id="24">
  <position x="76" y="42" />
</inVariable>
<outVariable name="dialing" type="BOOL" id="25" order="6">
  <position x="114" y="58" />
  <connection refid="18" name="DialPending">
    <position x="115" y="59" />
    <position x="114" y="59" />
    <position x="114" y="59" />
    <position x="108" y="59" />
  </connection>
</outVariable>
<inVariable name="sender" type="NUMBER_STRING" id="26">
  <position x="76" y="64" />
</inVariable>
<outVariable name="recvsms" type="SMS_STRING" id="27" order="11">
  <position x="113" y="66" />
  <connection refid="18" name="RecvMess">
    <position x="114" y="67" />
    <position x="113" y="67" />
    <position x="113" y="67" />
    <position x="108" y="67" />
  </connection>
</outVariable>
<inVariable name="get_sms" type="SMS_STRING" id="28">
  <position x="76" y="66" />
</inVariable>
<inVariable name="smstext" type="SMS_STRING" id="29">
  <position x="38" y="70" />
</inVariable>
<inVariable name="tl_na_pokusy" type="BOOL" id="30">
  <position x="38" y="30" />
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
(*  92	*)	CAL	sms2(Send:=tl_na_pokusy, Ussd:=ussd, Reset:=init_handler, Cold:=rst_sw, Erase:=erase_init_sms, Dial:=dial, Stat:=stat, DialTime:=T#20s, PlcCoding:=coding, SmsCoding:=smscoding, ChanCode:=CH1_uni, Pin:=void(pin), SMSCenter:=void(smscenter), Sender:=void(sender), RecvMess:=void(get_sms), Recipient:=void(lojza), MessToSend:=void(smstext), Caller:=void(caller))
(*  92	*)	LD 	sms2.NewStat
(* 313	*)	ST 	newstat
(*  92	*)	LD 	sms2.SendPending
(* 322	*)	ST 	sending
(*  92	*)	LD 	sms2.NewMess
(*  83	*)	ST 	smska
(*  92	*)	LD 	sms2.Ring
(*  47	*)	ST 	ringing
(*  92	*)	LD 	sms2.DialPending
(* 339	*)	ST 	dialing
(*  92	*)	LD 	sms2.Ready
(*  38	*)	ST 	ready
(*  92	*)	LD 	sms2.Signal
(*  56	*)	ST 	signal
(*  92	*)	LD 	sms2.State
(*  65	*)	ST 	state
(*  92	*)	LD 	sms2.Error
(*  74	*)	ST 	err
//N004
(* 360	*)	LD 	get_sms
//N005
(* 351	*)	ST 	recvsms

END_PROGRAM
