PROGRAM remote_lights
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    remoteSMS : SMS_HANDLER_2;
    rem_Send : BOOL;
    rem_Ussd : BOOL;
    rem_Reset : BOOL;
    rem_Cold : BOOL;
    rem_Erase : BOOL;
    rem_Dial : BOOL;
    rem_Stat : BOOL;
    rem_DialTime : TIME;
    rem_PlcCoding : TGSMGatePlcCoding;
    rem_SmsCoding : TGSMGateSmsCoding;
    rem_ChanCode : UINT;
    rem_Pin : PIN_STRING;
    rem_SMSCenter : NUMBER_STRING := '+420602909909';
    rem_Sender : NUMBER_STRING;
    rem_RecvMess : SMS_STRING;
    rem_Recipient : NUMBER_STRING := '+420725505062';
    rem_MessToSend : SMS_STRING := 'txt2';
    rem_Caller : NUMBER_STRING := '+420601586927';
    rem_NewMess : BOOL;
    rem_Ready : BOOL;
    rem_Ring : BOOL;
    rem_NewStat : BOOL;
    rem_StatCode : TGSMGateSmsStatus;
    rem_SmsRef : USINT;
    rem_RecvTime : DATE_AND_TIME;
    rem_StatTime : DATE_AND_TIME;
    rem_RingCout : USINT;
    rem_Signal : SINT;
    rem_State : TGSMGateStateOut;
    rem_Error : TGSMGateError;
    rem_SendPedding : BOOL;
    rem_UssdPedding : BOOL;
    rem_DialPedding : BOOL;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="pokus.xsl" version="1.1"?>
<fbd version="1.1">
<comment id="1" height="3" width="12">
  <position x="2" y="2" />
