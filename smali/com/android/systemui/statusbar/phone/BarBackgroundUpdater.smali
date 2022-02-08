.class public Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;
.super Ljava/lang/Object;
.source "BarBackgroundUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;,
        Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;,
        Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$1;,
        Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$2;,
        Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$3;
    }
.end annotation


# static fields
.field public static PAUSED:Z

.field private static final RECEIVER:Landroid/content/BroadcastReceiver;

.field private static final THREAD:Ljava/lang/Thread;

.field private static final THREAD2:Ljava/lang/Thread;

.field public static abu:Z

.field public static accent:Z

.field public static headerIconOverrideColor:I

.field public static headerOverrideColor:I

.field public static linkedColor:Z

.field public static mContext:Landroid/content/Context;

.field public static mDynamicColor:I

.field public static mHandler:Landroid/os/Handler;

.field public static mHeaderEnabled:Z

.field public static mHeaderIconOverrideColor:I

.field public static mHeaderOverrideColor:I

.field public static final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field public static mNavigationBarIconOverrideColor:I

.field public static mNavigationBarOverrideColor:I

.field public static mNavigationEnabled:Z

.field public static mNavigationGradientEnabled:Z

.field public static mNotifEnabled:Z

.field public static mNotifIconOverrideColor:I

.field public static mNotifOverrideColor:I

.field public static mNotipIconOverrideColor:I

.field public static mNotipOverrideColor:I

.field private static mObserver:Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

.field public static mPreviousHeaderIconOverrideColor:I

.field public static mPreviousHeaderOverrideColor:I

.field public static mPreviousNavigationBarIconOverrideColor:I

.field public static mPreviousNavigationBarOverrideColor:I

.field public static mPreviousNotifIconOverrideColor:I

.field public static mPreviousNotifOverrideColor:I

.field public static mPreviousNotipIconOverrideColor:I

.field public static mPreviousNotipOverrideColor:I

.field public static mPreviousStatusBarIconOverrideColor:I

.field public static mPreviousStatusBarOverrideColor:I

.field public static mPreviousTileIconOverrideColor:I

.field public static mPreviousTileOverrideColor:I

.field public static mStatusBarIconOverrideColor:I

.field public static mStatusBarOverrideColor:I

.field public static mStatusEnabled:Z

.field public static mStatusFilterEnabled:Z

.field public static mStatusGradientEnabled:Z

.field public static mTileIconOverrideColor:I

.field public static mTileOverrideColor:I

.field public static mTransparency:I

.field public static navigationBarIconOverrideColor:I

.field public static navigationBarOverrideColor:I

.field public static notifIconOverrideColor:I

.field public static notifOverrideColor:I

.field public static notipIconOverrideColor:I

.field public static notipOverrideColor:I

.field public static parseColorDark:I

.field public static parseColorLight:I

.field public static reverse:Z

.field public static sMinDelay:J

.field public static statusBarIconOverrideColor:I

.field public static statusBarOverrideColor:I

.field public static tileIconOverrideColor:I

