.class public Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.super Landroid/widget/TextView;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;
    }
.end annotation


# instance fields
.field private lastUpdateTime:J

.field protected mAttached:Z

.field private mAutoHideThreshold:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mIndicatorMode:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsEnabled:Z

.field protected mLocation:I

.field private mRefreshInterval:I

.field protected mTintColor:I

.field private mTrafficHandler:Landroid/os/Handler;

.field private totalRxBytes:J

.field private totalTxBytes:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 45
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRefreshInterval:I

    const/4 p2, 0x0

    .line 46
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIndicatorMode:I

    .line 50
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    .line 277
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x106000b

    .line 205
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTintColor:I

    const-string p2, "connectivity"

    .line 206
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 207
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 208
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;Landroid/os/Handler;)V

    .line 209
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;->observe()V

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setMode()V

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->update()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRefreshInterval:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalTxBytes:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalTxBytes:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getConnectAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHideThreshold:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIndicatorMode:I

    return p0
.end method

.method private getConnectAvailable()Z
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method protected getSpeedRelativeSizeSpan()Landroid/text/style/RelativeSizeSpan;
    .locals 1

    .line 236
    new-instance p0, Landroid/text/style/RelativeSizeSpan;

    const v0, 0x3f333333    # 0.7f

    invoke-direct {p0, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    return-object p0
.end method

.method protected getUnitRelativeSizeSpan()Landroid/text/style/RelativeSizeSpan;
    .locals 1

    .line 240
    new-instance p0, Landroid/text/style/RelativeSizeSpan;

    const v0, 0x3f266666    # 0.65f

    invoke-direct {p0, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    return-object p0
.end method

.method isDisabled()Z
    .locals 2

    .line 345
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIsEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mLocation:I

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 216
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 217
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    .line 219
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->update()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 228
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 229
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    :cond_0
    return-void
.end method

.method protected restoreViewQuickly()Z
    .locals 1

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getConnectAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHideThreshold:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected setMode()V
    .locals 5

    .line 306
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_traffic_state"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 307
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIsEnabled:Z

    const-string v1, "network_traffic_location"

    .line 310
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mLocation:I

    const-string v1, "network_traffic_mode"

    .line 313
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIndicatorMode:I

    const-string v1, "network_traffic_autohide_threshold"

    .line 316
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHideThreshold:I

    const-string v1, "network_traffic_refresh_interval"

    .line 319
    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRefreshInterval:I

    return-void
.end method

.method protected setSpacingAndFonts()V
    .locals 2

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040235

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 333
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 334
    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/16 v0, 0x11

    .line 335
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x2

    .line 336
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method protected update()V
    .locals 2

    const-string v0, ""

    .line 294
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    .line 295
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setSpacingAndFonts()V

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateTrafficDrawable()V

    .line 298
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->totalRxBytes:J

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->lastUpdateTime:J

    .line 301
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected updateTrafficDrawable()V
    .locals 1

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 326
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTintColor:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