Komentáø ke schématu
</comment>
<block name="SMS_HANDLER_2" instance="remoteSMS" id="2" height="46" width="16" line="3" order="1">
  <position x="71" y="27" />
  <inVariables>
    <variable name="Send" type="BOOL R_EDGE">
      <connection refid="3">
        <position x="71" y="30" />
        <position x="66" y="30" />
        <position x="66" y="30" />
        <position x="35" y="30" />
      </connection>
    <comment>Na nábìžnou hranu odeslat SMS</comment>
    </variable>
    <variable name="Ussd" type="BOOL R_EDGE">
      <connection refid="5">
        <position x="71" y="32" />
        <position x="63" y="32" />
        <position x="63" y="32" />
        <position x="58" y="32" />
      </connection>
    <comment>Na nábìžnou hranu odeslat pøíkaz jako telefonní èíslo</comment>
    </variable>
    <variable name="Reset" type="BOOL R_EDGE">
      <connection refid="7">
        <position x="71" y="34" />
        <position x="65" y="34" />
        <position x="65" y="34" />
        <position x="59" y="34" />
      </connection>
    <comment>Na nábìžnou hranu zinicializovat GSM bránu</comment>
    </variable>
    <variable name="Cold" type="BOOL">
      <connection refid="9">
        <position x="71" y="36" />
        <position x="63" y="36" />
        <position x="63" y="36" />
        <position x="58" y="36" />
      </connection>
    <comment>Provést pøi inicializaci i softwarový reset modemu</comment>
    </variable>
    <variable name="Erase" type="BOOL">
      <connection refid="11">
        <position x="71" y="38" />
        <position x="64" y="38" />
        <position x="64" y="38" />
        <position x="59" y="38" />
      </connection>
    <comment>Vymazat SMS uložené na SIM pøi inicializaci modemu</comment>
    </variable>
    <variable name="Dial" type="BOOL R_EDGE">
      <connection refid="13">
        <position x="71" y="40" />
        <position x="62" y="40" />
        <position x="62" y="40" />
        <position x="57" y="40" />
      </connection>
    <comment>Prozvonit èíslo pøíjemce SMS (Recipient)</comment>
    </variable>
    <variable name="Stat" type="BOOL">
      <connection refid="15">
        <position x="71" y="42" />
        <position x="65" y="42" />
        <position x="65" y="42" />
        <position x="58" y="42" />
      </connection>
    <comment>Vyžadovat stav doruèení</comment>
    </variable>
    <variable name="DialTime" type="TIME">
      <connection refid="17">
        <position x="71" y="44" />
        <position x="63" y="44" />
        <position x="63" y="44" />
        <position x="61" y="44" />
      </connection>
    <comment>Doba prozvánìní</comment>
    </variable>
    <variable name="PlcCoding" type="TGSMGatePlcCoding">
      <connection refid="19">
        <position x="71" y="46" />
        <position x="64" y="46" />
        <position x="64" y="46" />
        <position x="62" y="46" />
      </connection>
    <comment>Kódování STRINGù v programu PLC</comment>
    </variable>
    <variable name="SmsCoding" type="TGSMGateSmsCoding">
      <connection refid="21">
        <position x="71" y="48" />
        <position x="63" y="48" />
        <position x="63" y="48" />
        <position x="62" y="48" />
      </connection>
    <comment>Kódování SMS zpráv</comment>
    </variable>
    <variable name="ChanCode" type="UINT">
      <connection refid="23">
        <position x="71" y="50" />
        <position x="63" y="50" />
        <position x="63" y="50" />
        <position x="62" y="50" />
      </connection>
    <comment>Èíslo kanálu v režimu UNI (CH1_uni .. CH10_uni)</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="NewMess" type="BOOL">
    <comment>Pøijata nová SMS zpráva</comment>
    </variable>
    <variable name="Ready" type="BOOL">
    <comment>GSM brána je pøipravena pro pøíjem a vysílání</comment>
    </variable>
    <variable name="Ring" type="BOOL">
    <comment>Signalizace pøíchozího volání</comment>
    </variable>
    <variable name="NewStat" type="BOOL">
    <comment>Pøijat nový status</comment>
    </variable>
    <variable name="StatCode" type="TGSMGateSmsStatus">
    <comment>Status o doruèení SMS zprávy</comment>
    </variable>
    <variable name="SmsRef" type="USINT">
    <comment>Identifikaèní èíslo SMS zprávy pøi odeslání, nebo reference na zprávu pøi pøijetí statusu</comment>
    </variable>
    <variable name="RecvTime" type="DATE_AND_TIME">
    <comment>Èas pøijetí SMS zprávy</comment>
    </variable>
    <variable name="StatTime" type="DATE_AND_TIME">
    <comment>Èas získání statusu (doba doruèení/nedoruèení)</comment>
    </variable>
    <variable name="RingCount" type="USINT">
    </variable>
    <variable name="Signal" type="SINT">
    <comment>Síla signálu v procentech.</comment>
    </variable>
    <variable name="State" type="TGSMGateStateOut">
    <comment>Stav komunikace s modemem</comment>
    </variable>
    <variable name="Error" type="TGSMGateError">
    <comment>Specifikace chyby pøi komunikaci s modemem</comment>
    </variable>
    <variable name="SendPending" type="BOOL">
    <comment>Probíhá odesílání SMS</comment>
    </variable>
    <variable name="UssdPending" type="BOOL">
    <comment>Probíhá odesílání pøíkazu jako telefonního èísla</comment>
    </variable>
    <variable name="DialPending" type="BOOL">
    <comment>Probíhá prozvánìní telefonního èísla</comment>
    </variable>
  </outVariables>
  <inOutVariables>
    <variable name="Pin" type="PIN_STRING">
      <connection refid="25">
        <position x="71" y="60" />
        <position x="62" y="60" />
        <position x="62" y="60" />
        <position x="57" y="60" />
      </connection>
    <comment>Pin SIM karty</comment>
    </variable>
    <variable name="SMSCenter" type="NUMBER_STRING">
      <connection refid="27">
        <position x="71" y="62" />
        <position x="65" y="62" />
        <position x="65" y="62" />
        <position x="63" y="62" />
      </connection>
    <comment>Èíslo støediska SMS zpráv</comment>
    </variable>
    <variable name="Sender" type="NUMBER_STRING">
      <connection refid="29">
        <position x="71" y="64" />
        <position x="61" y="64" />
        <position x="61" y="64" />
        <position x="60" y="64" />
      </connection>
    <comment>Telefonní èíslo odesílatele pøijaté SMS zprávy</comment>
    </variable>
    <variable name="RecvMess" type="SMS_STRING">
      <connection refid="31">
        <position x="71" y="66" />
        <position x="64" y="66" />
        <position x="64" y="66" />
        <position x="62" y="66" />
      </connection>
    <comment>Text pøijaté SMS zprávy</comment>
    </variable>
    <variable name="Recipient" type="NUMBER_STRING">
      <connection refid="33">
        <position x="71" y="68" />
        <position x="62" y="68" />
        <position x="62" y="68" />
        <position x="61" y="68" />
      </connection>
    <comment>Telefonní èíslo pøíjemce zprávy k odeslání</comment>
    </variable>
    <variable name="MessToSend" type="SMS_STRING">
      <connection refid="35">
        <position x="71" y="70" />
        <position x="65" y="70" />
        <position x="65" y="70" />
        <position x="64" y="70" />
      </connection>
    <comment>Text SMS zprávy k odeslání</comment>
    </variable>
    <variable name="Caller" type="NUMBER_STRING">
      <connection refid="37">
        <position x="71" y="72" />
        <position x="60" y="72" />
        <position x="60" y="72" />
        <position x="59" y="72" />
      </connection>
    <comment>Telefonní èíslo volajícího</comment>
    </variable>
  </inOutVariables>
