.class public Lcom/android/systemui/statusbar/policy/BatteryBar;
.super Landroid/widget/RelativeLayout;
.source "BatteryBar.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;
    }
.end annotation


# instance fields
.field private isAnimating:Z

.field private isDark:Z

.field private mAttached:Z

.field mBatteryBar:Landroid/view/View;

.field mBatteryBarLayout:Landroid/widget/LinearLayout;

.field private mBatteryCharging:Z

.field private mBatteryLevel:I

.field private mBatteryLowColor:I

.field private mBatteryLowDarkColor:I

.field private mBlendColorsReversed:Z

.field private mBlendDarkColorsReversed:Z

.field mCharger:Landroid/view/View;

.field mChargerLayout:Landroid/widget/LinearLayout;

.field private mChargingColor:I

.field private mChargingDarkColor:I

.field private mColor:I

.field private mDarkColor:I

.field private mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUseChargingColor:Z

.field private shouldAnimateCharging:Z

.field vertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryBar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mAttached:Z

    .line 53
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z

    const/4 p2, 0x1

    .line 56
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->shouldAnimateCharging:Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->isAnimating:Z

    const/4 p3, -0x1

    .line 60
    iput p3, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mColor:I

    const/16 v0, -0x100

    .line 61
    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargingColor:I

    .line 62
    iput p3, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLowColor:I

    const/high16 p3, -0x67000000

    .line 63
    iput p3, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mDarkColor:I

    const v0, -0xf2b85f

    .line 64
    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargingDarkColor:I

    .line 65
    iput p3, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLowDarkColor:I

    .line 66
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mUseChargingColor:Z

    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBlendColorsReversed:Z

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBlendDarkColorsReversed:Z

    .line 70
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mHandler:Landroid/os/Handler;

    .line 81
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->vertical:Z

    .line 202
    new-instance p1, Lcom/android/systemui/statusbar/policy/BatteryBar$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/BatteryBar$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBar;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    iput p3, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    .line 134
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z

    .line 135
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->vertical:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BatteryBar;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BatteryBar;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->updateSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BatteryBar;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/BatteryBar;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/BatteryBar;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/BatteryBar;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/BatteryBar;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->setProgress(I)V

    return-void
.end method

.method private getColorForPercent(I)I
    .locals 2

    .line 317
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mUseChargingColor:Z

    if-eqz v0, :cond_1

    .line 318
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->isDark:Z

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargingDarkColor:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargingColor:I

    :goto_0
    return p0

    .line 320
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->isDark:Z

    if-eqz v0, :cond_2

    .line 321
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mDarkColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLowDarkColor:I

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBlendDarkColorsReversed:Z

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/util/custom/Utils;->getBlendColorForPercent(IIZI)I

    move-result p0

    return p0

    .line 324
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLowColor:I

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBlendColorsReversed:Z

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/util/custom/Utils;->getBlendColorForPercent(IIZI)I

    move-result p0

    return p0
.end method

.method private setProgress(I)V
    .locals 7

    .line 259
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->vertical:Z

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v5, v3

    int-to-double v3, p1

    mul-double/2addr v5, v3

    add-double/2addr v5, v1

    double-to-int v0, v5

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    .line 262
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 263
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v5, v3

    int-to-double v3, p1

    mul-double/2addr v5, v3

    add-double/2addr v5, v1

    double-to-int v0, v5

    .line 268
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    .line 269
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 270
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getColorForPercent(I)I

    move-result p1

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 276
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mCharger:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private updateSettings()V
    .locals 5

    .line 227
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_battery_bar_color"

    const/4 v2, -0x1

    .line 229
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mColor:I

    const-string v1, "statusbar_battery_bar_dark_color"

    const/high16 v3, -0x67000000

    .line 231
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mDarkColor:I

    const-string v1, "statusbar_battery_bar_charging_color"

    const/16 v4, -0x100

    .line 233
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargingColor:I

    const-string v1, "statusbar_battery_bar_charging_dark_color"

    const v4, -0xf2b85f

    .line 235
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargingDarkColor:I

    const-string v1, "statusbar_battery_bar_battery_low_color"

    .line 237
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLowColor:I

    const-string v1, "statusbar_battery_bar_battery_low_dark_color"

    .line 239
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLowDarkColor:I

    const-string v1, "statusbar_battery_bar_animate"

    const/4 v2, 0x0

    .line 242
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->shouldAnimateCharging:Z

    const-string v1, "statusbar_battery_bar_enable_charging_color"

    .line 245
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mUseChargingColor:Z

    const-string v1, "statusbar_battery_bar_blend_color_reverse"

    .line 247
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBlendColorsReversed:Z

    .line 250
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->shouldAnimateCharging:Z

    if-eqz v0, :cond_3

    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->start()V

    goto :goto_2

    .line 253
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->stop()V

    .line 255
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 0

    .line 313
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->isAnimating:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 148
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mAttached:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mAttached:Z

    .line 152
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    .line 153
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBar:Landroid/view/View;

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    .line 162
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 165
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    .line 167
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->vertical:Z

    if-eqz v3, :cond_0

    .line 168
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 171
    :cond_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    :goto_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mCharger:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mCharger:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 185
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBar;Landroid/os/Handler;)V

    .line 186
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;->observer()V

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->updateSettings()V

    .line 189
    :cond_1
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2

    .line 332
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    float-to-double p1, p2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 333
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->isDark:Z

    .line 335
    iget p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->setProgress(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 194
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 195
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mAttached:Z

    .line 197
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    :cond_0
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public start()V
    .locals 9

    .line 281
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->shouldAnimateCharging:Z

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->vertical:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_1

    .line 285
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getX()F

    move-result v5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getX()F

    move-result v6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    .line 286
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 287
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 288
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 289
    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 290
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 293
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 294
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 295
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 296
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 297
    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 298
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x1

    .line 301
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->isAnimating:Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 308
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->isAnimating:Z

    return-void
.end method
