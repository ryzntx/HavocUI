.class Lcom/android/systemui/qs/tiles/LocaleTile$2;
.super Landroid/content/BroadcastReceiver;
.source "LocaleTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/LocaleTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocaleTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/LocaleTile;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocaleTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocaleTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/LocaleTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocaleTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/LocaleTile;->access$300(Lcom/android/systemui/qs/tiles/LocaleTile;)V

    .line 152
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocaleTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocaleTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    :cond_0
    return-void
.end method
