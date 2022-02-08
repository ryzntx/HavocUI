.class Lcom/google/android/systemui/assist/AssistManagerGoogle$3;
.super Ljava/lang/Object;
.source "AssistManagerGoogle.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler$AssistantPresenceChangeListener;


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

    .line 93
    iput-object p1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$3;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAssistantPresenceChanged(Z)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$3;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->access$200(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$3;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->access$400(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/assist/AssistManagerGoogle$3$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle$3$1;-><init>(Lcom/google/android/systemui/assist/AssistManagerGoogle$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    iget-object v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$3;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->access$300(Lcom/google/android/systemui/assist/AssistManagerGoogle;)Lcom/android/systemui/assist/AssistManager$UiController;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;->setGoogleAssistant(Z)V

    .line 104
    iget-object v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$3;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-static {v0, p1}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->access$202(Lcom/google/android/systemui/assist/AssistManagerGoogle;Z)Z

    .line 106
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$3;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->access$502(Lcom/google/android/systemui/assist/AssistManagerGoogle;Z)Z

    return-void
.end method
