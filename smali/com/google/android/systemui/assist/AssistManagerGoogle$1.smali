.class Lcom/google/android/systemui/assist/AssistManagerGoogle$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "AssistManagerGoogle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/AssistManagerGoogle;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/assist/AssistHandleBehaviorController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ldagger/Lazy;Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;Lcom/android/systemui/assist/AssistLogger;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/google/android/systemui/assist/OpaEnabledDispatcher;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/NavigationModeController;Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$1;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$1;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-static {p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->access$000(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->onUserSwitching(I)V

    return-void
.end method
