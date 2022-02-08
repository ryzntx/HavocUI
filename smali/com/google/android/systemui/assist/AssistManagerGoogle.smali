.class public Lcom/google/android/systemui/assist/AssistManagerGoogle;
.super Lcom/android/systemui/assist/AssistManager;
.source "AssistManagerGoogle.java"


# instance fields
.field private final mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

.field private mCheckAssistantStatus:Z

.field private mGoogleIsAssistant:Z

.field private mNavigationMode:I

.field private final mOpaEnabledReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

.field private mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/assist/AssistHandleBehaviorController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ldagger/Lazy;Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;Lcom/android/systemui/assist/AssistLogger;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/google/android/systemui/assist/OpaEnabledDispatcher;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/NavigationModeController;Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;Landroid/os/Handler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/AssistUtils;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;",
            "Lcom/android/systemui/assist/AssistLogger;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/google/android/systemui/assist/OpaEnabledDispatcher;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p16

    .line 72
    invoke-direct/range {p0 .. p11}, Lcom/android/systemui/assist/AssistManager;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/assist/AssistHandleBehaviorController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ldagger/Lazy;Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;Lcom/android/systemui/assist/AssistLogger;)V

    const/4 v2, 0x1

    .line 42
    iput-boolean v2, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    move-object/from16 v2, p17

    .line 76
    iput-object v2, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiHandler:Landroid/os/Handler;

    move-object v2, p10

    .line 77
    iput-object v2, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    .line 78
    new-instance v2, Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    iget-object v3, v0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    move-object/from16 v4, p12

    invoke-direct {v2, v3, v4}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object v2, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mOpaEnabledReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    move-object/from16 v2, p13

    .line 79
    invoke-virtual {p0, v2}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->addOpaEnabledListener(Lcom/google/android/systemui/assist/OpaEnabledListener;)V

    .line 80
    new-instance v2, Lcom/google/android/systemui/assist/AssistManagerGoogle$1;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle$1;-><init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V

    move-object/from16 v3, p14

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 86
    new-instance v2, Lcom/google/android/systemui/assist/AssistManagerGoogle$2;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle$2;-><init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V

    move-object/from16 v3, p15

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    .line 92
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    .line 93
    new-instance v2, Lcom/google/android/systemui/assist/AssistManagerGoogle$3;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle$3;-><init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->registerAssistantPresenceChangeListener(Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler$AssistantPresenceChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Lcom/google/android/systemui/assist/OpaEnabledReceiver;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mOpaEnabledReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/android/systemui/assist/AssistManagerGoogle;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNavigationMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mGoogleIsAssistant:Z

    return p0
.end method

.method static synthetic access$202(Lcom/google/android/systemui/assist/AssistManagerGoogle;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mGoogleIsAssistant:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Lcom/android/systemui/assist/AssistManager$UiController;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$502(Lcom/google/android/systemui/assist/AssistManagerGoogle;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Lcom/android/systemui/assist/AssistLogger;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Lcom/android/systemui/assist/AssistLogger;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->requestAssistHandles()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Ldagger/Lazy;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mSysUiState:Ldagger/Lazy;

    return-object p0
.end method


# virtual methods
.method public addOpaEnabledListener(Lcom/google/android/systemui/assist/OpaEnabledListener;)V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mOpaEnabledReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->addOpaEnabledListener(Lcom/google/android/systemui/assist/OpaEnabledListener;)V

    return-void
.end method

.method public dispatchOpaEnabledState()V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mOpaEnabledReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->dispatchOpaEnabledState()V

    return-void
.end method

.method public onGestureCompletion(F)V
    .locals 1

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    .line 167
    iget-object v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    invoke-interface {v0, p1}, Lcom/android/systemui/assist/AssistManager$UiController;->onGestureCompletion(F)V

    return-void
.end method

.method public onInvocationProgress(IF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    .line 155
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->requestAssistantPresenceUpdate()V

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    :cond_2
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 160
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager$UiController;->onInvocationProgress(IF)V

    :cond_3
    return-void
.end method

.method protected registerVoiceInteractionSessionListener()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    new-instance v1, Lcom/google/android/systemui/assist/AssistManagerGoogle$4;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle$4;-><init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    return-void
.end method

.method public shouldShowOrb()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
