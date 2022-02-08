.class public Lcom/android/keyguard/CarrierTextController;
.super Ljava/lang/Object;
.source "CarrierTextController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;,
        Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;,
        Lcom/android/keyguard/CarrierTextController$Builder;,
        Lcom/android/keyguard/CarrierTextController$StatusMode;
    }
.end annotation


# instance fields
.field private mActiveMobileDataSubscription:I

.field private final mBgHandler:Landroid/os/Handler;

.field protected final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

.field private mContext:Landroid/content/Context;

.field private final mIsEmergencyCallCapable:Z

.field protected mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSeparator:Ljava/lang/CharSequence;

.field private mShowAirplaneMode:Z

.field private mShowMissingSim:Z

.field private mSimErrorState:[Z

.field private final mSimSlotsNumber:I

.field private mTelephonyCapable:Z

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v0, Lcom/android/keyguard/CarrierTextController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierTextController$1;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 93
    new-instance v0, Lcom/android/keyguard/CarrierTextController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierTextController$2;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 133
    new-instance v0, Lcom/android/keyguard/CarrierTextController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierTextController$3;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 167
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    .line 168
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mIsEmergencyCallCapable:Z

    .line 170
    iput-boolean p3, p0, Lcom/android/keyguard/CarrierTextController;->mShowAirplaneMode:Z

    .line 171
    iput-boolean p4, p0, Lcom/android/keyguard/CarrierTextController;->mShowMissingSim:Z

    const-string/jumbo p3, "wifi"

    .line 173
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 174
    iput-object p2, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    .line 175
    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 176
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    .line 177
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mSimErrorState:[Z

    .line 178
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mMainHandler:Landroid/os/Handler;

    .line 179
    new-instance p1, Landroid/os/Handler;

    sget-object p2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mBgHandler:Landroid/os/Handler;

    .line 180
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 181
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mBgHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/keyguard/-$$Lambda$CarrierTextController$LDahO04Jhi3ephJWS_by3x0LKJY;

    invoke-direct {p2, p0}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$LDahO04Jhi3ephJWS_by3x0LKJY;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/CarrierTextController;)Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/CarrierTextController;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/android/keyguard/CarrierTextController;->mTelephonyCapable:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/CarrierTextController;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/android/keyguard/CarrierTextController;->mTelephonyCapable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/CarrierTextController;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/CarrierTextController;I)Lcom/android/keyguard/CarrierTextController$StatusMode;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->getStatusForIccState(I)Lcom/android/keyguard/CarrierTextController$StatusMode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/CarrierTextController;)[Z
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mSimErrorState:[Z

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/keyguard/CarrierTextController;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/keyguard/CarrierTextController;->mActiveMobileDataSubscription:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/CarrierTextController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 551
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 552
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    return-object p1

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private getAirplaneModeMessage()Ljava/lang/String;
    .locals 1

    .line 417
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mShowAirplaneMode:Z

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->airplane_mode:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 429
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->getStatusForIccState(I)Lcom/android/keyguard/CarrierTextController$StatusMode;

    move-result-object p1

    .line 430
    sget-object v0, Lcom/android/keyguard/CarrierTextController$4;->$SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object p2, v0

    goto :goto_0

    .line 473
    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_error_message_short:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 472
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 468
    :pswitch_2
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_puk_locked_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 467
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 462
    :pswitch_3
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_locked_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 461
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 451
    :pswitch_4
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_permanent_disabled_sim_message_short:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 450
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 441
    :pswitch_5
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->keyguard_network_locked_message:I

    .line 442
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 441
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    :pswitch_6
    const-string p2, ""

    :goto_0
    :pswitch_7
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getMissingSimMessage()Ljava/lang/String;
    .locals 1

    .line 412
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mShowMissingSim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mTelephonyCapable:Z

    if-eqz v0, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getStatusForIccState(I)Lcom/android/keyguard/CarrierTextController$StatusMode;
    .locals 1

    .line 519
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 520
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-eq p1, v0, :cond_1

    const/4 p0, 0x7

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 p1, 0x4

    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 546
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 544
    :pswitch_0
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 540
    :pswitch_1
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 532
    :pswitch_2
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 538
    :pswitch_3
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->Normal:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 530
    :pswitch_4
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 536
    :pswitch_5
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 534
    :pswitch_6
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 528
    :pswitch_7
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 542
    :pswitch_8
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 193
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private handleSetListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 2

    .line 250
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 252
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    .line 253
    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$CarrierTextController$Q9wwkxQ080xCMh0FoQlLdgAfhSI;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$Q9wwkxQ080xCMh0FoQlLdgAfhSI;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 257
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 p1, 0x400000

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/-$$Lambda$CarrierTextController$oi57qYsuU97hQX_k3GdwhheueLc;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$oi57qYsuU97hQX_k3GdwhheueLc;-><init>(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 266
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    .line 267
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$CarrierTextController$DU9JkyLlu7BQSyhrdUqIiohEMiE;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$DU9JkyLlu7BQSyhrdUqIiohEMiE;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, v1}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 269
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_0
    return-void
.end method

.method private static joinNotEmpty(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 569
    array-length v0, p1

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 571
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 573
    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 574
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 575
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 577
    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 580
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$handleSetListening$1()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic lambda$handleSetListening$2(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 4

    .line 261
    new-instance v0, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;-><init>(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[I)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;->updateCarrierInfo(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    return-void
.end method

.method private synthetic lambda$handleSetListening$3()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    invoke-direct {p0, v0}, Lcom/android/keyguard/CarrierTextController;->handleSetListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$postToCallback$5(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V
    .locals 0

    .line 403
    invoke-interface {p0, p1}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;->updateCarrierInfo(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    return-void
.end method

.method private synthetic lambda$setListening$4(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 0

    .line 280
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->handleSetListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    return-void
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 489
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mIsEmergencyCallCapable:Z

    if-eqz v0, :cond_0

    .line 490
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {p1, p2, p0}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private makeCarrierStringOnLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 501
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 502
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 504
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->keyguard_carrier_name_with_sim_locked_template:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    if-eqz v2, :cond_2

    return-object p2

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[IZ)Ljava/lang/CharSequence;
    .locals 5

    const/16 v0, 0x8

    const-string v1, ""

    .line 208
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/CarrierTextController;->getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 211
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 212
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mSimErrorState:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x10402f2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    .line 218
    invoke-static {v0, p1, p0}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 222
    :cond_1
    aget v2, p3, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 223
    aget v2, p3, v1

    .line 225
    aget-object v3, p2, v2

    iget-object v4, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_1

    .line 230
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method


# virtual methods
.method protected getSubscriptionInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFilteredSubscriptionInfo(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$handleSetListening$1$CarrierTextController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->lambda$handleSetListening$1()V

    return-void
.end method

.method public synthetic lambda$handleSetListening$3$CarrierTextController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->lambda$handleSetListening$3()V

    return-void
.end method

.method public synthetic lambda$new$0$CarrierTextController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->lambda$new$0()V

    return-void
.end method

.method public synthetic lambda$setListening$4$CarrierTextController(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->lambda$setListening$4(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    return-void
.end method

.method protected postToCallback(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    if-eqz v0, :cond_0

    .line 403
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$CarrierTextController$5nEYjT7ZyAro48Qi-bsR2yyNFwM;

    invoke-direct {v1, v0, p1}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$5nEYjT7ZyAro48Qi-bsR2yyNFwM;-><init>(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$CarrierTextController$C6go0e-jA3BYgQhMyia20ELR8OQ;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$C6go0e-jA3BYgQhMyia20ELR8OQ;-><init>(Lcom/android/keyguard/CarrierTextController;Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected updateCarrierText()V
    .locals 13

    .line 291
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierTextController;->getSubscriptionInfo()Ljava/util/List;

    move-result-object v0

    .line 293
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 294
    new-array v6, v1, [I

    .line 297
    iget v2, p0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    .line 298
    :goto_0
    iget v5, p0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    if-ge v4, v5, :cond_0

    const/4 v5, -0x1

    .line 299
    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 301
    :cond_0
    new-array v4, v1, [Ljava/lang/CharSequence;

    const/4 v5, 0x1

    move v7, v3

    move v9, v7

    move v8, v5

    :goto_1
    const-string v10, ""

    if-ge v7, v1, :cond_4

    .line 305
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    .line 306
    aput-object v10, v4, v7

    .line 307
    aput v11, v6, v7

    .line 308
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v10

    aput v7, v2, v10

    .line 309
    iget-object v10, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10, v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)I

    move-result v10

    .line 310
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v12}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v12

    .line 311
    invoke-direct {p0, v10, v12}, Lcom/android/keyguard/CarrierTextController;->getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 317
    aput-object v12, v4, v7

    move v8, v3

    :cond_1
    const/4 v12, 0x5

    if-ne v10, v12, :cond_3

    .line 320
    iget-object v10, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v10, v10, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/ServiceState;

    if-eqz v10, :cond_3

    .line 321
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v11

    if-nez v11, :cond_3

    .line 324
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v10

    const/16 v11, 0x12

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 325
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 326
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 327
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    :cond_2
    move v9, v5

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    if-eqz v8, :cond_a

    if-nez v9, :cond_a

    if-eqz v1, :cond_5

    .line 347
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getMissingSimMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 346
    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_4

    .line 354
    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 355
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v0, "android.telephony.extra.SHOW_SPN"

    .line 360
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "android.telephony.extra.SPN"

    .line 361
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v10

    :goto_2
    const-string v7, "android.telephony.extra.SHOW_PLMN"

    .line 363
    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "android.telephony.extra.PLMN"

    .line 364
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 367
    :cond_7
    invoke-static {v10, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v0, v10

    goto :goto_3

    .line 370
    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v10, v0, v1}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 373
    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getMissingSimMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 377
    :cond_a
    :goto_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v0, v4}, Lcom/android/keyguard/CarrierTextController;->joinNotEmpty(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 379
    :cond_b
    invoke-direct {p0, v7, v4, v2, v8}, Lcom/android/keyguard/CarrierTextController;->updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[IZ)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v9, :cond_c

    .line 385
    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 386
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getAirplaneModeMessage()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v7, v5

    goto :goto_5

    :cond_c
    move v7, v3

    move-object v3, v0

    .line 390
    :goto_5
    new-instance v0, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;

    xor-int/2addr v5, v8

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;-><init>(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[IZ)V

    .line 396
    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierTextController;->postToCallback(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    return-void
.end method