</block>
<inVariable name="rem_Send" type="BOOL" id="3">
  <position x="26" y="29" />
</inVariable>
<inVariable name="rem_Ussd" type="BOOL" id="5">
  <position x="50" y="31" />
</inVariable>
<inVariable name="rem_Reset" type="BOOL" id="7">
  <position x="50" y="33" />
</inVariable>
<inVariable name="rem_Cold" type="BOOL" id="9">
  <position x="50" y="35" />
</inVariable>
<inVariable name="rem_Erase" type="BOOL" id="11">
  <position x="50" y="37" />
</inVariable>
<inVariable name="rem_Dial" type="BOOL" id="13">
  <position x="50" y="39" />
</inVariable>
<inVariable name="rem_Stat" type="BOOL" id="15">
  <position x="50" y="41" />
</inVariable>
<inVariable name="rem_DialTime" type="TIME" id="17">
  <position x="50" y="43" />
</inVariable>
<inVariable name="rem_PlcCoding" type="TGSMGatePlcCoding" id="19">
  <position x="50" y="45" />
</inVariable>
<inVariable name="rem_SmsCoding" type="TGSMGateSmsCoding" id="21">
  <position x="50" y="47" />
</inVariable>
<inVariable name="rem_ChanCode" type="UINT" id="23">
  <position x="50" y="49" />
</inVariable>
<inVariable name="rem_Pin" type="PIN_STRING" id="25">
  <position x="50" y="59" />
</inVariable>
<inVariable name="rem_SMSCenter" type="NUMBER_STRING" id="27">
  <position x="50" y="61" />
</inVariable>
<inVariable name="rem_Sender" type="NUMBER_STRING" id="29">
  <position x="50" y="63" />
</inVariable>
<inVariable name="rem_RecvMess" type="SMS_STRING" id="31">
  <position x="50" y="65" />
</inVariable>
<inVariable name="rem_Recipient" type="NUMBER_STRING" id="33">
  <position x="50" y="67" />
</inVariable>
<inVariable name="rem_MessToSend" type="SMS_STRING" id="35">
  <position x="50" y="69" />
</inVariable>
<inVariable name="rem_Caller" type="NUMBER_STRING" id="37">
  <position x="50" y="71" />
</inVariable>
<outVariable name="rem_NewMess" type="BOOL" id="39" order="6">
  <position x="96" y="29" />
  <connection refid="2" name="NewMess">
    <position x="97" y="30" />
    <position x="91" y="30" />
    <position x="91" y="30" />
    <position x="87" y="30" />
  </connection>
</outVariable>
<outVariable name="rem_Ready" type="BOOL" id="41" order="12">
  <position x="98" y="31" />
  <connection refid="2" name="Ready">
    <position x="99" y="32" />
    <position x="91" y="32" />
    <position x="91" y="32" />
    <position x="87" y="32" />
  </connection>
</outVariable>
<outVariable name="rem_Ring" type="BOOL" id="43" order="16">
  <position x="109" y="33" />
  <connection refid="2" name="Ring">
    <position x="110" y="34" />
    <position x="94" y="34" />
    <position x="94" y="34" />
    <position x="87" y="34" />
  </connection>
</outVariable>
<outVariable name="rem_NewStat" type="BOOL" id="45" order="7">
  <position x="96" y="35" />
  <connection refid="2" name="NewStat">
    <position x="97" y="36" />
    <position x="91" y="36" />
    <position x="91" y="36" />
    <position x="87" y="36" />
  </connection>
</outVariable>
<outVariable name="rem_StatCode" type="TGSMGateSmsStatus" id="47" order="8">
  <position x="96" y="37" />
  <connection refid="2" name="StatCode">
    <position x="97" y="38" />
    <position x="91" y="38" />
    <position x="91" y="38" />
    <position x="87" y="38" />
  </connection>
</outVariable>
<outVariable name="rem_SmsRef" type="USINT" id="49" order="11">
  <position x="97" y="39" />
  <connection refid="2" name="SmsRef">
    <position x="98" y="40" />
    <position x="93" y="40" />
    <position x="93" y="40" />
    <position x="87" y="40" />
  </connection>
</outVariable>
<outVariable name="rem_RecvTime" type="DATE_AND_TIME" id="51" order="5">
  <position x="95" y="41" />
  <connection refid="2" name="RecvTime">
    <position x="96" y="42" />
    <position x="92" y="42" />
    <position x="92" y="42" />
    <position x="87" y="42" />
  </connection>
