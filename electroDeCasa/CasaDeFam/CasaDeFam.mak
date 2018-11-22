; Varování: Tento soubor je spravován vývojovým prostøedím Mosaic.
; Nedoporuèuje se upravovat ho ruènì!

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
#useoption RemZone = 0          ; délka remanentní zóny
#useoption AlarmTime = 150      ; první výstraha [ms]
#useoption MaxCycleTime = 250   ; maximální cyklus [ms]
#useoption PLCstart = 1         ; studený start
#useoption AutoSummerTime = 1   ; vnitøní hodiny PLC se automaticky posouvají pøi pøechodu na letní èas a zpìt
#useoption RestartOnError = 0   ; PLC nebude po tvrdé chybì restartováno

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
