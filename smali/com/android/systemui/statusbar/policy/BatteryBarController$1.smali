.class Lcom/android/systemui/statusbar/policy/BatteryBarController$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryBarController;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    const-string v1, "level"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->access$102(Lcom/android/systemui/statusbar/policy/BatteryBarController;I)I

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    const-string v1, "status"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->access$202(Lcom/android/systemui/statusbar/policy/BatteryBarController;Z)Z

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->access$100(Lcom/android/systemui/statusbar/policy/BatteryBarController;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/Prefs;->setLastBatteryLevel(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
