TYPE
  TCIB_IN2  : struct
    IN1    : bool;
    IN2    : bool;
  end_struct;
  TCIB_DI3  : struct
    DI1    : bool;
    DI2    : bool;
    DI3    : bool;
  end_struct;
  TCIB_DI8  : struct
    DI1    : bool;
    DI2    : bool;
    DI3    : bool;
    DI4    : bool;
    DI5    : bool;
    DI6    : bool;
    DI7    : bool;
    DI8    : bool;
  end_struct;
  TCIB_DI11  : struct
    DI1    : bool;
    DI2    : bool;
    DI3    : bool;
    DI4    : bool;
    DI5    : bool;
    DI6    : bool;
    DI7    : bool;
    DI8    : bool;
    DI9    : bool;
    DI10   : bool;
    DI11   : bool;
  end_struct;
  TCIB_DI2  : struct
    DI1    : bool;
    DI2    : bool;
  end_struct;
  TCIB_DI4  : struct
    DI1    : bool;
    DI2    : bool;
    DI3    : bool;
    DI4    : bool;
  end_struct;
  TCIB_DI5  : struct
    DI1    : bool;
    DI2    : bool;
    DI3    : bool;
    DI4    : bool;
    DI5    : bool;
  end_struct;
  TCIB_DI2T  : struct
    DI1    : bool;
    DI2    : bool;
    dummy2 {HIDDEN} : bool;
    dummy3 {HIDDEN}: bool;
    TAMPER1: bool;
    TAMPER2: bool;
    dummy6 {HIDDEN} : bool;
    dummy7 {HIDDEN}: bool;
  end_struct;
  TCIB_DI5T : struct
    DI1    : bool;
    DI2    : bool;
    DI3    : bool;
    DI4    : bool;
    DI5    : bool;
    dummy5 {HIDDEN}: bool;
    dummy6 {HIDDEN}: bool;
    dummy7 {HIDDEN}: bool;
    TAMPER1: bool;
    TAMPER2: bool;
    TAMPER3: bool;
    TAMPER4: bool;
    TAMPER5: bool;
    dummy13 {HIDDEN}: bool;
    dummy14 {HIDDEN}: bool;
    dummy15 {HIDDEN}: bool;
  end_struct;
  TCIB_IN4  : struct
    IN1    : bool;
    IN2    : bool;
    IN3    : bool;
    IN4    : bool;
  end_struct;
  TCIB_IN5  : struct
    IN1    : bool;
    IN2    : bool;
    IN3    : bool;
    IN4    : bool;
    IN5    : bool;
  end_struct;
  TCIB_IN7  : struct
    IN1    : bool;
    IN2    : bool;
    IN3    : bool;
    IN4    : bool;
    IN5    : bool;
    IN6    : bool;
    IN7    : bool;
  end_struct;
  TCIB_IN8  : struct
    IN1    : bool;
    IN2    : bool;
    IN3    : bool;
    IN4    : bool;
    IN5    : bool;
    IN6    : bool;
    IN7    : bool;
    IN8    : bool;
  end_struct;
  TCIB_IN14  : struct
    IN1    : bool;
    IN2    : bool;
    IN3    : bool;
    IN4    : bool;
    IN5    : bool;
    IN6    : bool;
    IN7    : bool;
    IN8    : bool;
    IN9    : bool;
    IN10   : bool;
    IN11   : bool;
    IN12   : bool;
    IN13   : bool;
    IN14   : bool;
  end_struct;
  TCIB_DI18  : struct
    DI1    : bool;
    DI2    : bool;
    DI3    : bool;
    DI4    : bool;
    DI5    : bool;
    DI6    : bool;
    DI7    : bool;
    DI8    : bool;
    DI9    : bool;
    DI10   : bool;
    DI11   : bool;
    DI12   : bool;
    DI13   : bool;
    DI14   : bool;
    DI15   : bool;
    DI16   : bool;
    DI17   : bool;
    DI18   : bool;
  end_struct;
  TCIB_CLICK18  : struct
    CLICK1    : bool;
    CLICK2    : bool;
    CLICK3    : bool;
    CLICK4    : bool;
    CLICK5    : bool;
    CLICK6    : bool;
    CLICK7    : bool;
    CLICK8    : bool;
    CLICK9    : bool;
    CLICK10   : bool;
    CLICK11   : bool;
    CLICK12   : bool;
    CLICK13   : bool;
    CLICK14   : bool;
    CLICK15   : bool;
    CLICK16   : bool;
    CLICK17   : bool;
    CLICK18   : bool;
  end_struct;
  TCIB_PRESS18  : struct
    PRESS1    : bool;
    PRESS2    : bool;
    PRESS3    : bool;
    PRESS4    : bool;
    PRESS5    : bool;
    PRESS6    : bool;
    PRESS7    : bool;
    PRESS8    : bool;
    PRESS9    : bool;
    PRESS10   : bool;
    PRESS11   : bool;
    PRESS12   : bool;
    PRESS13   : bool;
    PRESS14   : bool;
    PRESS15   : bool;
    PRESS16   : bool;
    PRESS17   : bool;
    PRESS18   : bool;
  end_struct;
  TCIB_TAMPER18  : struct
    TAMPER1    : bool;
    TAMPER2    : bool;
    TAMPER3    : bool;
    TAMPER4    : bool;
    TAMPER5    : bool;
    TAMPER6    : bool;
    TAMPER7    : bool;
    TAMPER8    : bool;
    TAMPER9    : bool;
    TAMPER10   : bool;
    TAMPER11   : bool;
    TAMPER12   : bool;
    TAMPER13   : bool;
    TAMPER14   : bool;
    TAMPER15   : bool;
    TAMPER16   : bool;
    TAMPER17   : bool;
    TAMPER18   : bool;
  end_struct;
  TCIB_CIB1800M  : struct
    DI     : TCIB_DI18;    
    CLICK  : TCIB_CLICK18; 
    PRESS  : TCIB_PRESS18; 
    TAMPER : TCIB_TAMPER18;
  end_struct;
  TCIB_SW2  : struct
    SW1    : bool;
    SW2    : bool;
  end_struct;
  TCIB_SW4  : struct
    SW1    : bool;
    SW2    : bool;
    SW3    : bool;
    SW4    : bool;
  end_struct;
  TCIB_SW12  : struct
    SW1    : bool;
    SW2    : bool;
    SW3    : bool;
    SW4    : bool;
    SW5    : bool;
    SW6    : bool;
    SW7    : bool;
    SW8    : bool;
    SW9    : bool;
    SW10   : bool;
    SW11   : bool;
    SW12   : bool;
  end_struct;
  TCIB_WSB_BTN2  : struct
    UP1    : bool;
    DOWN1  : bool;
  end_struct;
  TCIB_WSB_BTN4  : struct
    UP1    : bool;
    DOWN1  : bool;
    UP2    : bool;
    DOWN2  : bool;
  end_struct;
  TCIB_WSB_BTN6  : struct
    UP1    : bool;
    DOWN1  : bool;
    UP2    : bool;
    DOWN2  : bool;
    UP3    : bool;
    DOWN3  : bool;
  end_struct;
  TCIB_WSB_BTN8  : struct
    UP1    : bool;
    DOWN1  : bool;
    UP2    : bool;
    DOWN2  : bool;
    UP3    : bool;
    DOWN3  : bool;
    UP4    : bool;
    DOWN4  : bool;
  end_struct;
  TCIB_SOPHY_LED  : struct
    RED     : bool;
    GREEN   : bool;
  end_struct;
  TCIB_WSB_LED2  : struct
    GREEN1  : bool;
    RED1    : bool;
  end_struct;
  TCIB_WSB_LED4  : struct
    GREEN1  : bool;
    RED1    : bool;
    GREEN2  : bool;
    RED2    : bool;
  end_struct;
  TCIB_WSB_LED6  : struct
    GREEN1  : bool;
    RED1    : bool;
    GREEN2  : bool;
    RED2    : bool;
    GREEN3  : bool;
    RED3    : bool;
  end_struct;
  TCIB_WSB_LED8  : struct
    GREEN1  : bool;
    RED1    : bool;
    GREEN2  : bool;
    RED2    : bool;
    GREEN3  : bool;
    RED3    : bool;
    GREEN4  : bool;
    RED4    : bool;
  end_struct;
  TCIB_AIN2  : struct
    AIN1 : real;
    AIN2 : real;
  end_struct;
  TCIB_AIN3  : struct
    AIN1 : real;
    AIN2 : real;
    AIN3 : real;
  end_struct;
  TCIB_AI2  : struct
    AI1 : real;
    AI2 : real;
  end_struct;
  TCIB_AI3  : struct
    AI1 : real;
    AI2 : real;
    AI3 : real;
  end_struct;
  TCIB_AI4  : struct
    AI1 : real;
    AI2 : real;
    AI3 : real;
    AI4 : real;
  end_struct;
  TCIB_AIN4  : struct
    AIN1 : real;
    AIN2 : real;
    AIN3 : real;
    AIN4 : real;
  end_struct;
  TCIB_CVT_STAT  : struct
    OUF1     : bool;
    VLD1     : bool;
    ErrFanA  : bool;
    ErrFanB  : bool;
  end_struct;
  TCIB_FAN2  : struct
    FanA     : real;
    FanB     : real;
  end_struct;
  TCIB_AI2_STAT  : struct
    OUF1 : bool;
    VLD1 : bool;
    OUF2 : bool;
    VLD2 : bool;
  end_struct;
  TCIB_GLAI_STAT  : struct
    OUF1   : bool;
    VLD1   : bool;
    OUF2   : bool;
    VLD2   : bool;
    OUFT   : bool;
    VLDT   : bool;
    OUFRH  : bool;
    VLDRH  : bool;
  end_struct;
  TCIB_CIR0203_STAT  : struct
    OUF1   : bool;
    VLD1   : bool;
    OUF2   : bool;
    VLD2   : bool;
    dummy4 : bool;
    dummy5 : bool;
    PWM    : bool;
    MAN    : bool;
  end_struct;
  TCIB_AI3_STAT  : struct
    OUF1 : bool;
    VLD1 : bool;
    OUF2 : bool;
    VLD2 : bool;
    OUF3 : bool;
    VLD3 : bool;
  end_struct;
  TCIB_CRC_STAT  : struct
    OUF1 : bool;
    VLD1 : bool;
    OUF2 : bool;
    VLD2 : bool;
    DISP : bool;
  end_struct;
  TCIB_CHM0308_STAT  : struct
    OUF1 : bool;
    VLD1 : bool;
    OUF2 : bool;
    VLD2 : bool;
    OUF3 : bool;
    VLD3 : bool;
    ManMode : bool;
    PowerErr : bool;
  end_struct;
  TCIB_COR_STAT  : struct
    DUMMY0 : bool;
    DUMMY1 : bool;
    DUMMY2 : bool;
    DUMMY3 : bool;
    DUMMY4 : bool;
    DUMMY5 : bool;
    ManMode : bool;
    PowerErr : bool;
  end_struct;
  TCIB_AI4_STAT  : struct
    OUF1 : bool;
    VLD1 : bool;
    OUF2 : bool;
    VLD2 : bool;
    OUF3 : bool;
    VLD3 : bool;
    OUF4 : bool;
    VLD4 : bool;
  end_struct;
  TCIB_AI5_STAT  : struct
    OUF1 : bool;
    VLD1 : bool;
    OUF2 : bool;
    VLD2 : bool;
    OUF3 : bool;
    VLD3 : bool;
    OUF4 : bool;
    VLD4 : bool;
    OUF5 : bool;
    VLD5 : bool;
  end_struct;
  TCIB_CIT0100_STAT  : struct
    mOUF : bool;
    mVLD : bool;
    hOUF : bool;
    hVLD : bool;
  end_struct;
  TCIB_CIT0200I_STAT  : struct
    OUF1 : bool;
    VLD1 : bool;
    OUF2 : bool;
    VLD2 : bool;
    hOUF : bool;
    hVLD : bool;
  end_struct;
  TCIB_CWSLo_STAT  : struct
    iOUF : bool;
    iVLD : bool;
    OUF1 : bool;
    VLD1 : bool;
    OUF2 : bool;
    VLD2 : bool;
  end_struct;
  TCIB_CIT0200_STAT  : struct
    iOUF : bool;
    iVLD : bool;
    eOUF : bool;
    eVLD : bool;
  end_struct;
  TCIB_CEM0401M_STAT  : struct
    VLD1   : bool;
    VLD2   : bool;
    VLD3   : bool;
    VLD4   : bool;
    VLDR   : bool;
    dummy5 : bool;
    dummy6 : bool;
    ARC    : bool;
  end_struct;
  TCIB_CEM0401M_CONT  : struct
    LV1    : bool;
    LV2    : bool;
    LV3    : bool;
    LV4    : bool;
    WR     : bool;
    dummy5 : bool;
    dummy6 : bool;
    ACN    : bool;
  end_struct;
  TCIB_CEM0401M_ARI  : struct
    STAT : TCIB_CEM0401M_STAT;
    REGI : uint;
    VALI : array[0..7] of usint;
  end_struct;
  TCIB_CEM0401M_ARO  : struct
    CONT : TCIB_CEM0401M_CONT;
    REGO : uint;
    VALO : array[0..7] of usint;
  end_struct;
  TCIB_SOPHY_IN  : struct
    DOWN : bool;
    UP   : bool;
    IN1  : bool;
    IN2  : bool;
    IN3  : bool;
    IN4  : bool;
  end_struct;
  TCIB_AOUT2  : struct
    OUT1  : real;
    OUT2  : real;
  end_struct;
  TCIB_AO2  : struct
    AO1  : real;
    AO2  : real;
  end_struct;
  TCIB_AOUT4  : struct
    OUT1  : real;
    OUT2  : real;
    OUT3  : real;
    OUT4  : real;
  end_struct;
  TCIB_AO4  : struct
    AO1  : real;
    AO2  : real;
    AO3  : real;
    AO4  : real;
  end_struct;
  TCIB_DIM6_STAT  : struct
    OH : bool;
    OL : bool;
    UT : bool;
    BC : bool;
  end_struct;
  TCIB_FCC_STAT  : struct
    OUF : bool;
    VLD : bool;
    OH  : bool;
  end_struct;
  TCIB_FCC_OUT  : struct
    HEAT : bool;
    COLD : bool;
  end_struct;
  TCIB_IART_BTN  : struct
    MODE : bool;
    STAT : bool;
  end_struct;
  TCIB_IART_LED  : struct
    STAT_GREEN : bool;
    STAT_RED   : bool;
    MODE_GREEN : bool;
    MODE_RED   : bool;
  end_struct;
  TCIB_WMR_OUT  : struct
    RED    : bool;
    GREEN  : bool;
    RE     : bool;
    BEEPER : bool;
  end_struct;
  TCIB_IDRT_BTN  : struct
    RES  : bool;
    STAT : bool;
    MODE : bool;
    UP   : bool;
    DOWN : bool;
  end_struct;
  TCIB_IDRT_LED  : struct
    ON   : bool;
    LED  : bool;
    HAND : bool;
    MAN  : bool;
  end_struct;
  TCIB_IDRTUK_BTN  : struct
    DUMMY {HIDDEN} : bool;
    STAT : bool;
    MODE : bool;
    UP   : bool;
    DOWN : bool;
  end_struct;
  TCIB_IDRTUK_LED  : struct
    GREEN1 : bool;
    RED1   : bool;
    GREEN2 : bool;
    RED2   : bool;
    ON     : bool;
    HAND   : bool;
    MAN    : bool;
  end_struct;
  TCIB_KEY_OUT  : struct
    GREEN  : bool;
    RED    : bool;
    BEEPER : bool;
  end_struct;
  TCIB_KEY_DISP  : struct
    ID   : usint;
    TEXT : array [0..13] of usint;
  end_struct;
  TCIB_RCM_FLG  : struct
    PRESS  : bool;
    LEFT   : bool;
    RIGHT  : bool;
  end_struct;
  TCIB_RRC_FLG  : struct
    PRESS  : bool;
    DUMMY1 {HIDDEN} : bool;
    DUMMY2 {HIDDEN} : bool;
    iOUF   : bool;
    iVLD   : bool;
    eOUF   : bool;
    eVLD   : bool;
    BERR   : bool;
  end_struct;
  TCIB_RCM_VAL  : struct
    VALUE  : int;
    ERROR  : usint;
  end_struct;
  TCIB_RCM_ICO  : struct
    ONE         : BOOL; // T1                 
    TWO         : BOOL; // T2                 
    THREE       : BOOL; // T3                 
    FOUR        : BOOL; // T4                 
    FIVE        : BOOL; // T5                 
    SIX         : BOOL; // T6                 
    SEVEN       : BOOL; // T7                 
    ERROR       : BOOL; // P3                 
    No          : BOOL; // P2                 
    Clock       : BOOL; // T8                 
    Moon        : BOOL; // T12                
    Sun         : BOOL; // T13                
    House       : BOOL; // T10                
    Figure      : BOOL; // T11                
    Drink       : BOOL; // T15                
    Thermometer : BOOL; // T9                 
    Power       : BOOL; // T14   // ON/OFF    
    Setting     : BOOL; // P1                 
    Celsius     : BOOL; // S3                 
    Fahrenheit  : BOOL; // S4                 
    Percent     : BOOL; // P6                 
    rH          : BOOL; // W1                 
    dotUp       : BOOL; // P5                 
    dotDown     : BOOL; // P4                 
    Heating     : BOOL; // P7                 
    Cooling     : BOOL; // P8   // snowflake  
    Ventilation : BOOL; // S5                 
    Water       : BOOL; // P9                 
    Spanner     : BOOL; // P10   // Setup     
    P11         : BOOL; // P11                
    Bell        : BOOL; // P12                
    Manual      : BOOL; // W2                 
    LN3         : BOOL; // P13                
    LN2         : BOOL; // P14                
    LN1         : BOOL; // P15                
    Rotation    : BOOL; // P16   // Ventilator
    LP1         : BOOL; // P17                
    LP2         : BOOL; // P18                
    LP3         : BOOL; // P19                
    Automatic   : BOOL; // P20                
    Minus       : BOOL; // S1                 
    S2          : BOOL; // S2                 
    D1          : BOOL; // D1                 
    D2          : BOOL; // D2                 
    D3          : BOOL; // D3                 
    D4          : BOOL; // D4                 
    DE          : BOOL; // D5                 
    DOUT        : bool; //                    
  end_struct;
  TCIB_RRC_ICO  : struct
    ONE         : BOOL; // T1                 
    TWO         : BOOL; // T2                 
    THREE       : BOOL; // T3                 
    FOUR        : BOOL; // T4                 
    FIVE        : BOOL; // T5                 
    SIX         : BOOL; // T6                 
    SEVEN       : BOOL; // T7                 
    ERROR       : BOOL; // P3                 
    No          : BOOL; // P2                 
    Clock       : BOOL; // T8                 
    Moon        : BOOL; // T12                
    Sun         : BOOL; // T13                
    House       : BOOL; // T10                
    Figure      : BOOL; // T11                
    Drink       : BOOL; // T15                
    Thermometer : BOOL; // T9                 
    Power       : BOOL; // T14   // ON/OFF    
    Setting     : BOOL; // P1                 
    Celsius     : BOOL; // S3                 
    Fahrenheit  : BOOL; // S4                 
    Percent     : BOOL; // P6                 
    rH          : BOOL; // W1                 
    dotUp       : BOOL; // P5                 
    dotDown     : BOOL; // P4                 
    Heating     : BOOL; // P7                 
    Cooling     : BOOL; // P8   // snowflake  
    Ventilation : BOOL; // S5                 
    Water       : BOOL; // P9                 
    Spanner     : BOOL; // P10   // Setup     
    P11         : BOOL; // P11                
    Bell        : BOOL; // P12                
    Manual      : BOOL; // W2                 
    LN3         : BOOL; // P13                
    LN2         : BOOL; // P14                
    LN1         : BOOL; // P15                
    Rotation    : BOOL; // P16   // Ventilator
    LP1         : BOOL; // P17                
    LP2         : BOOL; // P18                
    LP3         : BOOL; // P19                
    Automatic   : BOOL; // P20                
    Minus       : BOOL; // S1                 
    S2          : BOOL; // S2                 
    D1          : BOOL; // D1                 
    D2          : BOOL; // D2                 
    D3          : BOOL; // D3                 
    D4          : BOOL; // D4                 
    DE          : BOOL; // D5                 
  end_struct;
  TCIB_SOPHY_IR  : struct
    dummy0 {HIDDEN} : bool;
    dummy1 {HIDDEN} : bool;
    dummy2 {HIDDEN} : bool;
    dummy3 {HIDDEN} : bool;
    dummy4 {HIDDEN} : bool;
    TRG             : bool;
    TC1             : bool;
    TC2             : bool;
    CODE            : UINT;
  end_struct;
  TCIB_SOPHY_VIN  : struct
    BUSY            : bool;
    LISTEN          : bool;
    dummy2 {HIDDEN} : bool;
    dummy3 {HIDDEN} : bool;
    dummy4 {HIDDEN} : bool;
    ERR             : bool;
    OK              : bool;
    MSG             : bool;
    CODE            : USINT;
  end_struct;
  TCIB_SOPHY_VOUT  : struct
    ACT             : USINT;
    CODE            : USINT;
  end_struct;
  TCIB_RE1  : struct
    RE1    : bool;
  end_struct;
  TCIB_RE2  : struct
    RE1    : bool;
    RE2    : bool;
  end_struct;
  TCIB_RE4  : struct
    RE1    : bool;
    RE2    : bool;
    RE3    : bool;
    RE4    : bool;
  end_struct;
  TCIB_RE6  : struct
    RE1    : bool;
    RE2    : bool;
    RE3    : bool;
    RE4    : bool;
    RE5    : bool;
    RE6    : bool;
  end_struct;
  TCIB_DO2  : struct
    DO1    : bool;
    DO2    : bool;
  end_struct;
  TCIB_DO2_CJC : struct
    DO1u   : bool;
    DO1d   : bool;
  end_struct;
  TCIB_DO3 : struct
    DO1    : bool;
    DO2    : bool;
    DO3    : bool;
  end_struct;
  TCIB_DO6  : struct
    DO1    : bool;
    DO2    : bool;
    DO3    : bool;
    DO4    : bool;
    DO5    : bool;
    DO6    : bool;
  end_struct;
  TCIB_DO8  : struct
    DO1    : bool;
    DO2    : bool;
    DO3    : bool;
    DO4    : bool;
    DO5    : bool;
    DO6    : bool;
    DO7    : bool;
    DO8    : bool;
  end_struct;
  TCIB_DO11  : struct
    DO1    : bool;
    DO2    : bool;
    DO3    : bool;
    DO4    : bool;
    DO5    : bool;
    DO6    : bool;
    DO7    : bool;
    DO8    : bool;
    DO9    : bool;
    DO10   : bool;
    DO11   : bool;
  end_struct;
  TCIB_DO19  : struct
    DO1    : bool;
    DO2    : bool;
    DO3    : bool;
    DO4    : bool;
    DO5    : bool;
    DO6    : bool;
    DO7    : bool;
    DO8    : bool;
    DO9    : bool;
    DO10   : bool;
    DO11   : bool;
    DO12   : bool;
    DO13   : bool;
    DO14   : bool;
    DO15   : bool;
    DO16   : bool;
    DO17   : bool;
    DO18   : bool;
    DO19   : bool;
  end_struct;
  TCIB_RE12  : struct
    RE1    : bool;
    RE2    : bool;
    RE3    : bool;
    RE4    : bool;
    RE5    : bool;
    RE6    : bool;
    RE7    : bool;
    RE8    : bool;
    RE9    : bool;
    RE10   : bool;
    RE11   : bool;
    RE12   : bool;
  end_struct;
  TCIB_CJC_STAT  : struct
    WD1                : bool;
    WD2                : bool;
    WD3                : bool;
    WD4                : bool;
    WD5                : bool;
    WD6                : bool;
    ManMode            : bool;
    dummy7 {HIDDEN}    : bool;
  end_struct;
  TCIB_CJC  : struct
    DO1u  : bool;
    DO1d  : bool;
    DO2u  : bool;
    DO2d  : bool;
    DO3u  : bool;
    DO3d  : bool;
    DO4u  : bool;
    DO4d  : bool;
    DO5u  : bool;
    DO5d  : bool;
    DO6u  : bool;
    DO6d  : bool;
  end_struct;
  TRF_STAT  : struct
    dummy0 {HIDDEN} : bool;
    dummy1 {HIDDEN} : bool;
    dummy2 {HIDDEN} : bool;
    dummy3 {HIDDEN} : bool;
    dummy4 {HIDDEN} : bool;
    dummy5 {HIDDEN} : bool;
    dummy6 {HIDDEN} : bool;
    BERR  : bool;
  end_struct;
  TStatR_HC_0101F  : struct
    iOUF     : bool;
    iVLD     : bool;
    dummy2  {HIDDEN} : bool;
    dummy3  {HIDDEN} : bool;
    dummy4  {HIDDEN} : bool;
    dummy5  {HIDDEN} : bool;
    dummy6  {HIDDEN} : bool;
    dummy7  {HIDDEN} : bool;
    dummy8  {HIDDEN} : bool;
    dummy9  {HIDDEN} : bool;
    dummy10 {HIDDEN} : bool;
    dummy11 {HIDDEN} : bool;
    dummy12 {HIDDEN} : bool;
    MERR     : bool;
    DERR     : bool;
    BERR     : bool;
  END_STRUCT;
  TStatR_HC_0201F  : struct
    iOUF     : bool;
    iVLD     : bool;
    eOUF     : bool;
    eVLD     : bool;
    WIN      : bool;
    dummy5  {HIDDEN} : bool;
    dummy6  {HIDDEN} : bool;
    dummy7  {HIDDEN} : bool;
    dummy8  {HIDDEN} : bool;
    dummy9  {HIDDEN} : bool;
    dummy10 {HIDDEN} : bool;
    dummy11 {HIDDEN} : bool;
    dummy12 {HIDDEN} : bool;
    MERR     : bool;
    DERR     : bool;
    BERR     : bool;
  END_STRUCT;
  TRFIT_STAT  : struct
    OUF   : bool;
    VLD   : bool;
    dummy2 {HIDDEN} : bool;
    dummy3 {HIDDEN} : bool;
    dummy4 {HIDDEN} : bool;
    dummy5 {HIDDEN} : bool;
    dummy6 {HIDDEN} : bool;
    BERR  : bool;
  end_struct;
  TRF_CIT0100_STAT  : struct
    mOUF   : bool;
    mVLD   : bool;
    hOUF   : bool;
    hVLD   : bool;
    dummy4 {HIDDEN} : bool;
    dummy5 {HIDDEN} : bool;
    dummy6 {HIDDEN} : bool;
    BERR   : bool;
  end_struct;
  TRF_Key4  : struct
    BTN1 : bool;
    BTN2 : bool;
    BTN3 : bool;
    BTN4 : bool;
  end_struct;
  TRF_Key5  : struct
    BTN1 : bool;
    BTN2 : bool;
    BTN3 : bool;
    BTN4 : bool;
    BTN5 : bool;
  end_struct;
  TCIB_CRC_BTN  : struct
    MODE : bool;
    DOWN : bool;
    UP   : bool;
    dummy3 : bool;
    dummy4 : bool;
    dummy5 : bool;
    dummy6 : bool;
    dummy7 : bool;
  end_struct;
  TCIB_CRC_DISP  : struct
    TEXT : array [0..2] of usint;
    LED_ON     : bool;
    LED_Blink  : bool;
    dummy2     : bool;
    dummy3     : bool;
    Disp_OFF   : bool;
    Disp_Blink : bool;
    Dot1       : bool;
    Dot2       : bool;
  end_struct;
  TCIB_CDM_STAT  : struct
    OverLoad1 : bool;
    OverLoad2 : bool;
    OverLoad3 : bool;
    OverLoad4 : bool;
    OverLoad5 : bool;
    OverLoad6 : bool;
    ManMode   : bool;
    OverHeat  : bool;
  end_struct;
  TCIB_CDMILED_STAT  : struct
    dummy0    : bool;
    dummy1    : bool;
    dummy2    : bool;
    dummy3    : bool;
    dummy4    : bool;
    dummy5    : bool;
    ManMode   : bool;
    OverHeat  : bool;
  end_struct;
  TCIB_CDM000210V_STAT  : struct
    ManMode   : bool;
  end_struct;
  TCIB_CDM_LED6  : struct
    LED1 : real;
    LED2 : real;
    LED3 : real;
    ramp1: usint;
    LED4 : real;
    LED5 : real;
    LED6 : real;
    ramp2: usint;
  end_struct;
  TCIB_CDM_LEDa  : struct
    LED1 : real;
    ramp1: usint;
    LED2 : real;
    ramp2: usint;
    LED3 : real;
    ramp3: usint;
  end_struct;
  TCIB_CDM_LEDb  : struct
    LED4 : real;
    ramp4: usint;
    LED5 : real;
    ramp5: usint;
    LED6 : real;
    ramp6: usint;
  end_struct;
  TCIB_RI_STAT  : struct
    OUF1     : bool;
    VLD1     : bool;
    OUF2     : bool;
    VLD2     : bool;
    OUFI     : bool;
    VLDI     : bool;
  end_struct;
  TCIB_RI_THERM  : struct
    AI1  : real;
    AI2  : real;
  end_struct;
  TCIB_IRStat  : struct
    Receive_End   : bool;
    Err_Receive   : bool;
    Transmit_End  : bool;
    Learn_End     : bool;
    Err_Learn     : bool;
    Clear_End     : bool;
    dummy6        : bool;
    ErrMode       : bool;
  END_STRUCT;
  TCIB_IRControl  : struct
    Receive_ON   : bool;
    Transmit_ON  : bool;
    Learn_ON     : bool;
    Learn_Mask   : bool;
    Clear        : bool;
    LED_AUTO     : bool;
    LED_ON       : bool;
    LED_Blink    : bool;
  END_STRUCT;
  TCIB_IRin  : struct
    stat     : TCIB_IRStat;
    IR_code  : uint;
  end_struct;
  TCIB_IRout  : struct
    cont     : TCIB_IRControl;
    IR_code  : uint;
  end_struct;
  TCIB_CAM0600I_STAT : struct
    OUF1   : bool;
    VLD1   : bool;
    OUF2   : bool;
    VLD2   : bool;
    OUF3   : bool;
    VLD3   : bool;
    OUF4   : bool;
    VLD4   : bool;
    OUF5   : bool;
    VLD5   : bool;
    OUF6a  : bool;
    VLD6a  : bool;
    OUF6b  : bool;
    VLD6b  : bool;
  end_struct;
  TCIB_CAM06600I_AV23 : struct
    FLOW   : real;
    THERM  : real;
  end_struct;
  TCIB_CIT09_DI : struct
    DI1     : bool;
    DI2     : bool;
    DI3     : bool;
    DI4     : bool;
    DI5     : bool;
    DI6     : bool;
    DI7     : bool;
    DI8     : bool;
    CLICK1  : bool;
    CLICK2  : bool;
    CLICK3  : bool;
    CLICK4  : bool;
    CLICK5  : bool;
    CLICK6  : bool;
    CLICK7  : bool;
    CLICK8  : bool;
    PRESS1  : bool;
    PRESS2  : bool;
    PRESS3  : bool;
    PRESS4  : bool;
    PRESS5  : bool;
    PRESS6  : bool;
    PRESS7  : bool;
    PRESS8  : bool;
    TAMPER1 : bool;
    TAMPER2 : bool;
    TAMPER3 : bool;
    TAMPER4 : bool;
    TAMPER5 : bool;
    TAMPER6 : bool;
    TAMPER7 : bool;
    TAMPER8 : bool;
  end_struct;
  TCIB_CIR0203_DI : struct
    DI1     : bool;
    DI2     : bool;
    CLICK1  : bool;
    CLICK2  : bool;
    PRESS1  : bool;
    PRESS2  : bool;
    TAMPER1 : bool;
    TAMPER2 : bool;
  end_struct;
  TCIB_BTN2_CJC : struct
    DI1     : bool;
    DI2     : bool;
    CLICK1  : bool;
    CLICK2  : bool;
    PRESS1  : bool;
    PRESS2  : bool;
    dummy6 {HIDDEN} : bool;
    WD     : bool;
  end_struct;
  TCIB_BTN_DI2 : struct
    DI1     : bool;
    DI2     : bool;
    CLICK1  : bool;
    CLICK2  : bool;
    PRESS1  : bool;
    PRESS2  : bool;
    dummy6 {HIDDEN} : bool;
    dummy7 {HIDDEN} : bool;
  end_struct;
  TCIB_CRQ0400_STAT : struct
    OUFT   : bool;
    VLDT   : bool;
    OUFRH  : bool;
    VLDRH  : bool;
    OUF1   : bool;
    VLD1   : bool;
    OUF2   : bool;
    VLD2   : bool;
  end_struct;
  TCIB_CRQ0400_AI : struct
    THERM : real;
    RH    : real;
  end_struct;
  TCIB_CRQ0600_DI : struct
    PIR       : bool;
    DI1       : bool;
    DI2       : bool;
    dummy3    {HIDDEN} : bool;
    CLICKPIR  : bool;
    CLICK1    : bool;
    CLICK2    : bool;
    dummy7    {HIDDEN} : bool;
    PRESSPIR  : bool;
    PRESS1    : bool;
    PRESS2    : bool;
    dummy11   {HIDDEN} : bool;
    TAMPERPIR : bool;
    TAMPER1   : bool;
    TAMPER2   : bool;
  end_struct;
  TCIB_CRQ0600_STAT : struct
    OUFCO2   : bool;
    VLDCO2   : bool;
    OUFT     : bool;
    VLDT     : bool;
    OUFRH    : bool;
    VLDRH    : bool;
    OUF1     : bool;
    VLD1     : bool;
    OUF2     : bool;
    VLD2     : bool;
    KALPRESS {HIDDEN} : bool;
    KALACT   {HIDDEN} : bool;
  end_struct;
  TCIB_CWS2LO_BTN : struct
    UP1         : bool;
    DOWN1       : bool;
    dummy2      {HIDDEN} : bool;
    dummy3      {HIDDEN} : bool;
    DI1         : bool;
    DI2         : bool;
    dummy6      {HIDDEN} : bool;
    dummy7      {HIDDEN} : bool;
    CLICK_UP1   : bool;
    CLICK_DOWN1 : bool;
    dummy10     {HIDDEN} : bool;
    dummy11     {HIDDEN} : bool;
    CLICK_DI1   : bool;
    CLICK_DI2   : bool;
    dummy14     {HIDDEN} : bool;
    dummy15     {HIDDEN} : bool;
    PRESS_UP1   : bool;
    PRESS_DOWN1 : bool;
    dummy18     {HIDDEN} : bool;
    dummy19     {HIDDEN} : bool;
    PRESS_DI1   : bool;
    PRESS_DI2   : bool;
    dummy22     {HIDDEN} : bool;
    dummy23     {HIDDEN} : bool;
  end_struct;
  TCIB_CWS4LO_BTN : struct
    UP1         : bool;
    DOWN1       : bool;
    UP2         : bool;
    DOWN2       : bool;
    DI1         : bool;
    DI2         : bool;
    dummy6      {HIDDEN} : bool;
    dummy7      {HIDDEN} : bool;
    CLICK_UP1   : bool;
    CLICK_DOWN1 : bool;
    CLICK_UP2   : bool;
    CLICK_DOWN2 : bool;
    CLICK_DI1   : bool;
    CLICK_DI2   : bool;
    dummy14     {HIDDEN} : bool;
    dummy15     {HIDDEN} : bool;
    PRESS_UP1   : bool;
    PRESS_DOWN1 : bool;
    PRESS_UP2   : bool;
    PRESS_DOWN2 : bool;
    PRESS_DI1   : bool;
    PRESS_DI2   : bool;
    dummy22     {HIDDEN} : bool;
    dummy23     {HIDDEN} : bool;
  end_struct;
  TCIB_CIT09_STAT : struct
    OUF7   : bool;
    VLD7   : bool;
    OUF8   : bool;
    VLD8   : bool;
    OUF9   : bool;
    VLD9   : bool;
  end_struct;
  TCIB_CIT09_AI : struct
    AI7  : real;
    AI8  : real;
  end_struct;
  TCIB_CHC_STAT : struct
    OUF1   : bool;
    VLD1   : bool;
    OUF2   : bool;
    VLD2   : bool;
    OUFI   : bool;
    VLDI   : bool;
  end_struct;
  TCIB_VCHC_STAT : struct
    READY    : bool;
    RUN      : bool;
    dummy2   : bool;
    dummy3   : bool;
    dummy4   : bool;
    dummy5   : bool;
    FS       : bool;
    SERVICE  : bool;
    POSITION : REAL;
  end_struct;
  TCIB_VCHC_CONT : struct
    INIT     : bool;
    dummy1   : bool;
    dummy2   : bool;
    dummy3   : bool;
    dummy4   : bool;
    dummy5   : bool;
    dummy6   : bool;
    dummy7   : bool;
    POSITION : real;
  end_struct;
  TCIB_CWG0503S_CODE : struct
    STAT   : usint;
    VAL    : array [0..4] of usint;
  end_struct;
  TCIB_CWG0503S_STAT : struct
    OUF4   : bool;
    VLD4   : bool;
    OUF5   : bool;
    VLD5   : bool;
  end_struct;
  TCIB_CWG0503S_DI : struct
    DI1     : bool;
    DI2     : bool;
    DI3     : bool;
    DI4     : bool;
    DI5     : bool;
    TAMPER4 : bool;
    TAMPER5 : bool;
    dummy7  : bool;
  end_struct;
  TCIB_CRC0003S_BTN : struct
    BTN1  : bool;      
    BTN2  : bool;      
    BTN3  : bool;      
    DI1   : bool;      
    CLICK_BTN1 : bool; 
    CLICK_BTN2 : bool; 
    CLICK_BTN3 : bool; 
    CLICK_DI1  : bool; 
    PRESS_BTN1 : bool; 
    PRESS_BTN2 : bool; 
    PRESS_BTN3 : bool; 
    PRESS_DI1  : bool; 
  end_struct;
  TCIB_CRC0003S_STAT : struct
    OUFT : bool;       
    VLDT : bool;       
    OUFR : bool;       
    VLDR : bool;       
    OUF1 : bool;       
    VLD1 : bool;       
  end_struct;
  TCIB_CRC0003S_CONT : struct
    blink11   : bool; 
    blink12   : bool; 
    blink21   : bool; 
    blink22   : bool; 
    blinkS1   : bool; 
    blinkS2   : bool; 
    blinkS3   : bool; 
    blinkS4   : bool; 
  end_struct;
  TCIB_CRC0003S_DISP : struct
    cont      : TCIB_CRC0003S_CONT; 
    val1      : int;  
    val2      : int;  
    symbols   : word; 
    units1    : byte; 
    units2    : byte; 
    light     : byte; 
  end_struct;
  TCIB_CDMRLC_DIM : struct
    LEVEL    : real;         
    RAMP     : usint;        
    MINIMUM  : real := 20.0; 
  end_struct;
  TCIB_CDMRLC_STAT : struct
    OUF1   : bool;
    VLD1   : bool;
    OUF2   : bool;
    VLD2   : bool;
    OUF3   : bool;
    VLD3   : bool;
    OUF4   : bool;
    VLD4   : bool;
    OUFT   : bool;
    VLDT   : bool;
    MAN    : bool;
    ERR1   : bool;
    ERR2   : bool;
    HEAT   : bool;
    PWR_ERR: bool;
  end_struct;
  TCIB_CDMRLC_DI : struct
    DI1     : bool;
    DI2     : bool;
    DI3     : bool;
    DI4     : bool;
    CLICK1  : bool;
    CLICK2  : bool;
    CLICK3  : bool;
    CLICK4  : bool;
    PRESS1  : bool;
    PRESS2  : bool;
    PRESS3  : bool;
    PRESS4  : bool;
    TAMPER1 : bool;
    TAMPER2 : bool;
    TAMPER3 : bool;
    TAMPER4 : bool;
  end_struct;
  TCIB_CVO_STAT : struct
    ECMD   : bool;
    ECARD  : bool;
    BUSY   : bool;
    dummy3 {HIDDEN} : bool;
    dummy4 {HIDDEN} : bool;
    dummy5 {HIDDEN} : bool;
    dummy6 {HIDDEN} : bool;
    ARC    : bool;
  end_struct;
  TCIB_CVO_CONT : struct
    dummy0 {HIDDEN} : bool;
    dummy1 {HIDDEN} : bool;
    dummy2 {HIDDEN} : bool;
    dummy3 {HIDDEN} : bool;
    dummy4 {HIDDEN} : bool;
    dummy5 {HIDDEN} : bool;
    dummy6 {HIDDEN} : bool;
    ACN    : bool;
  end_struct;
  TCIB_CVO0001B : struct
    CONT   : TCIB_CVO_CONT;
    CMD    : usint;
    VAL    : usint;
  end_struct;
  TCIB_CAQ05_STAT : struct
  OVF1M    : bool;
  OVF1C    : bool;
  OVF1B    : bool;
  dummy3   {HIDDEN} : bool;
  OVF2M    : bool;
  OVF2C    : bool;
  OVF2B    : bool;
  dummy7   {HIDDEN} : bool;
  UNFT     : bool;
  OVFT     : bool;
  ERR      : bool;
  dummy11  {HIDDEN} : bool;
  dummy12  {HIDDEN} : bool;
  SLFT     : bool;
  dummy14  {HIDDEN} : bool;
  dummy15  {HIDDEN} : bool;
  end_struct;
  TCIB_C_WS_0000R_iG_BTN : struct
    BTN1    : bool;
    BTN2    : bool;
    BTN3    : bool;
    BTN4    : bool;
    BTN5    : bool;
    BTN6    : bool;
    dummy6  : bool;
    PR      : bool;
    CLICKB1 : bool;
    CLICKB2 : bool;
    CLICKB3 : bool;
    CLICKB4 : bool;
    CLICKB5 : bool;
    CLICKB6 : bool;
    dummy14 : bool;
    CLICKPR : bool;
    PRESSB1 : bool;
    PRESSB2 : bool;
    PRESSB3 : bool;
    PRESSB4 : bool;
    PRESSB5 : bool;
    PRESSB6 : bool;
    dummy22 : bool;
    PRESSPR : bool;
  end_struct;
  TCIB_C_WS_0000R_iG_CONT : struct
    DOT1   : bool;
    DOT2   : bool;
    dummy2 : bool;
    DB     : bool;
    FF     : bool;
    BL     : bool;
    BZ     : bool;
    PX     : bool;
  end_struct;
  TCIB_C_WS_0000R_iG_LED : struct
    LED1     : bool;
    LED2     : bool;
    LED3     : bool;
    LED4     : bool;
    LED5     : bool;
    LED6     : bool;
    dummy6   : bool;
    dummy7   : bool;
    CNT1     : bool;
    CNT2     : bool;
    CNT3     : bool;
    CNT4     : bool;
    CNT5     : bool;
    CNT6     : bool;
    CNT7     : bool;
    CNT8     : bool;
  end_struct;
  TCIB_iGL_Stat : struct
    BTN     : TCIB_C_WS_0000R_iG_BTN;    COUNTER : sint;    IDENT   : byte;  end_struct;
  TCIB_iGL_Cont : struct
    CONT    : TCIB_C_WS_0000R_iG_CONT;
    LED     : TCIB_C_WS_0000R_iG_LED;
    BLIGHT  : usint;
    DISP    : sint;
  end_struct;
  TCIB_CRS0200R_BTN : struct
    BUTT        : bool;
    DI1         : bool;
    DI2         : bool;
    CLICK_BUTT  : bool;
    CLICK_DI1   : bool;
    CLICK_DI2   : bool;
    PRESS_BUTT  : bool;
    PRESS_DI1   : bool;
    PRESS_DI2   : bool;
  end_struct;
  TCIB_CRS0200R_STAT : struct
    OUFT  : bool;
    VLDT  : bool;
    OUF1  : bool;
    VLD1  : bool;
    OUF2  : bool;
    VLD2  : bool;
  end_struct;
