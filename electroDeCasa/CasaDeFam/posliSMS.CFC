PROGRAM posliSMS
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    smskuk : SMS_HANDLER;

    gate_state : BOOL;
    ring_come : BOOL;
    sig_state : SINT;
    modem_com_state : TGSMGateStateOut;
    modem_com_error : TGSMGateError;
    sms_sending : BOOL;
    calling : BOOL;
    center : NUMBER_STRING := '+420602909909';
    komu : NUMBER_STRING := '+420725505062';
    sms_text : SMS_STRING := 'ahoj:-)';
    rst : BOOL := TRUE;
    crst_cold : BOOL := TRUE;
    erase_sms : BOOL := FALSE;
    prozvon : BOOL;
    sender_nmb : NUMBER_STRING;
    sms_txt : SMS_STRING;
    call_nmb : NUMBER_STRING;
    pin : PIN_STRING;
    
    uni_ch1_in : TGSM_UNI := void(UNI_CH1_IN);
    uni_ch1_out : TGSM_UNI := void(UNI_CH1_OUT);


    timeOfCall : DATE_AND_TIME;
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
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
END_VAR

//NC

END_PROGRAM
