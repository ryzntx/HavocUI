.class public Lcom/android/systemui/statusbar/phone/navigation/halo;
.super Landroid/view/View;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;,
        Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;,
        Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;,
        Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;
    }
.end annotation


# static fields
.field public static final ACTION_LEVEL_TEST:Ljava/lang/String; = "com.android.systemui.BATTERY_LEVEL_TEST"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationsEnabled:Z

.field protected mAttached:Z

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;

.field private mBatteryMeterDrawable:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

.field private mBatteryStateRegistar:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar;

.field private final mCriticalLevel:I

.field private mDarkModeBackgroundColor:I

.field private mDarkModeFillColor:I

.field private mDemoMode:Z

.field protected mDemoTracker:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

.field private mHeight:I

.field private mIconTint:I

.field private mLightModeBackgroundColor:I

.field private mLightModeFillColor:I

.field protected mMeterMode:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

.field private mPowerSaveEnabled:Z

.field protected mShowPercent:Z

.field protected mTracker:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

.field private mWarningString:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static final constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "com.android.systemui.BatteryMeterView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo;->TAG:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/navigation/halo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;-><init>(Lcom/android/systemui/statusbar/phone/navigation/halo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mDemoTracker:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    new-instance v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;-><init>(Lcom/android/systemui/statusbar/phone/navigation/halo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mTracker:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mIconTint:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const v2, 0x7f030008    # type="array" name="batterymeter_color_levels"

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->setAnimationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$L1000001(Lcom/android/systemui/statusbar/phone/navigation/halo;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mHeight:I

    return v0
.end method

.method static synthetic access$L1000002(Lcom/android/systemui/statusbar/phone/navigation/halo;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mWidth:I

    return v0
.end method

.method static synthetic access$L1000003(Lcom/android/systemui/statusbar/phone/navigation/halo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mWarningString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000004(Lcom/android/systemui/statusbar/phone/navigation/halo;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mCriticalLevel:I

    return v0
.end method

.method static synthetic access$L1000005(Lcom/android/systemui/statusbar/phone/navigation/halo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mAnimationsEnabled:Z

    return v0
.end method

.method static synthetic access$L1000014(Lcom/android/systemui/statusbar/phone/navigation/halo;)Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryMeterDrawable:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    return-object v0
.end method

.method static synthetic access$L1000015(Lcom/android/systemui/statusbar/phone/navigation/halo;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mIconTint:I

    return v0
.end method

.method static synthetic access$S1000001(Lcom/android/systemui/statusbar/phone/navigation/halo;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mHeight:I

    return-void
.end method

.method static synthetic access$S1000002(Lcom/android/systemui/statusbar/phone/navigation/halo;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mWidth:I

    return-void
.end method

.method static synthetic access$S1000003(Lcom/android/systemui/statusbar/phone/navigation/halo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mWarningString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000005(Lcom/android/systemui/statusbar/phone/navigation/halo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mAnimationsEnabled:Z

    return-void
.end method

.method static synthetic access$S1000014(Lcom/android/systemui/statusbar/phone/navigation/halo;Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryMeterDrawable:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    return-void
.end method

.method static synthetic access$S1000015(Lcom/android/systemui/statusbar/phone/navigation/halo;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mIconTint:I

    return-void
.end method

.method private getBackgroundColor(F)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mDarkModeBackgroundColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const-string v0, "#FF000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "#FFFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getFillColor(F)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mLightModeFillColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mDarkModeFillColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected createBatteryMeterDrawable(Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;)Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_TEXT:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_GONE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/navigation/halo$AllInOneBatteryMeterDrawable;-><init>(Lcom/android/systemui/statusbar/phone/navigation/halo;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;)V

    goto :goto_0
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mDemoMode:Z

    if-nez v0, :cond_1

    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mDemoMode:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mDemoTracker:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mTracker:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->level:I

    iput v1, v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->level:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mDemoTracker:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mTracker:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->plugged:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->plugged:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mDemoMode:Z

    if-eqz v0, :cond_2

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mDemoMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->postInvalidate()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mDemoMode:Z

    if-eqz v0, :cond_0

    const-string v0, "battery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "level"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "plugged"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mDemoTracker:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v3, 0x64

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->level:I

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mDemoTracker:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->plugged:Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->postInvalidate()V

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mTracker:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mTracker:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryStateRegistar:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryStateRegistar:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mAttached:Z

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    return-void
.end method

.method public onBatteryLevelChanged(ZIZZ)V
    .locals 0

    return-void
.end method

.method public onBatteryStyleChanged(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    move v0, v1

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_ICON_PORTRAIT:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v1, v0

    move-object v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->setMode(Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mShowPercent:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->invalidate()V

    return-void

    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_CIRCLE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_GONE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_ICON_LANDSCAPE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_ICON_FAYAH:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_TEXT:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDetachedFromWindow()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mAttached:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mTracker:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryStateRegistar:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryStateRegistar:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryMeterDrawable:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mDemoMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mDemoTracker:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryMeterDrawable:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    invoke-interface {v1, p1, v0}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;->onDraw(Landroid/graphics/Canvas;Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mTracker:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mMeterMode:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    sget-object v3, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_TEXT:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/android/systemui/statusbar/phone/navigation/halo;->onSizeChanged(IIII)V

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/navigation/halo;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 1

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 1

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mHeight:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mWidth:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryMeterDrawable:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryMeterDrawable:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;->onSizeChanged(IIII)V

    :cond_0
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mAnimationsEnabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mAnimationsEnabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mAnimationsEnabled:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    move v1, v0

    :goto_1
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->invalidate()V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryController:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;

    return-void
.end method

.method public setBatteryStateRegistar(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/BatteryStateRegistar;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryStateRegistar:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryStateRegistar:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;)V

    :cond_0
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryMeterDrawable:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getBackgroundColor(F)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/navigation/halo;->getFillColor(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryMeterDrawable:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    invoke-interface {v2, v0, v1}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;->setDarkIntensity(II)V

    :cond_0
    return-void
.end method

.method public setKolor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryMeterDrawable:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x7f

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryMeterDrawable:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    invoke-interface {v1, v0, p1}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;->setDarkIntensity(II)V

    :cond_0
    return-void
.end method

.method public setMode(Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;",
            ")V"
        }
    .end annotation

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mMeterMode:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mMeterMode:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mDemoMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mDemoTracker:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    :goto_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_GONE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_TEXT:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    if-ne p1, v1, :cond_3

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/navigation/halo;->setVisibility(I)V

    const/4 v0, 0x0

    check-cast v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryMeterDrawable:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mTracker:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryMeterDrawable:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryMeterDrawable:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;->onDispose()V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/navigation/halo;->createBatteryMeterDrawable(Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;)Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/navigation/halo;->mBatteryMeterDrawable:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;->present:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/navigation/halo;->invalidate()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/navigation/halo;->setVisibility(I)V

    goto :goto_0
.end method
