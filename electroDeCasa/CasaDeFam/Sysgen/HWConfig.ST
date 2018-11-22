(* Upozornìní *)
(* Soubor je automaticky regenerován a všechny ruèní modifikace budou ztracené. *)
(* ---------------------------------------------------------------------- *)
(* Generováno pro TC700 *)
(* ********************************************************************** *)
VAR_GLOBAL CONSTANT
  CPU_TYPE   : USINT := 75;
  CPU_CODE   : UINT  := 1000;
END_VAR

TYPE
  TAIStat : STRUCT
    UNF     : BOOL;
    UNR     : BOOL;
    OVR     : BOOL;
    OVF     : BOOL;
    FLS     : BOOL;
    CJC     : BOOL;
    dummy6 {HIDDEN} : BOOL;
    dummy7 {HIDDEN} : BOOL;
    CHC     : BOOL;
    dummy9 {HIDDEN} : BOOL;
    dummy10 {HIDDEN} : BOOL;
    dummy11 {HIDDEN} : BOOL;
    dummy12 {HIDDEN} : BOOL;
    dummy13 {HIDDEN} : BOOL;
    dummy14 {HIDDEN} : BOOL;
    dummy15 {HIDDEN} : BOOL;
  END_STRUCT;

  TAI : STRUCT
    STAT  : TAIStat;
    FS    : INT;
    ENG   : REAL;
    PCT   : REAL;
  END_STRUCT;

  TAIPW : STRUCT
    UCIB1  : REAL;
    UCIB2  : REAL;
    USRC   : REAL;
    UACU   : REAL;
  END_STRUCT;

  TDI_IR1061 : STRUCT
    DI0   : BOOL;
    DI1   : BOOL;
    DI2   : BOOL;
    DI3   : BOOL;
    IN230  : BOOL;
    HDO    : BOOL;
  END_STRUCT;

  TSTPW : STRUCT
    WCIB1 : BOOL;
    ECIB1 : BOOL;
    WCIB2 : BOOL;
    ECIB2 : BOOL;
    WSRC  : BOOL;
    ESRC  : BOOL;
    WACU  : BOOL;
    EACU  : BOOL;
  END_STRUCT;

  TBIN_4DIPW : STRUCT
    DIP0  : BOOL;
    DIP1  : BOOL;
    DIP2  : BOOL;
    DIP3  : BOOL;
  END_STRUCT;

  TBIN_12DI : STRUCT
    DI0  : BOOL;
    DI1  : BOOL;
    DI2  : BOOL;
    DI3  : BOOL;
    DI4  : BOOL;
    DI5  : BOOL;
    DI6  : BOOL;
    DI7  : BOOL;
    DI8  : BOOL;
    DI9  : BOOL;
    DI10  : BOOL;
    DI11  : BOOL;
  END_STRUCT;

  TCNTF_IN : STRUCT
    SCNT : UINT;
    VALA : UDINT;
    VALB : UDINT;
  END_STRUCT;

  TCNTF_OUT : STRUCT
    CCNT: UINT; 
    SET : UDINT;
  END_STRUCT;

  TBIN_2DO : STRUCT
    DO0  : BOOL;
    DO1  : BOOL;
  END_STRUCT;

  TBIN_12DO : STRUCT
    DO0  : BOOL;
    DO1  : BOOL;
    DO2  : BOOL;
    DO3  : BOOL;
    DO4  : BOOL;
    DO5  : BOOL;
    DO6  : BOOL;
    DO7  : BOOL;
    DO8  : BOOL;
    DO9  : BOOL;
    DO10  : BOOL;
    DO11  : BOOL;
  END_STRUCT;

  TCHStatistic : STRUCT
    STAT       : USINT;
    ERR        : USINT;
    trueMes    : UDINT;
    falseMes   : UDINT;
  END_STRUCT;

  TCHControl : STRUCT
    CONTROL  : UINT;
  END_STRUCT;

  TUniStat : STRUCT
    DSR    : BOOL;
    CTS    : BOOL;
    dummy1 {HIDDEN} : BOOL;
    TRO    : BOOL;
    RCF    : BOOL;
    ROV    : BOOL;
    TRF    : BOOL;
    ARC    : BOOL;
  END_STRUCT;

  TUniCont : STRUCT
    dummy0 {HIDDEN} : BOOL;
    dummy1 {HIDDEN} : BOOL;
    dummy2 {HIDDEN} : BOOL;
    dummy3 {HIDDEN} : BOOL;
    dummy4 {HIDDEN} : BOOL;
    TRG    : BOOL;
    CLR    : BOOL;
    ACN    : BOOL;
  END_STRUCT;

  TUniSign : STRUCT
    DTR : BOOL;
    RTS : BOOL;
  END_STRUCT;