// ----------------------------------------

  TMI_CIB1_ID1_IN  : struct	//C-RQ-0600
    // struct size 12 
    DI : TCIB_CRQ0600_DI;
    STAT : TCIB_CRQ0600_STAT;
    AI : TCIB_CRQ0400_AI;
  END_STRUCT;

  TMI_CIB1_ID2_IN  : struct	//C-RQ-0600
    // struct size 12 
    DI : TCIB_CRQ0600_DI;
    STAT : TCIB_CRQ0600_STAT;
    AI : TCIB_CRQ0400_AI;
  END_STRUCT;

  TMI_CIB1_ID3_IN  : struct	//C-RQ-0600
    // struct size 12 
    DI : TCIB_CRQ0600_DI;
    STAT : TCIB_CRQ0600_STAT;
    AI : TCIB_CRQ0400_AI;
  END_STRUCT;

  TMI_CIB1_ID4_IN  : struct	//C-WS-0400R-Logus
    // struct size 8 
    DI : TCIB_CWS4LO_BTN;
    STAT : TCIB_CWSLo_STAT;
    THERM : REAL;
  END_STRUCT;

  TMI_CIB1_ID4_OUT  : struct	//C-WS-0400R-Logus
    // struct size 1 
    LED : TCIB_WSB_LED4;
  END_STRUCT;

  TMI_CIB1_ID5_IN  : struct	//C-WS-0400R-Logus
    // struct size 8 
    DI : TCIB_CWS4LO_BTN;
    STAT : TCIB_CWSLo_STAT;
    THERM : REAL;
  END_STRUCT;

  TMI_CIB1_ID5_OUT  : struct	//C-WS-0400R-Logus
    // struct size 1 
    LED : TCIB_WSB_LED4;
  END_STRUCT;

  TMI_CIB1_ID6_IN  : struct	//C-WS-0400R-Logus
    // struct size 8 
    DI : TCIB_CWS4LO_BTN;
    STAT : TCIB_CWSLo_STAT;
    THERM : REAL;
  END_STRUCT;

  TMI_CIB1_ID6_OUT  : struct	//C-WS-0400R-Logus
    // struct size 1 
    LED : TCIB_WSB_LED4;
  END_STRUCT;

  TMI_CIB1_ID7_IN  : struct	//C-WS-0400R-Logus
    // struct size 8 
    DI : TCIB_CWS4LO_BTN;
    STAT : TCIB_CWSLo_STAT;
    THERM : REAL;
  END_STRUCT;

  TMI_CIB1_ID7_OUT  : struct	//C-WS-0400R-Logus
    // struct size 1 
    LED : TCIB_WSB_LED4;
  END_STRUCT;

  TMI_CIB1_ID8_IN  : struct	//C-WS-0400R-Logus
    // struct size 8 
    DI : TCIB_CWS4LO_BTN;
    STAT : TCIB_CWSLo_STAT;
    THERM : REAL;
  END_STRUCT;

  TMI_CIB1_ID8_OUT  : struct	//C-WS-0400R-Logus
    // struct size 1 
    LED : TCIB_WSB_LED4;
  END_STRUCT;

  TMI_CIB1_ID9_IN  : struct	//C-WS-0400R-Logus
    // struct size 8 
    DI : TCIB_CWS4LO_BTN;
    STAT : TCIB_CWSLo_STAT;
    THERM : REAL;
  END_STRUCT;

  TMI_CIB1_ID9_OUT  : struct	//C-WS-0400R-Logus
    // struct size 1 
    LED : TCIB_WSB_LED4;
  END_STRUCT;

  TMI_CIB1_ID10_IN  : struct	//C-WG-0503S
    // struct size 6 
    CODE : TCIB_CWG0503S_CODE;
  END_STRUCT;

  TMI_CIB1_ID10_OUT  : struct	//C-WG-0503S
    // struct size 1 
    DOs : TCIB_DO3;
  END_STRUCT;

  TMI_CIB2_ID1_IN  : struct	//C-WG-0503S
    // struct size 6 
    CODE : TCIB_CWG0503S_CODE;
  END_STRUCT;

  TMI_CIB2_ID1_OUT  : struct	//C-WG-0503S
    // struct size 1 
    DOs : TCIB_DO3;
  END_STRUCT;


