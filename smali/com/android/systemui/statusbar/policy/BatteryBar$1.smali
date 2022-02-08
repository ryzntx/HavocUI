.class Lcom/android/systemui/statusbar/policy/BatteryBar$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryBar;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 205
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_2

    .line 208
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    const-string v0, "level"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$202(Lcom/android/systemui/statusbar/policy/BatteryBar;I)I

    .line 209
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    const-string v0, "status"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$302(Lcom/android/systemui/statusbar/policy/BatteryBar;Z)Z

    .line 210
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$300(Lcom/android/systemui/statusbar/policy/BatteryBar;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$200(Lcom/android/systemui/statusbar/policy/BatteryBar;)I

    move-result p1

    if-ge p1, v1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->start()V

    goto :goto_0

    .line 213
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->stop()V

    .line 215
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$200(Lcom/android/systemui/statusbar/policy/BatteryBar;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$400(Lcom/android/systemui/statusbar/policy/BatteryBar;I)V

    goto :goto_1

    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 216
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 217
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->stop()V

    goto :goto_1

    :cond_3
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 218
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 219
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$300(Lcom/android/systemui/statusbar/policy/BatteryBar;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$200(Lcom/android/systemui/statusbar/policy/BatteryBar;)I

    move-result p1

    if-ge p1, v1, :cond_4

    .line 220
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->start()V

    :cond_4
    :goto_1
    return-void
.end method
