.class public Lorg/lineageos/internal/statusbar/NetworkTraffic;
.super Landroid/widget/TextView;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lineageos/internal/statusbar/NetworkTraffic$1;,
        Lorg/lineageos/internal/statusbar/NetworkTraffic$2;,
        Lorg/lineageos/internal/statusbar/NetworkTraffic$3;,
        Lorg/lineageos/internal/statusbar/NetworkTraffic$4;,
        Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;
    }
.end annotation


# instance fields
.field private mAutoHideThreshold:J

.field private mDarkModeFillColor:I

.field private mDarkReceiver:Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconTint:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastRxBytesTotal:J

.field private mLastTxBytesTotal:J

.field private mLastUpdateTime:J

.field private mLightModeFillColor:I

.field private mMode:I

.field private mNetworkTrafficIsVisible:Z

.field private mObserver:Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;

.field private mRxKbps:J

.field private mShowUnits:Z

.field private mTextSizeMulti:I

.field private mTextSizeSingle:I

.field private mTrafficHandler:Landroid/os/Handler;

.field private mTxKbps:J

.field private mUnits:I

.field private mVisibilityReceiver:Lorg/lineageos/internal/statusbar/LineageStatusBarItem$VisibilityReceiver;


# direct methods
.method static synthetic -get0(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    return-wide v0
.end method

.method static synthetic -get1(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I
    .locals 1

    iget v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTextSizeMulti:I

    return v0
.end method

.method static synthetic -get11(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I
    .locals 1

    iget v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTextSizeSingle:I

    return v0
.end method

.method static synthetic -get12(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get13(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTxKbps:J

    return-wide v0
.end method

.method static synthetic -get14(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I
    .locals 1

    iget v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mUnits:I

    return v0
.end method

.method static synthetic -get2(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I
    .locals 1

    iget v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mIconTint:I

    return v0
.end method

.method static synthetic -get3(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mLastRxBytesTotal:J

    return-wide v0
.end method

.method static synthetic -get4(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mLastTxBytesTotal:J

    return-wide v0
.end method

.method static synthetic -get5(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mLastUpdateTime:J

    return-wide v0
.end method

.method static synthetic -get6(Lorg/lineageos/internal/statusbar/NetworkTraffic;)I
    .locals 1

    iget v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mMode:I

    return v0
.end method

.method static synthetic -get7(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mNetworkTrafficIsVisible:Z

    return v0
.end method

.method static synthetic -get8(Lorg/lineageos/internal/statusbar/NetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mRxKbps:J

    return-wide v0
.end method

.method static synthetic -get9(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mShowUnits:Z

    return v0
.end method

.method static synthetic -set0(Lorg/lineageos/internal/statusbar/NetworkTraffic;I)I
    .locals 0

    iput p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mDarkModeFillColor:I

    return p1
.end method

.method static synthetic -set1(Lorg/lineageos/internal/statusbar/NetworkTraffic;I)I
    .locals 0

    iput p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mIconTint:I

    return p1
.end method

.method static synthetic -set2(Lorg/lineageos/internal/statusbar/NetworkTraffic;J)J
    .locals 1

    iput-wide p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mLastRxBytesTotal:J

    return-wide p1
.end method

.method static synthetic -set3(Lorg/lineageos/internal/statusbar/NetworkTraffic;J)J
    .locals 1

    iput-wide p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mLastTxBytesTotal:J

    return-wide p1
.end method

.method static synthetic -set4(Lorg/lineageos/internal/statusbar/NetworkTraffic;J)J
    .locals 1

    iput-wide p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic -set5(Lorg/lineageos/internal/statusbar/NetworkTraffic;I)I
    .locals 0

    iput p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mLightModeFillColor:I

    return p1
.end method

.method static synthetic -set6(Lorg/lineageos/internal/statusbar/NetworkTraffic;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mNetworkTrafficIsVisible:Z

    return p1
.end method

.method static synthetic -set7(Lorg/lineageos/internal/statusbar/NetworkTraffic;J)J
    .locals 1

    iput-wide p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mRxKbps:J

    return-wide p1
.end method

.method static synthetic -set8(Lorg/lineageos/internal/statusbar/NetworkTraffic;J)J
    .locals 1

    iput-wide p1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTxKbps:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lorg/lineageos/internal/statusbar/NetworkTraffic;)Z
    .locals 1

    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->isConnectionAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V
    .locals 0

    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->updateSettings()V

    return-void
.end method

.method static synthetic -wrap2(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V
    .locals 0

    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->updateTrafficDrawableColor()V

    return-void
.end method

.method static synthetic -wrap3(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V
    .locals 0

    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->updateViewState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mMode:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mIconTint:I

    new-instance v1, Lorg/lineageos/internal/statusbar/NetworkTraffic$1;

    invoke-direct {v1, p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic$1;-><init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V

    iput-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mDarkReceiver:Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;

    new-instance v1, Lorg/lineageos/internal/statusbar/NetworkTraffic$2;

    invoke-direct {v1, p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic$2;-><init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V

    iput-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mVisibilityReceiver:Lorg/lineageos/internal/statusbar/LineageStatusBarItem$VisibilityReceiver;

    new-instance v1, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;

    invoke-direct {v1, p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic$3;-><init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V

    iput-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    new-instance v1, Lorg/lineageos/internal/statusbar/NetworkTraffic$4;

    invoke-direct {v1, p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic$4;-><init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;)V

    iput-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x3f0a0000    # 0.5390625f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTextSizeSingle:I

    const v1, 0x3f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTextSizeMulti:I

    iput-boolean v2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mNetworkTrafficIsVisible:Z

    new-instance v1, Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;

    iget-object v2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;-><init>(Lorg/lineageos/internal/statusbar/NetworkTraffic;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mObserver:Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;

    return-void
.end method

.method private isConnectionAvailable()Z
    .locals 3

    iget-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x2

    iget-object v3, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "network_traffic_mode"

    invoke-static {v0, v3, v2, v6}, Llineageos/providers/LineageSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mMode:I

    const-string/jumbo v3, "network_traffic_autohide"

    invoke-static {v0, v3, v2, v6}, Llineageos/providers/LineageSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    const-string/jumbo v3, "network_traffic_units"

    invoke-static {v0, v3, v1, v6}, Llineageos/providers/LineageSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mUnits:I

    const-string/jumbo v3, "network_traffic_show_units"

    invoke-static {v0, v3, v1, v6}, Llineageos/providers/LineageSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mShowUnits:Z

    iget v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mMode:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->updateTrafficDrawable()V

    :cond_0
    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->updateViewState()V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private updateTrafficDrawable()V
    .locals 4

    const/4 v2, 0x0

    iget v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mMode:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const v0, 0x3f02000f

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v2, v1, v2}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->updateTrafficDrawableColor()V

    return-void

    :cond_0
    iget v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mMode:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const v0, 0x3f02000e

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const v0, 0x3f02000d

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method private updateTrafficDrawableColor()V
    .locals 3

    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mIconTint:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method private updateViewState()V
    .locals 2

    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-static {p0}, Lorg/lineageos/internal/statusbar/LineageStatusBarItem;->findManager(Landroid/view/View;)Lorg/lineageos/internal/statusbar/LineageStatusBarItem$Manager;

    move-result-object v0

    iget-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mDarkReceiver:Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;

    invoke-interface {v0, v1}, Lorg/lineageos/internal/statusbar/LineageStatusBarItem$Manager;->addDarkReceiver(Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;)V

    iget-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mVisibilityReceiver:Lorg/lineageos/internal/statusbar/LineageStatusBarItem$VisibilityReceiver;

    invoke-interface {v0, v1}, Lorg/lineageos/internal/statusbar/LineageStatusBarItem$Manager;->addVisibilityReceiver(Lorg/lineageos/internal/statusbar/LineageStatusBarItem$VisibilityReceiver;)V

    iget-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mObserver:Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;

    invoke-virtual {v1}, Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;->observe()V

    invoke-direct {p0}, Lorg/lineageos/internal/statusbar/NetworkTraffic;->updateSettings()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lorg/lineageos/internal/statusbar/NetworkTraffic;->mObserver:Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;

    invoke-virtual {v0}, Lorg/lineageos/internal/statusbar/NetworkTraffic$SettingsObserver;->unobserve()V

    return-void
.end method
