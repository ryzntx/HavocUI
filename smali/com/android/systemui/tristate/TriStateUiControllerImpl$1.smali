.class Lcom/android/systemui/tristate/TriStateUiControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "TriStateUiControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tristate/TriStateUiControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tristate/TriStateUiControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/tristate/TriStateUiControllerImpl;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl$1;->this$0:Lcom/android/systemui/tristate/TriStateUiControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 101
    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl$1;->this$0:Lcom/android/systemui/tristate/TriStateUiControllerImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->access$002(Lcom/android/systemui/tristate/TriStateUiControllerImpl;Z)Z

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 103
    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl$1;->this$0:Lcom/android/systemui/tristate/TriStateUiControllerImpl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->access$002(Lcom/android/systemui/tristate/TriStateUiControllerImpl;Z)Z

    goto :goto_0

    :cond_1
    const-string p2, "android.media.RINGER_MODE_CHANGED"

    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 105
    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl$1;->this$0:Lcom/android/systemui/tristate/TriStateUiControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->access$100(Lcom/android/systemui/tristate/TriStateUiControllerImpl;)V

    :cond_2
    :goto_0
    return-void
.end method