.field public static tileOverrideColor:I


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    const/4 v2, 0x4

    const/16 v0, 0x32

    int-to-long v0, v0

    sput-wide v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->sMinDelay:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->RECEIVER:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$2;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->THREAD:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$3;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$3;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->THREAD2:Ljava/lang/Thread;

    .line 327
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->THREAD:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 328
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->THREAD2:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 329
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->THREAD:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 330
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->THREAD2:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addListener([Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;)V
    .locals 7

    const/4 v2, 0x0

    .line 400
    const-class v4, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;

    monitor-enter v4

    move v3, v2

    .line 421
    :goto_0
    :try_start_0
    array-length v0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v0, :cond_0

    monitor-exit v4

    return-void

    .line 400
    :cond_0
    :try_start_1
    aget-object v5, p0, v3

    .line 401
    if-eqz v5, :cond_2

    .line 402
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousStatusBarOverrideColor:I

    sget v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusBarOverrideColor:I

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateStatusBarColor(II)V

    .line 403
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousHeaderOverrideColor:I

    sget v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderOverrideColor:I

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateHeaderColor(II)V

    .line 404
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousHeaderIconOverrideColor:I

    sget v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderIconOverrideColor:I

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateHeaderIconColor(II)V

    .line 405
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousTileOverrideColor:I

    sget v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mTileOverrideColor:I

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateTileColor(II)V

    .line 406
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousTileIconOverrideColor:I

    sget v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mTileIconOverrideColor:I

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateTileIconColor(II)V

    .line 407
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNotifOverrideColor:I

    sget v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifOverrideColor:I

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateNotificationColor(II)V

    .line 408
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNotifIconOverrideColor:I

    sget v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifIconOverrideColor:I

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateNotificationIconColor(II)V

    .line 409
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNotipOverrideColor:I

    sget v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotipOverrideColor:I

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateNotipColor(II)V

    .line 410
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNotipIconOverrideColor:I

    sget v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotipIconOverrideColor:I

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateNotipIconColor(II)V

    .line 411
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousStatusBarIconOverrideColor:I

    sget v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusBarIconOverrideColor:I

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateStatusBarIconColor(II)V

    .line 412
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNavigationBarOverrideColor:I

    sget v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationBarOverrideColor:I

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateNavigationBarColor(II)V

    .line 413
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNavigationBarIconOverrideColor:I

    sget v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationBarIconOverrideColor:I

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateNavigationBarIconColor(II)V

    .line 414
    const/4 v1, 0x1

    .line 415
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 417
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 420
    if-eqz v1, :cond_2

    .line 421
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 415
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    if-ne v0, v5, :cond_1

    move v1, v2

    .line 417
    goto :goto_1

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static cekbriknes(I)F
    .locals 3

    .line 334
    const v0, 0x3e991687    # 0.299f

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x3f1645a2    # 0.587f

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const v1, 0x3de978d5    # 0.114f

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xff

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static filter(IF)I
    .locals 7

    const/4 v4, 0x0

    const/16 v1, 0xff

    .line 428
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    .line 429
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    float-to-int v2, v2

    .line 430
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    float-to-int v3, v3

    .line 432
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-lez v0, :cond_2

    if-ge v0, v1, :cond_1

    :goto_0
    move v5, v0

    :goto_1
    if-lez v2, :cond_4

    if-ge v2, v1, :cond_3

    move v0, v2

    :goto_2
    if-lez v3, :cond_5

    if-ge v3, v1, :cond_0

    move v1, v3

    :cond_0
    :goto_3
    invoke-static {v6, v5, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_2

    :cond_5
    move v1, v4

    goto :goto_3
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 301
    const-class v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mContext:Landroid/content/Context;

    .line 302
    if-eqz v2, :cond_0

    .line 303
    sget-object v4, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->RECEIVER:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 304
    sget-object v4, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mObserver:Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

    if-eqz v4, :cond_0

    .line 305
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mObserver:Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 308
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    sput-object v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHandler:Landroid/os/Handler;

    .line 309
    sput-object p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mContext:Landroid/content/Context;

    .line 310
    sget-object v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 311
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 312
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    sget-object v5, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->RECEIVER:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    sget-object v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mObserver:Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

    if-nez v2, :cond_1

    .line 316
    new-instance v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v5}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mObserver:Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

    .line 318
    :cond_1
    const-string v2, "DYNAMIC_STATUS_BAR_STATE"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    sget-object v6, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mObserver:Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 319
    const-string v2, "DYNAMIC_HEADER_STATE"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    sget-object v6, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mObserver:Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 320
    const-string v2, "DYNAMIC_SYSTEM_BARS_GRADIENT_STATE"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    sget-object v6, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mObserver:Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 321
    const-string v2, "DYNAMIC_NAVIGATION_BARS_GRADIENT_STATE"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    sget-object v6, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mObserver:Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 322
    const-string v2, "DYNAMIC_NOTIF_STATE"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    sget-object v6, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mObserver:Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 323
    const-string v2, "DYNAMIC_NAVIGATION_BAR_STATE"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    sget-object v6, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mObserver:Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 324
    const-string v2, "DYNAMIC_STATUS_BAR_FILTER_STATE"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    sget-object v6, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mObserver:Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 325
    const-string v2, "EXPERIMENTAL_DSB_FREQUENCY"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    sget-object v6, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mObserver:Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 326
    const-string v2, "UI_COLOR"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    sget-object v6, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mObserver:Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 327
    const-string v2, "ABU_ABU"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    sget-object v6, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mObserver:Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 328
    const-string v2, "ACCENT_COLOR"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    sget-object v6, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mObserver:Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 329
    const-string v2, "LINKED_COLOR"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    sget-object v6, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mObserver:Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 330
    const-string v2, "ACCENT_COLOR"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v4, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_2

    move v2, v0

    :goto_0
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->accent:Z

    .line 331
    const-string v2, "LINKED_COLOR"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v4, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_3

    move v2, v0

    :goto_1
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->linkedColor:Z

    .line 332
    const-string v2, "ABU_ABU"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v4, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_4

    move v2, v0

    :goto_2
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->abu:Z

    .line 333
    const-string v2, "UI_COLOR"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v4, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_5

    move v2, v0

    :goto_3
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->reverse:Z

    .line 334
    const-string v2, "DYNAMIC_STATUS_BAR_STATE"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v4, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_6

    move v2, v0

    :goto_4
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusEnabled:Z

    .line 335
    const-string v2, "DYNAMIC_NOTIF_STATE"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v4, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_7

    move v2, v0

    :goto_5
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifEnabled:Z

    .line 336
    const-string v2, "DYNAMIC_HEADER_STATE"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v4, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_8

    move v2, v0

    :goto_6
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderEnabled:Z

    .line 337
    const-string v2, "DYNAMIC_SYSTEM_BARS_GRADIENT_STATE"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v4, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_9

    move v2, v0

    :goto_7
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusGradientEnabled:Z

    .line 338
    const-string v2, "DYNAMIC_NAVIGATION_BARS_GRADIENT_STATE"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v4, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_a

    move v2, v0

    :goto_8
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationGradientEnabled:Z

    .line 339
    const-string v2, "DYNAMIC_NAVIGATION_BAR_STATE"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v4, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_b

    move v2, v0

    :goto_9
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationEnabled:Z

    .line 340
    const-string v2, "DYNAMIC_STATUS_BAR_FILTER_STATE"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v4, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_c

    :goto_a
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusFilterEnabled:Z

    .line 341
    const-string v0, "EXPERIMENTAL_DSB_FREQUENCY"

    const/16 v1, 0xff

    const/4 v2, -0x2

    invoke-static {v4, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mTransparency:I

    .line 342
    invoke-static {}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_2
    move v2, v1

    .line 330
    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 331
    goto/16 :goto_1

    :cond_4
    move v2, v1

    .line 332
    goto :goto_2

    :cond_5
    move v2, v1

    .line 333
    goto :goto_3

    :cond_6
    move v2, v1

    .line 334
    goto :goto_4

    :cond_7
    move v2, v1

    .line 335
    goto :goto_5

    :cond_8
    move v2, v1

    .line 336
    goto :goto_6

    :cond_9
    move v2, v1

    .line 337
    goto :goto_7

    :cond_a
    move v2, v1

    .line 338
    goto :goto_8

    :cond_b
    move v2, v1

    .line 339
    goto :goto_9

    :cond_c
    move v0, v1

    .line 340
    goto :goto_a

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static pause()V
    .locals 1

    .line 347
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->setPauseState(Z)V

    return-void
.end method

.method public static resume()V
    .locals 1

    .line 351
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->setPauseState(Z)V

    return-void
.end method

.method public static declared-synchronized setPauseState(Z)V
    .locals 3

    .line 340
    const-class v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;

    monitor-enter v1

    :try_start_0
    sput-boolean p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->PAUSED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    if-nez p0, :cond_0

    .line 342
    :try_start_1
    const-string v0, "com.android.systemui.statusbar.phone.BarBackgroundUpdater"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateHeaderColor(I)V
    .locals 5

    .line 557
    const-class v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderOverrideColor:I

    if-eq v0, p0, :cond_1

    .line 558
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedDsb:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderEnabled:Z

    if-nez v0, :cond_1

    .line 559
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderOverrideColor:I

    sput v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousHeaderOverrideColor:I

    .line 560
    sput p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderOverrideColor:I

    .line 561
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 562
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    monitor-exit v1

    return-void

    .line 561
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    .line 562
    sget v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousHeaderOverrideColor:I

    sget v4, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderOverrideColor:I

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateHeaderColor(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateHeaderIconColor(I)V
    .locals 5

    .line 579
    const-class v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderIconOverrideColor:I

    if-eq v0, p0, :cond_1

    .line 580
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedDsb:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderEnabled:Z

    if-nez v0, :cond_1

    .line 581
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderIconOverrideColor:I

    sput v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousHeaderIconOverrideColor:I

    .line 582
    sput p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderIconOverrideColor:I

    .line 583
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 584
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    monitor-exit v1

    return-void

    .line 583
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    .line 584
    sget v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousHeaderIconOverrideColor:I

    sget v4, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderIconOverrideColor:I

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateHeaderIconColor(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateNavigationBarColor(I)V
    .locals 5

    .line 569
    const-class v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationBarOverrideColor:I

    if-eq v0, p0, :cond_0

    .line 570
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationBarOverrideColor:I

    sput v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNavigationBarOverrideColor:I

    .line 571
    sput p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationBarOverrideColor:I

    .line 572
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 573
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    .line 572
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    .line 573
    sget v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNavigationBarOverrideColor:I

    sget v4, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationBarOverrideColor:I

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateNavigationBarColor(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateNavigationBarIconColor(I)V
    .locals 5

    .line 637
    const-class v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationBarIconOverrideColor:I

    if-eq v0, p0, :cond_1

    .line 638
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedDsb:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationEnabled:Z

    if-nez v0, :cond_1

    .line 639
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationBarIconOverrideColor:I

    sput v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNavigationBarIconOverrideColor:I

    .line 640
    sput p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationBarIconOverrideColor:I

    .line 641
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 642
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    monitor-exit v1

    return-void

    .line 641
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    .line 642
    sget v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNavigationBarIconOverrideColor:I

    sget v4, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationBarIconOverrideColor:I

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateNavigationBarIconColor(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateNotificationColor(I)V
    .locals 5

    .line 511
    const-class v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifOverrideColor:I

    if-eq v0, p0, :cond_1

    .line 512
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedDsb:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifEnabled:Z

    if-nez v0, :cond_1

    .line 513
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifOverrideColor:I

    sput v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNotifOverrideColor:I

    .line 514
    sput p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifOverrideColor:I

    .line 515
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 516
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    monitor-exit v1

    return-void

    .line 515
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    .line 516
    sget v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNotifOverrideColor:I

    sget v4, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifOverrideColor:I

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateNotificationColor(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateNotificationIconColor(I)V
    .locals 5

    .line 591
    const-class v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifIconOverrideColor:I

    if-eq v0, p0, :cond_1

    .line 592
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedDsb:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifEnabled:Z

    if-nez v0, :cond_1

    .line 593
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifIconOverrideColor:I

    sput v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNotifIconOverrideColor:I

    .line 594
    sput p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifIconOverrideColor:I

    .line 595
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 596
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    monitor-exit v1

    return-void

    .line 595
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    .line 596
    sget v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNotifIconOverrideColor:I

    sget v4, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifIconOverrideColor:I

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateNotificationIconColor(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateNotipColor(I)V
    .locals 5

    .line 523
    const-class v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotipOverrideColor:I

    if-eq v0, p0, :cond_1

    .line 524
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedDsb:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifEnabled:Z

    if-nez v0, :cond_1

    .line 525
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotipOverrideColor:I

    sput v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNotipOverrideColor:I

    .line 526
    sput p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotipOverrideColor:I

    .line 527
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 528
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    monitor-exit v1

    return-void

    .line 527
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    .line 528
    sget v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNotipOverrideColor:I

    sget v4, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotipOverrideColor:I

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateNotipColor(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateNotipIconColor(I)V
    .locals 5

    .line 603
    const-class v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotipIconOverrideColor:I

    if-eq v0, p0, :cond_1

    .line 604
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedDsb:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifEnabled:Z

    if-nez v0, :cond_1

    .line 605
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotipIconOverrideColor:I

    sput v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNotipIconOverrideColor:I

    .line 606
    sput p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotipIconOverrideColor:I

    .line 607
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 608
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    monitor-exit v1

    return-void

    .line 607
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    .line 608
    sget v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousNotipIconOverrideColor:I

    sget v4, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotipIconOverrideColor:I

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateNotipIconColor(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateStatusBarColor(I)V
    .locals 5

    .line 535
    const-class v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusBarOverrideColor:I

    if-eq v0, p0, :cond_0

    .line 536
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusBarOverrideColor:I

    sput v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousStatusBarOverrideColor:I

    .line 537
    sput p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusBarOverrideColor:I

    .line 538
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 539
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    .line 538
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    .line 539
    sget v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousStatusBarOverrideColor:I

    sget v4, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusBarOverrideColor:I

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateStatusBarColor(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateStatusBarIconColor(I)V
    .locals 5

    .line 615
    const-class v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusBarIconOverrideColor:I

    if-eq v0, p0, :cond_0

    .line 616
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusBarIconOverrideColor:I

    sput v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousStatusBarIconOverrideColor:I

    .line 617
    sput p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusBarIconOverrideColor:I

    .line 618
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 619
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    .line 618
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    .line 619
    sget v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousStatusBarIconOverrideColor:I

    sget v4, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusBarIconOverrideColor:I

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateStatusBarIconColor(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateTileColor(I)V
    .locals 5

    .line 545
    const-class v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mTileOverrideColor:I

    if-eq v0, p0, :cond_1

    .line 546
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedDsb:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderEnabled:Z

    if-nez v0, :cond_1

    .line 547
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mTileOverrideColor:I

    sput v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousTileOverrideColor:I

    .line 548
    sput p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mTileOverrideColor:I

    .line 549
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 550
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    monitor-exit v1

    return-void

    .line 549
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    .line 550
    sget v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousTileOverrideColor:I

    sget v4, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mTileOverrideColor:I

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateTileColor(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateTileIconColor(I)V
    .locals 5

    .line 625
    const-class v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mTileIconOverrideColor:I

    if-eq v0, p0, :cond_1

    .line 626
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedDsb:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderEnabled:Z

    if-nez v0, :cond_1

    .line 627
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mTileIconOverrideColor:I

    sput v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousTileIconOverrideColor:I

    .line 628
    sput p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mTileIconOverrideColor:I

    .line 629
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 630
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    monitor-exit v1

    return-void

    .line 629
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    .line 630
    sget v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mPreviousTileIconOverrideColor:I

    sget v4, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mTileIconOverrideColor:I

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->onUpdateTileIconColor(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