END_TYPE
(* ********************************************************************** *)
(* ---------------------------------------------------------------------- *)
(* CP-1000 *)
TYPE
  TUNI_CH1_IN : STRUCT
    STAT : TUniStat;
    ERR : USINT;
    NUMR : UINT ;
    DATA : ARRAY [0..379] OF USINT;
  END_STRUCT;
END_TYPE

TYPE
  TUNI_CH1_OUT : STRUCT
    CONT : TUniCont;
    SIGN : TUniSign;
    NUMT : UINT ;
    DATA : ARRAY [0..359] OF USINT;
  END_STRUCT;
END_TYPE

VAR_GLOBAL
  r0_p0_Statistic_CH1  AT %X7500 : TCHStatistic;
  r0_p0_Control_CH1    AT %Y7500 : TCHControl;
  UNI_CH1_IN           : TUNI_CH1_IN;
  UNI_CH1_OUT          : TUNI_CH1_OUT;
(* alias *)
  CH1_ZoneIN           AT UNI_CH1_IN.DATA;
  CH1_ZoneOUT          AT UNI_CH1_OUT.DATA;
END_VAR
(* ---------------------------------------------------------------------- *)
(* MI2-01M *)
VAR_GLOBAL
  r0_p2_Statistic_MI_CIB1 AT %X0   : TCHStatistic;
  r0_p2_Control_MI_CIB1 AT %Y0   : TCHControl;
  r0_p2_Statistic_MI_CIB2 AT %X10  : TCHStatistic;
  r0_p2_Control_MI_CIB2 AT %Y2   : TCHControl;
