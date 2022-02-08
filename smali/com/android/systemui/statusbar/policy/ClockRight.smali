.class public Lcom/android/systemui/statusbar/policy/ClockRight;
.super Lcom/android/systemui/statusbar/policy/Clock;
.source "ClockRight.java"


# instance fields
.field private mClockVisibleByPolicy:Z

.field private mClockVisibleByUser:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/ClockRight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/ClockRight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ClockRight;->mClockVisibleByPolicy:Z

    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ClockRight;->mClockVisibleByUser:Z

    return-void
.end method

.method private synthetic lambda$updateClockVisibility$0()V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->autoHideClock()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$updateClockVisibility$0$ClockRight()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ClockRight;->lambda$updateClockVisibility$0()V

    return-void
.end method

.method public setClockVisibilityByPolicy(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ClockRight;->mClockVisibleByPolicy:Z

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockRight;->updateClockVisibility()V

    return-void
.end method

.method protected updateClockVisibility()V
    .locals 4

    .line 55
    iget v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockStyle:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowClock:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ClockRight;->mClockVisibleByPolicy:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ClockRight;->mClockVisibleByUser:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 58
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->autoHideHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :catch_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockAutoHide:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->autoHideHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$ClockRight$dnY7gkUhPfhZZd88b0SGBo_sdok;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ClockRight$dnY7gkUhPfhZZd88b0SGBo_sdok;-><init>(Lcom/android/systemui/statusbar/policy/ClockRight;)V

    iget p0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDuration:I

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