END_TYPE
// ------------------------------ 
TYPE
  TMI_CIB1_IN  : struct
    // struct size 94;
    intgr : REAL;
    ID1_IN : TMI_CIB1_ID1_IN;	//C-RQ-0600
    ID2_IN : TMI_CIB1_ID2_IN;	//C-RQ-0600
    ID3_IN : TMI_CIB1_ID3_IN;	//C-RQ-0600
    ID4_IN : TMI_CIB1_ID4_IN;	//C-WS-0400R-Logus
    ID5_IN : TMI_CIB1_ID5_IN;	//C-WS-0400R-Logus
    ID6_IN : TMI_CIB1_ID6_IN;	//C-WS-0400R-Logus
    ID7_IN : TMI_CIB1_ID7_IN;	//C-WS-0400R-Logus
    ID8_IN : TMI_CIB1_ID8_IN;	//C-WS-0400R-Logus
    ID9_IN : TMI_CIB1_ID9_IN;	//C-WS-0400R-Logus
    ID10_IN : TMI_CIB1_ID10_IN;	//C-WG-0503S
  END_STRUCT;

  TMI_CIB1_OUT  : struct
   // struct size 7;
    ID4_OUT : TMI_CIB1_ID4_OUT;	//C-WS-0400R-Logus
    ID5_OUT : TMI_CIB1_ID5_OUT;	//C-WS-0400R-Logus
    ID6_OUT : TMI_CIB1_ID6_OUT;	//C-WS-0400R-Logus
    ID7_OUT : TMI_CIB1_ID7_OUT;	//C-WS-0400R-Logus
    ID8_OUT : TMI_CIB1_ID8_OUT;	//C-WS-0400R-Logus
    ID9_OUT : TMI_CIB1_ID9_OUT;	//C-WS-0400R-Logus
    ID10_OUT : TMI_CIB1_ID10_OUT;	//C-WG-0503S
  END_STRUCT;