(* alias *)
  klavesnice_beeper    AT MI_CIB2_OUT.ID1_OUT.DOs.DO1;
  klavesnice_control   AT r0_p2_Control_MI_CIB2.CONTROL;
  klavesnice_out3      AT MI_CIB2_OUT.ID1_OUT.DOs.DO3;
  klavesnice_stat      AT MI_CIB2_IN.ID1_IN.CODE.STAT;
  klavesnice_val       AT MI_CIB2_IN.ID1_IN.CODE.VAL;
  klavesnice_yellow    AT MI_CIB2_OUT.ID1_OUT.DOs.DO2;
  led_k1_lg            AT MI_CIB1_OUT.ID5_OUT.LED.GREEN1;
  led_k1_lr            AT MI_CIB1_OUT.ID5_OUT.LED.RED1;
  led_k1_rg            AT MI_CIB1_OUT.ID5_OUT.LED.GREEN2;
  led_k1_rr            AT MI_CIB1_OUT.ID5_OUT.LED.RED2;
  led_k2_lg            AT MI_CIB1_OUT.ID8_OUT.LED.GREEN1;
  led_k2_lr            AT MI_CIB1_OUT.ID8_OUT.LED.RED1;
  led_k2_rg            AT MI_CIB1_OUT.ID8_OUT.LED.GREEN2;
  led_k2_rr            AT MI_CIB1_OUT.ID8_OUT.LED.RED2;
  led_lo_lg            AT MI_CIB1_OUT.ID4_OUT.LED.GREEN1;
  led_lo_lr            AT MI_CIB1_OUT.ID4_OUT.LED.RED1;
  led_lo_rg            AT MI_CIB1_OUT.ID4_OUT.LED.GREEN2;
  led_lo_rr            AT MI_CIB1_OUT.ID4_OUT.LED.RED2;
  led_ob_lg            AT MI_CIB1_OUT.ID6_OUT.LED.GREEN1;
  led_ob_lr            AT MI_CIB1_OUT.ID6_OUT.LED.RED1;
  led_ob_rg            AT MI_CIB1_OUT.ID6_OUT.LED.GREEN2;
  led_ob_rr            AT MI_CIB1_OUT.ID6_OUT.LED.RED2;
  led_pv_lg            AT MI_CIB1_OUT.ID9_OUT.LED.GREEN1;
  led_pv_lr            AT MI_CIB1_OUT.ID9_OUT.LED.RED1;
  led_pv_rg            AT MI_CIB1_OUT.ID9_OUT.LED.GREEN2;
  led_pv_rr            AT MI_CIB1_OUT.ID9_OUT.LED.RED2;
  led_pz_lg            AT MI_CIB1_OUT.ID7_OUT.LED.GREEN1;
  led_pz_lr            AT MI_CIB1_OUT.ID7_OUT.LED.RED1;
  led_pz_rg            AT MI_CIB1_OUT.ID7_OUT.LED.GREEN2;
  led_pz_rr            AT MI_CIB1_OUT.ID7_OUT.LED.RED2;
  logus_koupelna_2     AT MI_CIB1_IN.ID8_IN.DI;
  logus_koupelna1      AT MI_CIB1_IN.ID5_IN.DI;
  logus_loznice        AT MI_CIB1_IN.ID4_IN.DI;
  logus_obyvak         AT MI_CIB1_IN.ID6_IN.DI;
  logus_pokoj_vychod   AT MI_CIB1_IN.ID9_IN.DI;
  logus_pokoj_zapad    AT MI_CIB1_IN.ID7_IN.DI;
  pir_chodba_1np       AT MI_CIB1_IN.ID3_IN.DI.PIR;
  pir_chodba_2np       AT MI_CIB1_IN.ID2_IN.DI.PIR;
  pir_predsin          AT MI_CIB1_IN.ID1_IN.DI.PIR;
  therm_k1             AT MI_CIB1_IN.ID5_IN.THERM;
  therm_k2             AT MI_CIB1_IN.ID8_IN.THERM;
  therm_lo             AT MI_CIB1_IN.ID4_IN.THERM;
  therm_ob             AT MI_CIB1_IN.ID6_IN.THERM;
  therm_pv             AT MI_CIB1_IN.ID9_IN.THERM;
  therm_pz             AT MI_CIB1_IN.ID7_IN.THERM;
  tl_pv_input          AT MI_CIB1_IN.ID9_IN.DI.PRESS_DI1;
  tl_pz_input          AT MI_CIB1_IN.ID7_IN.DI.PRESS_DI1;
  tld_k1_ll            AT MI_CIB1_IN.ID5_IN.DI.CLICK_DOWN1;
  tld_k1_lr            AT MI_CIB1_IN.ID5_IN.DI.CLICK_DOWN2;
  tld_k1_tl            AT MI_CIB1_IN.ID5_IN.DI.CLICK_UP1;
  tld_k1_tr            AT MI_CIB1_IN.ID5_IN.DI.CLICK_UP2;
  tld_k2_ll            AT MI_CIB1_IN.ID8_IN.DI.CLICK_DOWN1;
  tld_k2_lr            AT MI_CIB1_IN.ID8_IN.DI.CLICK_DOWN2;
  tld_k2_tl            AT MI_CIB1_IN.ID8_IN.DI.CLICK_UP1;
  tld_k2_tr            AT MI_CIB1_IN.ID8_IN.DI.CLICK_UP2;
  tld_lo_ll            AT MI_CIB1_IN.ID4_IN.DI.CLICK_DOWN1;
  tld_lo_lr            AT MI_CIB1_IN.ID4_IN.DI.CLICK_DOWN2;
  tld_lo_tl            AT MI_CIB1_IN.ID4_IN.DI.CLICK_UP1;
  tld_lo_tr            AT MI_CIB1_IN.ID4_IN.DI.CLICK_UP2;
  tld_ob_ll            AT MI_CIB1_IN.ID6_IN.DI.CLICK_DOWN1;
  tld_ob_lr            AT MI_CIB1_IN.ID6_IN.DI.CLICK_DOWN2;
  tld_ob_tl            AT MI_CIB1_IN.ID6_IN.DI.CLICK_UP1;
  tld_ob_tr            AT MI_CIB1_IN.ID6_IN.DI.CLICK_UP2;
  tld_pv_ll            AT MI_CIB1_IN.ID9_IN.DI.CLICK_DOWN1;
  tld_pv_lr            AT MI_CIB1_IN.ID9_IN.DI.CLICK_DOWN2;
  tld_pv_tl            AT MI_CIB1_IN.ID9_IN.DI.CLICK_UP1;
  tld_pv_tr            AT MI_CIB1_IN.ID9_IN.DI.CLICK_UP2;
  tld_pz_ll            AT MI_CIB1_IN.ID7_IN.DI.CLICK_DOWN1;
  tld_pz_lr            AT MI_CIB1_IN.ID7_IN.DI.CLICK_DOWN2;
  tld_pz_tl            AT MI_CIB1_IN.ID7_IN.DI.CLICK_UP1;
  tld_pz_tr            AT MI_CIB1_IN.ID7_IN.DI.CLICK_UP2;
  tll_k1_ll            AT MI_CIB1_IN.ID5_IN.DI.PRESS_DOWN1;
  tll_k1_lr            AT MI_CIB1_IN.ID5_IN.DI.PRESS_DOWN2;
  tll_k1_tl            AT MI_CIB1_IN.ID5_IN.DI.PRESS_UP1;
  tll_k1_tr            AT MI_CIB1_IN.ID5_IN.DI.PRESS_UP2;
  tll_k2_ll            AT MI_CIB1_IN.ID8_IN.DI.PRESS_DOWN1;
  tll_k2_lr            AT MI_CIB1_IN.ID8_IN.DI.PRESS_DOWN2;
  tll_k2_tl            AT MI_CIB1_IN.ID8_IN.DI.PRESS_UP1;
  tll_k2_tr            AT MI_CIB1_IN.ID8_IN.DI.PRESS_UP2;
  tll_lo_ll            AT MI_CIB1_IN.ID4_IN.DI.PRESS_DOWN1;
  tll_lo_lr            AT MI_CIB1_IN.ID4_IN.DI.PRESS_DOWN2;
  tll_lo_tl            AT MI_CIB1_IN.ID4_IN.DI.PRESS_UP1;
  tll_lo_tr            AT MI_CIB1_IN.ID4_IN.DI.PRESS_UP2;
  tll_ob_ll            AT MI_CIB1_IN.ID6_IN.DI.PRESS_DOWN1;
  tll_ob_lr            AT MI_CIB1_IN.ID6_IN.DI.PRESS_DOWN2;
  tll_ob_tl            AT MI_CIB1_IN.ID6_IN.DI.PRESS_UP1;
  tll_ob_tr            AT MI_CIB1_IN.ID6_IN.DI.PRESS_UP2;
  tll_pv_ll            AT MI_CIB1_IN.ID9_IN.DI.PRESS_DOWN1;
  tll_pv_lr            AT MI_CIB1_IN.ID9_IN.DI.PRESS_DOWN2;
  tll_pv_tl            AT MI_CIB1_IN.ID9_IN.DI.PRESS_UP1;
  tll_pv_tr            AT MI_CIB1_IN.ID9_IN.DI.PRESS_UP2;
  tll_pz_ll            AT MI_CIB1_IN.ID7_IN.DI.PRESS_DOWN1;
  tll_pz_lr            AT MI_CIB1_IN.ID7_IN.DI.PRESS_DOWN2;
  tll_pz_tl            AT MI_CIB1_IN.ID7_IN.DI.PRESS_UP1;
  tll_pz_tr            AT MI_CIB1_IN.ID7_IN.DI.PRESS_UP2;
  tls_k1_ll            AT MI_CIB1_IN.ID5_IN.DI.DOWN1;
  tls_k1_lr            AT MI_CIB1_IN.ID5_IN.DI.DOWN2;
  tls_k1_tl            AT MI_CIB1_IN.ID5_IN.DI.UP1;
  tls_k1_tr            AT MI_CIB1_IN.ID5_IN.DI.UP2;
  tls_k2_ll            AT MI_CIB1_IN.ID8_IN.DI.DOWN1;
  tls_k2_lr            AT MI_CIB1_IN.ID8_IN.DI.DOWN2;
  tls_k2_tl            AT MI_CIB1_IN.ID8_IN.DI.UP1;
  tls_k2_tr            AT MI_CIB1_IN.ID8_IN.DI.UP2;
  tls_lo_ll            AT MI_CIB1_IN.ID4_IN.DI.DOWN1;
  tls_lo_lr            AT MI_CIB1_IN.ID4_IN.DI.DOWN2;
  tls_lo_tl            AT MI_CIB1_IN.ID4_IN.DI.UP1;
  tls_lo_tr            AT MI_CIB1_IN.ID4_IN.DI.UP2;
  tls_ob_ll            AT MI_CIB1_IN.ID6_IN.DI.DOWN1;
  tls_ob_lr            AT MI_CIB1_IN.ID6_IN.DI.DOWN2;
  tls_ob_tl            AT MI_CIB1_IN.ID6_IN.DI.UP1;
  tls_ob_tr            AT MI_CIB1_IN.ID6_IN.DI.UP2;
  tls_pv_ll            AT MI_CIB1_IN.ID9_IN.DI.DOWN1;
  tls_pv_lr            AT MI_CIB1_IN.ID9_IN.DI.DOWN2;
  tls_pv_tl            AT MI_CIB1_IN.ID9_IN.DI.UP1;
  tls_pv_tr            AT MI_CIB1_IN.ID9_IN.DI.UP2;
  tls_pz_ll            AT MI_CIB1_IN.ID7_IN.DI.DOWN1;
  tls_pz_lr            AT MI_CIB1_IN.ID7_IN.DI.DOWN2;
  tls_pz_tl            AT MI_CIB1_IN.ID7_IN.DI.UP1;
  tls_pz_tr            AT MI_CIB1_IN.ID7_IN.DI.UP2;
