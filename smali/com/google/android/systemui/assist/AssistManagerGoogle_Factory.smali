.class public final Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;
.super Ljava/lang/Object;
.source "AssistManagerGoogle_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/AssistManagerGoogle;",
        ">;"
    }
.end annotation


# instance fields
.field private final assistLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final assistUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;"
        }
    .end annotation
.end field

.field private final assistantPresenceHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final commandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final configurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final controllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultUiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;",
            ">;"
        }
    .end annotation
.end field

.field private final handleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field private final opaEnabledDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/OpaEnabledDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final overviewProxyServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private final phoneStateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final sysUiStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/OpaEnabledDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 81
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->controllerProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 82
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 83
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->assistUtilsProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 84
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->handleControllerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 85
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 86
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->phoneStateMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 87
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 88
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 89
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->sysUiStateProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 90
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->defaultUiControllerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 91
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->assistLoggerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 92
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 93
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->opaEnabledDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 94
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 95
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 96
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->assistantPresenceHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 97
    iput-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->handlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/OpaEnabledDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    .line 178
    new-instance v18, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v18
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/AssistManagerGoogle;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/OpaEnabledDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/google/android/systemui/assist/AssistManagerGoogle;"
        }
    .end annotation

    .line 140
    new-instance v18, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    move-object/from16 v0, v18

    .line 141
    invoke-interface/range {p0 .. p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 142
    invoke-interface/range {p1 .. p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 143
    invoke-interface/range {p2 .. p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/AssistUtils;

    .line 144
    invoke-interface/range {p3 .. p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/assist/AssistHandleBehaviorController;

    .line 145
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue;

    .line 146
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 147
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/OverviewProxyService;

    .line 148
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 149
    invoke-static/range {p8 .. p8}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v9

    .line 150
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

    .line 151
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/assist/AssistLogger;

    .line 152
    invoke-interface/range {p11 .. p11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 153
    invoke-interface/range {p12 .. p12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/systemui/assist/OpaEnabledDispatcher;

    .line 154
    invoke-interface/range {p13 .. p13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 155
    invoke-interface/range {p14 .. p14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    .line 156
    invoke-interface/range {p15 .. p15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    .line 157
    invoke-interface/range {p16 .. p16}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Handler;

    invoke-direct/range {v0 .. v17}, Lcom/google/android/systemui/assist/AssistManagerGoogle;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/assist/AssistHandleBehaviorController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ldagger/Lazy;Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;Lcom/android/systemui/assist/AssistLogger;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/google/android/systemui/assist/OpaEnabledDispatcher;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/NavigationModeController;Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;Landroid/os/Handler;)V

    return-object v18
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/assist/AssistManagerGoogle;
    .locals 19

    move-object/from16 v0, p0

    .line 102
    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->controllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->assistUtilsProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->handleControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->phoneStateMonitorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->sysUiStateProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->defaultUiControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->assistLoggerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->opaEnabledDispatcherProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->assistantPresenceHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v0, v0, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->handlerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v0

    move-object/from16 v1, v18

    invoke-static/range {v1 .. v17}, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/AssistManagerGoogle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle_Factory;->get()Lcom/google/android/systemui/assist/AssistManagerGoogle;

    move-result-object p0

    return-object p0
.end method
