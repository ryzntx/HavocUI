.class public Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/navigation/halo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x24
    name = "BatteryTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;
    }
.end annotation


# static fields
.field public static final UNKNOWN_LEVEL:I = -0x1


# instance fields
.field health:I

.field level:I

.field percentStr:Ljava/lang/String;

.field plugType:I

.field plugged:Z

.field present:Z

.field status:I

.field technology:Ljava/lang/String;

.field temperature:I

.field testmode:Z

.field private final this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

.field voltage:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/navigation/halo;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->present:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->level:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->testmode:Z

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;)Lcom/android/systemui/statusbar/phone/navigation/halo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->testmode:Z

    if-eqz v0, :cond_1

    const-string v0, "testmode"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, 0x42c80000    # 100.0f

    const-string v3, "level"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->level:I

    const-string v0, "present"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->present:Z

    const-string v0, "plugged"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->plugType:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->plugType:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->plugged:Z

    const-string v0, "health"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->health:I

    const-string v0, "status"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->status:I

    const-string v0, "technology"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->technology:Ljava/lang/String;

    const-string v0, "voltage"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->voltage:I

    const-string v0, "temperature"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->temperature:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    const v3, 0x7f11003a    # type="string" name="accessibility_battery_level"

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->level:I

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v2, v1

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/navigation/halo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->access$L1000014(Lcom/android/systemui/statusbar/phone/navigation/halo;)Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/navigation/halo;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->invalidate()V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const-string v1, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->testmode:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo;

    new-instance v1, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;-><init>(Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/navigation/halo;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method protected shouldIndicateCharging()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->status:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->plugged:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->status:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method
