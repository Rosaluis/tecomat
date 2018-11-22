VAR_GLOBAL
  g_SendText  : SMS_STRING := 'Hello world!';
  g_RecvText  : SMS_STRING;
  g_Recipient : NUMBER_STRING := '+420725505062';
  g_Sender    : NUMBER_STRING;
  g_Caller    : NUMBER_STRING;
  g_Center    : NUMBER_STRING := '+420602909909';
  g_Pin       : PIN_STRING;
END_VAR





(*
VAR_GLOBAL
  g_SendText  : SMS_STRING := 'Hello world!';
  g_RecvText  : SMS_STRING;
  g_Recipient : NUMBER_STRING := '+420608511845';
  g_Sender    : NUMBER_STRING;
  g_Caller    : NUMBER_STRING;
  g_Center    : NUMBER_STRING := '+420602909909';
  g_Pin       : PIN_STRING := '1234';
END_VAR

PROGRAM prgMain
  VAR
    iSMS : SMS_HANDLER_2;
  END_VAR
  iSMS(chanCode := CH1_uni, PlcCoding := ggpc_cp1250, SmsCoding := ggsc_UCS2,
       Pin := g_Pin, SMSCenter := g_Center, Sender := g_Sender,
       RecvMess := g_RecvText, Recipient := g_Recipient,
       MessToSend := g_SendText, Caller := g_Caller);
END_PROGRAM
  *)




  
