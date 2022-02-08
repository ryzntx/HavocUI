.class Lcom/android/systemui/CPUInfoService$1;
.super Landroid/content/BroadcastReceiver;
.source "CPUInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/CPUInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/CPUInfoService;


# direct methods
.method constructor <init>(Lcom/android/systemui/CPUInfoService;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/android/systemui/CPUInfoService$1;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 408
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "CPUInfoService"

    if-eqz p1, :cond_0

    const-string p1, "ACTION_SCREEN_ON "

    .line 409
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object p1, p0, Lcom/android/systemui/CPUInfoService$1;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {p1}, Lcom/android/systemui/CPUInfoService;->access$1000(Lcom/android/systemui/CPUInfoService;)V

    .line 411
    iget-object p0, p0, Lcom/android/systemui/CPUInfoService$1;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {p0}, Lcom/android/systemui/CPUInfoService;->access$1100(Lcom/android/systemui/CPUInfoService;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ACTION_SCREEN_OFF"

    .line 413
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object p1, p0, Lcom/android/systemui/CPUInfoService$1;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {p1}, Lcom/android/systemui/CPUInfoService;->access$1100(Lcom/android/systemui/CPUInfoService;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object p0, p0, Lcom/android/systemui/CPUInfoService$1;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {p0}, Lcom/android/systemui/CPUInfoService;->access$1200(Lcom/android/systemui/CPUInfoService;)V

    :cond_1
    :goto_0
    return-void
.end method
