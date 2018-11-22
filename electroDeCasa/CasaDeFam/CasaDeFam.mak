; Varov�n�: Tento soubor je spravov�n v�vojov�m prost�ed�m Mosaic.
; Nedoporu�uje se upravovat ho ru�n�!

#program CasaDeFam , V1.0
;**************************************
;<ActionName/>
;<Programmer/>
;<FirmName/>
;<Copyright/>
;**************************************
;<History>
;</History>
;**************************************
#useoption CPM = 9              ; Typ CPM: K
#useoption RemZone = 0          ; d�lka remanentn� z�ny
#useoption AlarmTime = 150      ; prvn� v�straha [ms]
#useoption MaxCycleTime = 250   ; maxim�ln� cyklus [ms]
#useoption PLCstart = 1         ; studen� start
#useoption AutoSummerTime = 1   ; vnit�n� hodiny PLC se automaticky posouvaj� p�i p�echodu na letn� �as a zp�t
#useoption RestartOnError = 0   ; PLC nebude po tvrd� chyb� restartov�no

#uselib "LocalLib\StdLib_V21_20140514.mlb"
#uselib "LocalLib\SysLib_V36_20151214.mlb"
#uselib "LocalLib\ComLib_V21_20130528.mlb"
#uselib "LocalLib\GsmLib_V32_20130726.mlb"
#endlibs

;**************************************
#usefile "Sysgen\CIBMaker.st", 'auto'
#usefile "SysGen\HWConfig.ST", 'auto'
#usefile "Sysgen\CIBMaker.mos", 'auto'
#usefile "SysGen\CasaDeFam.hwc", 'auto'
#usefile "..\electroDeCasa.hwn", 'auto'
#usefile "CASADEFAM.ST"
#usefile "rosecky.ST"
#usefile "fb_LED_blik.CFC"
#usefile "ovladani_obyvak.CFC"
#usefile "ovladani_koupelna1.CFC"
#usefile "rizeni_loznice.CFC"
#usefile "rizeni_pokojZ.CFC"
#usefile "rizeni_pokojV.CFC"
#usefile "ovladani_koupelna2.CFC"
#usefile "program_modul_GSM.ST"
#usefile "alarm.CFC"
#usefile "klavesnice.CFC"
#usefile "ovladani_satna_1np.CFC"
#usefile "ovladani_venkovni.CFC"
#usefile "ovladani_pir.CFC"
#usefile "centralni_tlacitko.CFC"
#usefile "CasaDeFam.mcf", 'auto'
