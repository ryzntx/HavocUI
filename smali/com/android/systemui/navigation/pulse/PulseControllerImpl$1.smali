.class Lcom/android/systemui/navigation/pulse/PulseControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "PulseControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigation/pulse/PulseControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$1;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$1;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$002(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Z)Z

    .line 117
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$1;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$100(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object p2, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$1;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    const-string v0, "power"

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    .line 119
    invoke-static {p2, p1}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$202(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Z)Z

    .line 121
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$1;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$100(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, -0x1

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 124
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 126
    iget-object p2, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$1;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {p2, p1}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$300(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;I)Z

    move-result p1

    .line 127
    iget-object p2, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$1;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {p2}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$400(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Z

    move-result p2

    if-eq p2, p1, :cond_3

    .line 128
    iget-object p2, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$1;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {p2, p1}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$402(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Z)Z

    .line 129
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$1;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$100(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V

    :cond_3
    :goto_0
    return-void
.end method