END_VAR
(* ---------------------------------------------------------------------- *)
(* IR-1061 *)
VAR_GLOBAL
  r0_p5_DI             AT %X104 : TDI_IR1061;
  r0_p5_STPW           AT %X105 : TSTPW;
  r0_p5_AI0            AT %X106 : TAI;
  r0_p5_AI1            AT %X118 : TAI;
  r0_p5_AI2            AT %X130 : TAI;
  r0_p5_AI3            AT %X142 : TAI;
  r0_p5_AIPW           AT %X154 : TAIPW;
  r0_p5_DO             AT %Y4   : TBIN_2DO;
END_VAR
(* ********************************************************************** *)
(* ---------------------------------------------------------------------- *)
(* IB-1301 *)
VAR_GLOBAL
  r1_p0_DI             AT %X80  : TBIN_12DI;
  r1_p0_DIPW           AT %X82  : TBIN_4DIPW;
  r1_p0_CNT_IN1        AT %X84  : TCNTF_IN;
  r1_p0_CNT_IN2        AT %X94  : TCNTF_IN;
  r1_p0_CNT_OUT1       AT %Y16  : TCNTF_OUT;
  r1_p0_CNT_OUT2       AT %Y22  : TCNTF_OUT;
(* alias *)
  tl_chodba_2NP_rozvadec AT r1_p0_DI.DI5;
  tl_kuchyne_okna      AT r1_p0_DI.DI1;
  tl_kuchyne_vchod_vlevo AT r1_p0_DI.DI4;
  tl_na_pokusy         AT r1_p0_DI.DI11;
  tl_satna_1NP         AT r1_p0_DI.DI0;
  tl_tech_m_svetlo_venk_sever AT r1_p0_DI.DI3;
  tl_zadveri_svetlo_venk_jih AT r1_p0_DI.DI2;
