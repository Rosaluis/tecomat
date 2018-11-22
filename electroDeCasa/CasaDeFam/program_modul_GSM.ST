// Knihovna pro GSM Pøíklad volání:
VAR_GLOBAL
  g_SendText : SMS_STRING := 'Hello world!';
  g_RecvText : SMS_STRING;
  g_Recipient : NUMBER_STRING := '+420725505062';
  g_Sender : NUMBER_STRING;
  g_Caller : NUMBER_STRING;
  g_Center : NUMBER_STRING := '+420602909909';
  g_Pin : PIN_STRING;
END_VAR


//Program pro vyuziti funkcniho bloku SMS_HANDLER2
(*
VAR_GLOBAL
  g_SendText : SMS_STRING := 'Hello world 2!';      //odeslany text
  g_RecvText : SMS_STRING;
  g_Recipient : NUMBER_STRING := '+420725505062';    //cislo prijemce
  g_Sender : NUMBER_STRING;
  g_Caller : NUMBER_STRING;
  g_Center : NUMBER_STRING := '+420602909909';  //SMS centrum operatora
  g_Pin : PIN_STRING;
END_VAR
  *)




(*

//Program pro vyuziti funkcniho bloku SMS_HANDLER

VAR_GLOBAL
  g_SendText : SMS_STRING := 'Hello world!';      //odeslany text
  g_RecvText : SMS_STRING;
  g_Recipient : NUMBER_STRING := '+420777777777';    //cislo prijemce
  g_Sender : NUMBER_STRING;
  g_Caller : NUMBER_STRING;
  g_Center : NUMBER_STRING := '+420608005681';  //SMS centrum operatora
  g_Pin : PIN_STRING;
END_VAR



PROGRAM program_modul_GSM

VAR_INPUT
  l_prozvonit: BOOL;   //promenna "Dial" ke ktere je prirazena promenna "l_prozvonit" reaguje jen na nabeznou hranu
  l_odeslat_SMS:BOOL; //promenna "Send" ke ktere je prirazena promenna "l_odeslat_SMS" reaguje jen na nabeznou hranu
END_VAR

VAR
  iSMS : SMS_HANDLER;   //funkcni blok knihovny "GsmLib" (je treba od v2.0 knihovny                         //"GsmLib" dohrat i knihovny "ComLib" a "SysLib")
                        //"GsmLib" dohrat i knihovny "ComLib" a "SysLib")
END_VAR

iSMS(CH_IN := void(UNI_CH1_IN), CH_OUT := void(UNI_CH1_OUT),
     Pin := g_Pin, SMSCenter := g_Center, Sender := g_Sender,
     RecvMess := g_RecvText, Recipient := g_Recipient,
     MessToSend := g_SendText, Caller := g_Caller,
     DialTime:=T#20s, Dial:=l_prozvonit, Send:=l_odeslat_SMS);
//mozna nahrada posledniho radku volani funkcniho bloku SMS_HANDLER pres promennou iSMS
     //iSMS.DialTime:=T#20s;
     //iSMS.Dial:=l_prozvonit;
     //iSMS.Send:=l_odeslat_SMS;
END_PROGRAM

*)