</outVariable>
<outVariable name="rem_StatTime" type="DATE_AND_TIME" id="53" order="9">
  <position x="96" y="43" />
  <connection refid="2" name="StatTime">
    <position x="97" y="44" />
    <position x="94" y="44" />
    <position x="94" y="44" />
    <position x="87" y="44" />
  </connection>
</outVariable>
<outVariable name="rem_RingCout" type="USINT" id="55" order="10">
  <position x="96" y="45" />
  <connection refid="2" name="RingCount">
    <position x="97" y="46" />
    <position x="92" y="46" />
    <position x="92" y="46" />
    <position x="87" y="46" />
  </connection>
</outVariable>
<outVariable name="rem_Signal" type="SINT" id="57" order="13">
  <position x="98" y="47" />
  <connection refid="2" name="Signal">
    <position x="99" y="48" />
    <position x="93" y="48" />
    <position x="93" y="48" />
    <position x="87" y="48" />
  </connection>
</outVariable>
<outVariable name="rem_State" type="TGSMGateStateOut" id="59" order="14">
  <position x="98" y="49" />
  <connection refid="2" name="State">
    <position x="99" y="50" />
    <position x="92" y="50" />
    <position x="92" y="50" />
    <position x="87" y="50" />
  </connection>
</outVariable>
<outVariable name="rem_Error" type="TGSMGateError" id="61" order="15">
  <position x="99" y="51" />
  <connection refid="2" name="Error">
    <position x="100" y="52" />
    <position x="92" y="52" />
    <position x="92" y="52" />
    <position x="87" y="52" />
  </connection>
</outVariable>
<outVariable name="rem_SendPedding" type="BOOL" id="63" order="2">
  <position x="93" y="53" />
  <connection refid="2" name="SendPending">
    <position x="94" y="54" />
    <position x="91" y="54" />
    <position x="91" y="54" />
    <position x="87" y="54" />
  </connection>
</outVariable>
<outVariable name="rem_UssdPedding" type="BOOL" id="65" order="3">
  <position x="93" y="55" />
  <connection refid="2" name="UssdPending">
    <position x="94" y="56" />
    <position x="88" y="56" />
    <position x="88" y="56" />
    <position x="87" y="56" />
  </connection>
</outVariable>
<outVariable name="rem_DialPedding" type="BOOL" id="67" order="4">
  <position x="94" y="57" />
  <connection refid="2" name="DialPending">
    <position x="95" y="58" />
    <position x="92" y="58" />
    <position x="92" y="58" />
    <position x="87" y="58" />
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
(*   8	*)	CAL	remoteSMS(Send:=rem_Send, Ussd:=rem_Ussd, Reset:=rem_Reset, Cold:=rem_Cold, Erase:=rem_Erase, Dial:=rem_Dial, Stat:=rem_Stat, DialTime:=rem_DialTime, PlcCoding:=rem_PlcCoding, SmsCoding:=rem_SmsCoding, ChanCode:=rem_ChanCode, Pin:=void(rem_Pin), SMSCenter:=void(rem_SMSCenter), Sender:=void(rem_Sender), RecvMess:=void(rem_RecvMess), Recipient:=void(rem_Recipient), MessToSend:=void(rem_MessToSend), Caller:=void(rem_Caller))
(*   8	*)	LD 	remoteSMS.SendPending
(* 385	*)	ST 	rem_SendPedding
(*   8	*)	LD 	remoteSMS.UssdPending
(* 394	*)	ST 	rem_UssdPedding
(*   8	*)	LD 	remoteSMS.DialPending
(* 403	*)	ST 	rem_DialPedding
(*   8	*)	LD 	remoteSMS.RecvTime
(* 331	*)	ST 	rem_RecvTime
(*   8	*)	LD 	remoteSMS.NewMess
(* 277	*)	ST 	rem_NewMess
(*   8	*)	LD 	remoteSMS.NewStat
(* 304	*)	ST 	rem_NewStat
(*   8	*)	LD 	remoteSMS.StatCode
(* 313	*)	ST 	rem_StatCode
(*   8	*)	LD 	remoteSMS.StatTime
(* 340	*)	ST 	rem_StatTime
(*   8	*)	LD 	remoteSMS.RingCount
(* 349	*)	ST 	rem_RingCout
(*   8	*)	LD 	remoteSMS.SmsRef
(* 322	*)	ST 	rem_SmsRef
(*   8	*)	LD 	remoteSMS.Ready
(* 286	*)	ST 	rem_Ready
(*   8	*)	LD 	remoteSMS.Signal
(* 358	*)	ST 	rem_Signal
(*   8	*)	LD 	remoteSMS.State
(* 367	*)	ST 	rem_State
(*   8	*)	LD 	remoteSMS.Error
(* 376	*)	ST 	rem_Error
(*   8	*)	LD 	remoteSMS.Ring
(* 295	*)	ST 	rem_Ring

END_PROGRAM