END_VAR
(* ---------------------------------------------------------------------- *)
(* OS-1401 *)
VAR_GLOBAL
  r1_p1_DO             AT %Y28  : TBIN_12DO;
(* alias *)
  sv_chodba_1NP_sedy   AT r1_p1_DO.DO4;
  sv_ku_dvere          AT r1_p1_DO.DO6;
  sv_ku_linka          AT r1_p1_DO.DO1;
  sv_ku_okna           AT r1_p1_DO.DO0;
  sv_ob_1              AT r1_p1_DO.DO7;
  sv_ob_2              AT r1_p1_DO.DO8;
  sv_predsin_stena     AT r1_p1_DO.DO3;
  sv_satna_1NP         AT r1_p1_DO.DO5;
  sv_tech_mistnost_sedy_N AT r1_p1_DO.DO2;
  sv_venkovni_jih_rozp AT r1_p1_DO.DO9;
  sv_venkovni_sever_rozp AT r1_p1_DO.DO10;
END_VAR
(* ---------------------------------------------------------------------- *)
(* OS-1401 *)
VAR_GLOBAL
  r1_p2_DO             AT %Y30  : TBIN_12DO;
(* alias *)
  sv_k1_1              AT r1_p2_DO.DO3;
  sv_k1_2              AT r1_p2_DO.DO4;
  sv_k1_3              AT r1_p2_DO.DO5;
  sv_lo_1              AT r1_p2_DO.DO1;
  sv_lo_2              AT r1_p2_DO.DO2;
  sv_pv_dvere          AT r1_p2_DO.DO10;
  sv_pz_1              AT r1_p2_DO.DO7;
  sv_pz_2              AT r1_p2_DO.DO8;
  sv_pz_dvere          AT r1_p2_DO.DO11;
  sv_wc_2np_dvere      AT r1_p2_DO.DO9;
  vent_k1              AT r1_p2_DO.DO6;
