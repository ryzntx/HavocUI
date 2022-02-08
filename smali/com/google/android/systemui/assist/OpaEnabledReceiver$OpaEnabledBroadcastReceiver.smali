.class Lcom/google/android/systemui/assist/OpaEnabledReceiver$OpaEnabledBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpaEnabledReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/OpaEnabledReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpaEnabledBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/OpaEnabledReceiver;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/assist/OpaEnabledReceiver;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$OpaEnabledBroadcastReceiver;->this$0:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/assist/OpaEnabledReceiver;Lcom/google/android/systemui/assist/OpaEnabledReceiver$1;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/OpaEnabledReceiver$OpaEnabledBroadcastReceiver;-><init>(Lcom/google/android/systemui/assist/OpaEnabledReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.systemui.OPA_ENABLED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "OPA_ENABLED"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-string v2, "systemui.google.opa_enabled"

    invoke-static {v0, v2, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.google.android.systemui.OPA_USER_ENABLED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$OpaEnabledBroadcastReceiver;->this$0:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    invoke-static {v0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->access$400(Lcom/google/android/systemui/assist/OpaEnabledReceiver;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v3, "systemui.google.opa_user_enabled"

    const-string v4, "OPA_USER_ENABLED"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-interface {v0, v3, p2, v1}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "OpaEnabledReceiver"

    const-string v1, "RemoteException on OPA_USER_ENABLED"

    .line 124
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$OpaEnabledBroadcastReceiver;->this$0:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    invoke-static {p2, p1}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->access$200(Lcom/google/android/systemui/assist/OpaEnabledReceiver;Landroid/content/Context;)V

    .line 128
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver$OpaEnabledBroadcastReceiver;->this$0:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->access$300(Lcom/google/android/systemui/assist/OpaEnabledReceiver;Landroid/content/Context;)V

    return-void
.end method
