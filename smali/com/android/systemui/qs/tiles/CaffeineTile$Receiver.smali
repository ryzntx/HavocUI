.class final Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "CaffeineTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CaffeineTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/CaffeineTile;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CaffeineTile;Lcom/android/systemui/qs/tiles/CaffeineTile$1;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;-><init>(Lcom/android/systemui/qs/tiles/CaffeineTile;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->access$500(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public init()V
    .locals 4

    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->access$400(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/CaffeineTile;->access$300(Lcom/android/systemui/qs/tiles/CaffeineTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 233
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 235
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->access$600(Lcom/android/systemui/qs/tiles/CaffeineTile;)V

    .line 236
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->access$200(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->access$200(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 238
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    :cond_1
    return-void
.end method