END_VAR
(* ---------------------------------------------------------------------- *)
(* OS-1401 *)
VAR_GLOBAL
  r1_p3_DO             AT %Y32  : TBIN_12DO;
(* alias *)
  sv_chodba_2np_zed    AT r1_p3_DO.DO2;
  sv_k2_1              AT r1_p3_DO.DO3;
  sv_k2_2              AT r1_p3_DO.DO4;
  sv_k2_3              AT r1_p3_DO.DO5;
  sv_pv_1              AT r1_p3_DO.DO0;
  sv_pv_2              AT r1_p3_DO.DO1;
  sv_ve_vychod         AT r1_p3_DO.DO9;
  sv_ve_zapad          AT r1_p3_DO.DO8;
  vent_k2              AT r1_p3_DO.DO6;
END_VAR
(* ********************************************************************** *)
(* ---------------------------------------------------------------------- *)
(* RF-1131 *)
VAR_GLOBAL
  r3_p0_Statistic_RF0  AT %X20  : TCHStatistic;
  r3_p0_Control_RF0    AT %Y5   : TCHControl;
END_VAR
(* ---------------------------------------------------------------------- *)
(* RF-1131 *)
VAR_GLOBAL
  r3_p2_Statistic_RF2  AT %X40  : TCHStatistic;
  r3_p2_Control_RF2    AT %Y9   : TCHControl;
END_VAR
(* -- *)
(* -- *)
VAR_EXTERNAL
END_VAR
(* -- *)

(* ********************************************************************** *)
(* Generováno programem MOSAIC *)
(* © 2001-2013 Teco a.s. *)
(* Verze : 1.2 *)
(* DLL Verze : 14.4.0.269 *)
