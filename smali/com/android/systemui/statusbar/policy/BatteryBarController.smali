.class public Lcom/android/systemui/statusbar/policy/BatteryBarController;
.super Landroid/widget/LinearLayout;
.source "BatteryBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;
    }
.end annotation


# instance fields
.field isAttached:Z

.field isVertical:Z

.field private mBatteryCharging:Z

.field private mBatteryLevel:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mLocation:I

.field mLocationToLookFor:I

.field mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mStyle:I

    .line 48
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocation:I

    .line 51
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocationToLookFor:I

    .line 53
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryCharging:Z

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    .line 112
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryBarController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBarController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p2, :cond_0

    const-string v0, "http://schemas.android.com/apk/res/com.android.systemui"

    const-string/jumbo v1, "viewLocation"

    .line 91
    invoke-interface {p2, v0, v1, p1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocationToLookFor:I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BatteryBarController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BatteryBarController;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/BatteryBarController;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/BatteryBarController;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryCharging:Z

    return p1
.end method


# virtual methods
.method public addBars()V
    .locals 9

    .line 150
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "statusbar_battery_bar_thickness"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    .line 153
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v4

    double-to-int v0, v0

    .line 155
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 157
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    if-eqz v2, :cond_0

    .line 158
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 160
    :cond_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 161
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    if-eqz v2, :cond_1

    .line 164
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 166
    :cond_1
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 167
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Prefs;->getLastBatteryLevel(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    .line 169
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mStyle:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    if-nez v0, :cond_2

    .line 170
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryBar;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryCharging:Z

    iget v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    const/high16 v5, 0x43340000    # 180.0f

    if-ne v0, v4, :cond_4

    .line 174
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryBar;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryCharging:Z

    iget v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    .line 175
    new-instance v3, Lcom/android/systemui/statusbar/policy/BatteryBar;

    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryCharging:Z

    iget v7, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    invoke-direct {v3, v4, v6, v7, v8}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    .line 177
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    if-eqz v4, :cond_3

    .line 178
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 179
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 184
    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 185
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_5

    .line 191
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryBar;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryCharging:Z

    iget v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    .line 192
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 193
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected isLocationValid(I)Z
    .locals 0

    .line 226
    iget p0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocationToLookFor:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 97
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 98
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    .line 101
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBarController;Landroid/os/Handler;)V

    .line 107
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;->observer()V

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->updateSettings()V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 136
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryBarController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController$2;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBarController;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->removeBars()V

    .line 131
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public removeBars()V
    .locals 0

    .line 199
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public updateSettings()V
    .locals 3

    .line 203
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_battery_bar_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mStyle:I

    .line 205
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_battery_bar"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "statusbar_battery_bar_location"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocation:I

    goto :goto_0

    .line 210
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocation:I

    .line 213
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocation:I

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isLocationValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->removeBars()V

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->addBars()V

    goto :goto_1

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->removeBars()V

    :goto_1
    return-void
.end method
