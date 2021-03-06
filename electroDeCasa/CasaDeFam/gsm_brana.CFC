PROGRAM gsm_brana
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    pokus : SMS_STRING;
    ahoj : SMS_STRING;
    state : TGSMGateStateOut;
    sig : SINT;
    ready : BOOL;
    sms_reicived : BOOL;
    sms_reic : SMS_STRING;
    tn : NUMBER_STRING;
    txt : SMS_STRING;
    ahoj2 : SMS_STRING := 'ahoj';
    pin : PIN_STRING;
    smscom : SMS_HANDLER;
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
<inVariable name="�+420602909909�" type="" id="2">
  <position x="32" y="57" />
</inVariable>
<inVariable name="�+420601586927�" type="" id="3">
  <position x="32" y="59" />
</inVariable>
<inVariable name="�+420725505062�" type="" id="4">
  <position x="32" y="63" />
</inVariable>
<inVariable name="1" type="" id="5">
  <position x="31" y="24" />
</inVariable>
<inVariable name="&quot;ahoj2&quot;" type="" id="6">
  <position x="55" y="65" />
</inVariable>
<inVariable name="tn" type="NUMBER_STRING" id="7">
  <position x="52" y="67" />
</inVariable>
<inVariable name="txt" type="SMS_STRING" id="8">
  <position x="40" y="61" />
</inVariable>
<inVariable name="UNI_CH1_IN" type="TUNI_CH1_IN" id="9">
  <position x="32" y="51" />
</inVariable>
<block name="SMS_HANDLER" instance="smscom" id="13" height="40" width="13" line="3" order="1">
  <position x="91" y="29" />
  <inVariables>
    <variable name="Send" type="BOOL R_EDGE">
    <comment>Na n�b�nou hranu odeslat SMS</comment>
    </variable>
    <variable name="Ussd" type="BOOL R_EDGE">
    <comment>Na n�b�nou hranu odeslat p��kaz jako telefonn� ��slo</comment>
    </variable>
    <variable name="Reset" type="BOOL R_EDGE">
    <comment>Na n�b�nou hranu zinicializovat GSM br�nu</comment>
    </variable>
    <variable name="Cold" type="BOOL">
    <comment>Prov�st p�i inicializaci i softwarov� reset modemu</comment>
    </variable>
    <variable name="Erase" type="BOOL">
    <comment>Vymazat SMS ulo�en� na SIM p�i inicializaci modemu</comment>
    </variable>
    <variable name="Dial" type="BOOL R_EDGE">
    <comment>Prozvonit ��slo p��jemce SMS (Recipient)</comment>
    </variable>
    <variable name="DialTime" type="TIME">
    <comment>Doba prozv�n�n�</comment>
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
    <variable name="RecvTime" type="DATE_AND_TIME">
    <comment>�as p�ijet� SMS zpr�vy</comment>
    </variable>
    <variable name="Signal" type="SINT">
    <comment>S�la sign�lu v procentech</comment>
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
    <variable name="CH_IN" type="TGSM_UNI">
      <connection refid="9">
        <position x="91" y="52" />
        <position x="66" y="52" />
        <position x="66" y="52" />
        <position x="42" y="52" />
      </connection>
    <comment>Vstupn� komunika�n� z�na UNI kan�lu</comment>
    </variable>
    <variable name="CH_OUT" type="TGSM_UNI">
    <comment>V�stupn� komunika�n� z�na UNI kan�lu</comment>
    </variable>
    <variable name="Pin" type="PIN_STRING">
    <comment>Pin SIM karty</comment>
    </variable>
    <variable name="SMSCenter" type="NUMBER_STRING">
      <connection refid="2">
        <position x="91" y="58" />
        <position x="69" y="58" />
        <position x="69" y="58" />
        <position x="47" y="58" />
      </connection>
    <comment>��slo st�ediska SMS zpr�v</comment>
    </variable>
    <variable name="Sender" type="NUMBER_STRING">
      <connection refid="3">
        <position x="91" y="60" />
        <position x="69" y="60" />
        <position x="69" y="60" />
        <position x="47" y="60" />
      </connection>
    <comment>Telefonn� ��slo odes�latele p�ijat� SMS zpr�vy</comment>
    </variable>
    <variable name="RecvMess" type="SMS_STRING">
    <comment>Text p�ijat� SMS zpr�vy</comment>
    </variable>
    <variable name="Recipient" type="NUMBER_STRING">
      <connection refid="4">
        <position x="91" y="64" />
        <position x="69" y="64" />
        <position x="69" y="64" />
        <position x="47" y="64" />
      </connection>
    <comment>Telefonn� ��slo p��jemce zpr�vy k odesl�n�</comment>
    </variable>
    <variable name="MessToSend" type="SMS_STRING">
      <connection refid="6">
        <position x="91" y="66" />
        <position x="76" y="66" />
        <position x="76" y="66" />
        <position x="62" y="66" />
      </connection>
    <comment>Text SMS zpr�vy k odesl�n�</comment>
    </variable>
    <variable name="Caller" type="NUMBER_STRING">
      <connection refid="7">
        <position x="91" y="68" />
        <position x="86" y="68" />
        <position x="86" y="68" />
        <position x="55" y="68" />
      </connection>
    <comment>Telefonn� ��slo volaj�c�ho</comment>
    </variable>
  </inOutVariables>
</block>
<outVariable name="UNI_CH1_OUT" type="TUNI_CH1_OUT" id="16" order="2">
  <position x="118" y="53" />
  <connection refid="13" name="CH_OUT">
    <position x="119" y="54" />
    <position x="110" y="54" />
    <position x="110" y="54" />
    <position x="104" y="54" />
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
//N001
(*  32	*)	CAL	smscom(CH_IN:=void(UNI_CH1_IN), SMSCenter:=void(�+420602909909�), Sender:=void(�+420601586927�), Recipient:=void(�+420725505062�), MessToSend:=void("ahoj2"), Caller:=void(tn))
//N003
(* 155	*)	ST 	UNI_CH1_OUT

END_PROGRAM