END_TYPE
VAR_GLOBAL
  MI_CIB1_IN    : TMI_CIB1_IN;
  MI_CIB1_OUT   : TMI_CIB1_OUT;
  INE_STAT_MI_CIB1  : array [1..32] of USINT;
  INE_ERR_MI_CIB1   : array [1..32] of USINT;
END_VAR
// ------------------------- 
TYPE
  TMI_CIB2_IN  : struct
    // struct size 10;
    intgr : REAL;
    ID1_IN : TMI_CIB2_ID1_IN;	//C-WG-0503S
  END_STRUCT;

  TMI_CIB2_OUT  : struct
   // struct size 1;
    ID1_OUT : TMI_CIB2_ID1_OUT;	//C-WG-0503S
  END_STRUCT;

END_TYPE
VAR_GLOBAL
  MI_CIB2_IN   : TMI_CIB2_IN;
  MI_CIB2_OUT  : TMI_CIB2_OUT;
  INE_STAT_MI_CIB2  : array [1..32] of USINT;
  INE_ERR_MI_CIB2   : array [1..32] of USINT;
END_VAR

// ------------------------- 
TYPE
  TRF0_IN  : struct
    // struct size 9;
    bondMap : array[1..64] of bool;
    NoData : USINT;
  END_STRUCT;

  TRF0_OUT  : struct
   // struct size 1;
    NoData : USINT;
  END_STRUCT;

END_TYPE
VAR_GLOBAL
  RF0_IN    {HIDDEN}: TRF0_IN;
  RF0_OUT   {HIDDEN}: TRF0_OUT;
  INE_STAT_RF0   {HIDDEN}: array [1..64] of USINT;
  INE_ERR_RF0    {HIDDEN}: array [1..64] of USINT;
END_VAR

// ------------------------- 
TYPE
  TRF2_IN  : struct
    // struct size 9;
    bondMap : array[1..64] of bool;
    NoData : USINT;
  END_STRUCT;

  TRF2_OUT  : struct
   // struct size 1;
    NoData : USINT;
  END_STRUCT;

END_TYPE
VAR_GLOBAL
  RF2_IN    {HIDDEN}: TRF2_IN;
  RF2_OUT   {HIDDEN}: TRF2_OUT;
  INE_STAT_RF2   {HIDDEN}: array [1..64] of USINT;
  INE_ERR_RF2    {HIDDEN}: array [1..64] of USINT;
END_VAR



