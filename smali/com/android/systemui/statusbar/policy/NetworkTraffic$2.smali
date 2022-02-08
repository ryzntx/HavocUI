.class Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 280
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 282
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 283
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$fnJAIfRgZHV7yIMkMzV2OF3V2rk;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$fnJAIfRgZHV7yIMkMzV2OF3V2rk;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
