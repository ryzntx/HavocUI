.class Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;
.super Ljava/lang/Object;
.source "BatteryMeterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field curLevel:I

.field dummy:Landroid/content/Intent;

.field incr:I

.field saveLevel:I

.field savePlugged:I

.field private final this$0:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->curLevel:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->incr:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->level:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->saveLevel:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->plugType:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->savePlugged:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->dummy:Landroid/content/Intent;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;)Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->curLevel:I

    if-gez v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->testmode:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->dummy:Landroid/content/Intent;

    const-string v2, "level"

    iget v3, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->saveLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->dummy:Landroid/content/Intent;

    const-string v2, "plugged"

    iget v3, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->savePlugged:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->dummy:Landroid/content/Intent;

    const-string v2, "testmode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->access$0(Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;)Lcom/android/systemui/statusbar/phone/navigation/halo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->dummy:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->testmode:Z

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->dummy:Landroid/content/Intent;

    const-string v3, "level"

    iget v4, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->curLevel:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->dummy:Landroid/content/Intent;

    const-string v3, "plugged"

    iget v4, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->incr:I

    if-lez v4, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->dummy:Landroid/content/Intent;

    const-string v2, "testmode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->curLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->incr:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->curLevel:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->curLevel:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->incr:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->incr:I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker$100000000;->this$0:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->access$0(Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;)Lcom/android/systemui/statusbar/phone/navigation/halo;

    move-result-object v0

    const/16 v1, 0xc8

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/navigation/halo;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
