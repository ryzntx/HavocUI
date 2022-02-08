.class public Lcom/android/systemui/navigation/pulse/PulseControllerImpl;
.super Ljava/lang/Object;
.source "PulseControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/PulseController;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PulseControllerImpl"


# instance fields
.field private mAmbPulseEnabled:Z

.field private mAttached:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mColorController:Lcom/android/systemui/navigation/pulse/ColorController;

.field private final mContext:Landroid/content/Context;

.field private mDozing:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsMediaPlaying:Z

.field private mKeyguardShowing:Z

.field private mLeftInLandscape:Z

.field private mLinked:Z

.field private mLsPulseEnabled:Z

.field private mMusicStreamMuted:Z

.field private mNavPulseEnabled:Z

.field private mPowerSaveModeEnabled:Z

.field private mPulseStyle:I

.field private final mPulseView:Lcom/android/systemui/navigation/pulse/PulseView;

.field private mRenderLoadedOnce:Z

.field private mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

.field private mScreenOn:Z

.field private mScreenPinningEnabled:Z

.field private final mStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/policy/PulseController$PulseStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStreamHandler:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

.field private final mStreamListener:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .locals 6

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStateListeners:Ljava/util/List;

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mScreenOn:Z

    .line 111
    new-instance v0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$1;-><init>(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    new-instance v0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$2;-><init>(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStreamListener:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;

    .line 304
    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mContext:Landroid/content/Context;

    .line 305
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 306
    iput-object p2, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mHandler:Landroid/os/Handler;

    const-string v0, "audio"

    .line 307
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 308
    invoke-direct {p0, v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->isMusicMuted(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mMusicStreamMuted:Z

    .line 309
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 310
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mPowerSaveModeEnabled:Z

    .line 312
    new-instance v0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStreamListener:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;

    invoke-direct {v0, v1, p0, v2, p3}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStreamHandler:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    .line 313
    new-instance p3, Lcom/android/systemui/navigation/pulse/PulseView;

    invoke-direct {p3, p1, p0}, Lcom/android/systemui/navigation/pulse/PulseView;-><init>(Landroid/content/Context;Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V

    iput-object p3, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mPulseView:Lcom/android/systemui/navigation/pulse/PulseView;

    .line 314
    new-instance p3, Lcom/android/systemui/navigation/pulse/ColorController;

    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {p3, v0, v1}, Lcom/android/systemui/navigation/pulse/ColorController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mColorController:Lcom/android/systemui/navigation/pulse/ColorController;

    .line 315
    const-class p3, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 316
    new-instance v3, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p3, "android.intent.action.SCREEN_ON"

    .line 317
    invoke-virtual {v3, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 318
    invoke-virtual {v3, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 319
    invoke-virtual {v3, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.media.VOLUME_CHANGED_ACTION"

    .line 320
    invoke-virtual {v3, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 322
    new-instance p1, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;-><init>(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Landroid/os/Handler;)V

    .line 323
    invoke-virtual {p1}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->register()V

    .line 324
    invoke-virtual {p1}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->updateSettings()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->doLinkage()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->updatePulseVisibility()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->loadRenderer()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mNavPulseEnabled:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mLsPulseEnabled:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mAmbPulseEnabled:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mPulseStyle:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mPowerSaveModeEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;I)Z
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->isMusicMuted(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mMusicStreamMuted:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mMusicStreamMuted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Lcom/android/systemui/navigation/pulse/Renderer;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->notifyStateListeners(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->turnOnPulse()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->doSilentUnlinkVisualizer()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Landroid/content/Context;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private allowAmbPulse(Lcom/android/systemui/navigation/pulse/VisualizerView;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 288
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/navigation/pulse/VisualizerView;->isAttached()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mAmbPulseEnabled:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mKeyguardShowing:Z

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mDozing:Z

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private allowLsPulse(Lcom/android/systemui/navigation/pulse/VisualizerView;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 298
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/navigation/pulse/VisualizerView;->isAttached()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mLsPulseEnabled:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mKeyguardShowing:Z

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mDozing:Z

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private allowNavPulse(Lcom/android/systemui/statusbar/phone/NavigationBarFrame;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 293
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->isAttached()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mNavPulseEnabled:Z

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mKeyguardShowing:Z

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private doLinkVisualizer()V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStreamHandler:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    if-eqz v0, :cond_1

    .line 553
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mLinked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 554
    invoke-static {v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->setVisualizerLocked(Z)V

    .line 555
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStreamHandler:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    invoke-virtual {v1}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->link()V

    .line 556
    iput-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mLinked:Z

    .line 557
    iget-boolean v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mRenderLoadedOnce:Z

    if-nez v1, :cond_0

    .line 558
    iput-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mRenderLoadedOnce:Z

    .line 559
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->loadRenderer()V

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    if-eqz v1, :cond_1

    .line 562
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigation/pulse/Renderer;->onVisualizerLinkChanged(Z)V

    .line 563
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 564
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->hideHomeHandle(Z)V

    :cond_1
    return-void
.end method

.method private doLinkage()V
    .locals 1

    .line 516
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->isUnlinkRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mLinked:Z

    if-eqz v0, :cond_2

    .line 518
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->doUnlinkVisualizer()V

    goto :goto_0

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->isAbleToLink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->doLinkVisualizer()V

    goto :goto_0

    .line 523
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mLinked:Z

    if-eqz v0, :cond_2

    .line 524
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->doUnlinkVisualizer()V

    :cond_2
    :goto_0
    return-void
.end method

.method private doSilentUnlinkVisualizer()V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStreamHandler:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    if-eqz v0, :cond_0

    .line 537
    iget-boolean v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mLinked:Z

    if-eqz v1, :cond_0

    .line 538
    invoke-virtual {v0}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->unlink()V

    const/4 v0, 0x0

    .line 539
    invoke-static {v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->setVisualizerLocked(Z)V

    .line 540
    iput-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mLinked:Z

    .line 541
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 542
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->hideHomeHandle(Z)V

    :cond_0
    return-void
.end method

.method private doUnlinkVisualizer()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStreamHandler:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    if-eqz v0, :cond_2

    .line 494
    iget-boolean v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mLinked:Z

    if-eqz v1, :cond_2

    .line 495
    invoke-virtual {v0}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->unlink()V

    const/4 v0, 0x0

    .line 496
    invoke-static {v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->setVisualizerLocked(Z)V

    .line 497
    iput-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mLinked:Z

    .line 498
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigation/pulse/Renderer;->onVisualizerLinkChanged(Z)V

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mPulseView:Lcom/android/systemui/navigation/pulse/PulseView;

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 503
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 504
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->hideHomeHandle(Z)V

    .line 505
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->notifyStateListeners(Z)V

    :cond_2
    return-void
.end method

.method private getLsVisualizer()Lcom/android/systemui/navigation/pulse/VisualizerView;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLsVisualizer()Lcom/android/systemui/navigation/pulse/VisualizerView;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getNavbarFrame()Lcom/android/systemui/statusbar/phone/NavigationBarFrame;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavbarFrame()Lcom/android/systemui/statusbar/phone/NavigationBarFrame;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getRenderer()Lcom/android/systemui/navigation/pulse/Renderer;
    .locals 4

    .line 438
    iget v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mPulseStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 439
    new-instance v0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mPulseView:Lcom/android/systemui/navigation/pulse/PulseView;

    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mColorController:Lcom/android/systemui/navigation/pulse/ColorController;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/navigation/pulse/PulseView;Lcom/android/systemui/navigation/pulse/ColorController;)V

    return-object v0

    .line 440
    :cond_0
    new-instance v0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;

    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mPulseView:Lcom/android/systemui/navigation/pulse/PulseView;

    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mColorController:Lcom/android/systemui/navigation/pulse/ColorController;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/navigation/pulse/PulseView;Lcom/android/systemui/navigation/pulse/ColorController;)V

    return-object v0
.end method

.method private getState()Ljava/lang/String;
    .locals 2

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAbleToLink() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->isAbleToLink()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " shouldDrawPulse() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->shouldDrawPulse()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsMediaPlaying = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mIsMediaPlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLinked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mLinked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPowerSaveModeEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mPowerSaveModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mMusicStreamMuted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mMusicStreamMuted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mScreenPinningEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mScreenPinningEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAttached = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mStreamHandler.isValidStream() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStreamHandler:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    .line 599
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->isValidStream()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isAbleToLink()Z
    .locals 4

    .line 481
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mIsMediaPlaying:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mPowerSaveModeEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mMusicStreamMuted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mScreenPinningEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mAttached:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 486
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mAmbPulseEnabled:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    .line 487
    iget-boolean p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mScreenOn:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    move v0, v1

    :cond_3
    return v0
.end method

.method private isMusicMuted(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 445
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 446
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isUnlinkRequired()Z
    .locals 4

    .line 465
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mPowerSaveModeEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mMusicStreamMuted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mScreenPinningEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mAttached:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 469
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mAmbPulseEnabled:Z

    if-nez v3, :cond_4

    if-nez v0, :cond_2

    .line 470
    iget-boolean p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mScreenOn:Z

    if-nez p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v0, v1

    :cond_4
    return v0
.end method

.method private loadRenderer()V
    .locals 3

    .line 373
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->shouldDrawPulse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStreamHandler:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    invoke-virtual {v1}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->pause()V

    goto :goto_0

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->hideHomeHandle(Z)V

    .line 381
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    if-eqz v1, :cond_1

    .line 382
    invoke-virtual {v1}, Lcom/android/systemui/navigation/pulse/Renderer;->destroy()V

    const/4 v1, 0x0

    .line 383
    iput-object v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    .line 385
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->getRenderer()Lcom/android/systemui/navigation/pulse/Renderer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    .line 386
    iget-object v2, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mColorController:Lcom/android/systemui/navigation/pulse/ColorController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/navigation/pulse/ColorController;->setRenderer(Lcom/android/systemui/navigation/pulse/Renderer;)V

    .line 387
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    iget-boolean v2, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mLeftInLandscape:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigation/pulse/Renderer;->setLeftInLandscape(Z)V

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;->onStreamAnalyzed(Z)V

    .line 390
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStreamHandler:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->resume()V

    :cond_2
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private notifyStateListeners(Z)V
    .locals 1

    .line 365
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/PulseController$PulseStateListener;

    if-eqz v0, :cond_0

    .line 367
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/PulseController$PulseStateListener;->onPulseStateChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static setVisualizerLocked(Z)V
    .locals 1

    :try_start_0
    const-string v0, "audio"

    .line 451
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 452
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 453
    invoke-interface {v0, p0}, Landroid/media/IAudioService;->setVisualizerLocked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    sget-object p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Error setting visualizer lock"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private turnOnPulse()V
    .locals 1

    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->shouldDrawPulse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStreamHandler:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->resume()V

    :cond_0
    return-void
.end method

.method private updatePulseVisibility()V
    .locals 5

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->getNavbarFrame()Lcom/android/systemui/statusbar/phone/NavigationBarFrame;

    move-result-object v0

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->getLsVisualizer()Lcom/android/systemui/navigation/pulse/VisualizerView;

    move-result-object v1

    .line 244
    invoke-direct {p0, v1}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->allowAmbPulse(Lcom/android/systemui/navigation/pulse/VisualizerView;)Z

    move-result v2

    .line 245
    invoke-direct {p0, v1}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->allowLsPulse(Lcom/android/systemui/navigation/pulse/VisualizerView;)Z

    move-result v3

    .line 246
    invoke-direct {p0, v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->allowNavPulse(Lcom/android/systemui/statusbar/phone/NavigationBarFrame;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 248
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->detachPulseFrom(Landroid/widget/FrameLayout;Z)V

    :cond_0
    if-nez v3, :cond_1

    if-nez v2, :cond_1

    .line 249
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->detachPulseFrom(Landroid/widget/FrameLayout;Z)V

    :cond_1
    if-nez v3, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_4

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->attachPulseTo(Landroid/widget/FrameLayout;)V

    goto :goto_1

    .line 251
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->attachPulseTo(Landroid/widget/FrameLayout;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public attachPulseTo(Landroid/widget/FrameLayout;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "PulseView"

    .line 330
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mPulseView:Lcom/android/systemui/navigation/pulse/PulseView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mAttached:Z

    const-string p1, "attachPulseTo() "

    .line 334
    invoke-direct {p0, p1}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->log(Ljava/lang/String;)V

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->doLinkage()V

    :cond_1
    return-void
.end method

.method public detachPulseFrom(Landroid/widget/FrameLayout;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "PulseView"

    .line 342
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 345
    iput-boolean p2, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mAttached:Z

    const-string p1, "detachPulseFrom() "

    .line 346
    invoke-direct {p0, p1}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->log(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->doLinkage()V

    :cond_1
    return-void
.end method

.method public leftInLandscapeChanged(Z)V
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mLeftInLandscape:Z

    if-eq v0, p1, :cond_0

    .line 403
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mLeftInLandscape:Z

    .line 404
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    if-eqz p0, :cond_0

    .line 405
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigation/pulse/Renderer;->setLeftInLandscape(Z)V

    :cond_0
    return-void
.end method

.method public notifyKeyguardGoingAway()V
    .locals 2

    .line 228
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mLsPulseEnabled:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->getLsVisualizer()Lcom/android/systemui/navigation/pulse/VisualizerView;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->getNavbarFrame()Lcom/android/systemui/statusbar/phone/NavigationBarFrame;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->allowNavPulse(Lcom/android/systemui/statusbar/phone/NavigationBarFrame;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->detachPulseFrom(Landroid/widget/FrameLayout;Z)V

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->updatePulseVisibility()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->shouldDrawPulse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigation/pulse/Renderer;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onPrimaryMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 573
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mIsMediaPlaying:Z

    if-eq p2, p1, :cond_1

    .line 574
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mIsMediaPlaying:Z

    .line 575
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->doLinkage()V

    :cond_1
    return-void
.end method

.method onSizeChanged(IIII)V
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    if-eqz p0, :cond_0

    .line 433
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/navigation/pulse/Renderer;->onSizeChanged(IIII)V

    :cond_0
    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 1

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mScreenOn:Z

    .line 238
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->doLinkage()V

    return-void
.end method

.method public screenPinningStateChanged(Z)V
    .locals 0

    .line 396
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mScreenPinningEnabled:Z

    .line 397
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->doLinkage()V

    return-void
.end method

.method public setDozing(Z)V
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mDozing:Z

    if-eq v0, p1, :cond_0

    .line 257
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mDozing:Z

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->updatePulseVisibility()V

    :cond_0
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mKeyguardShowing:Z

    if-eq p1, v0, :cond_1

    .line 264
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mKeyguardShowing:Z

    .line 265
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0, p1}, Lcom/android/systemui/navigation/pulse/Renderer;->setKeyguardShowing(Z)V

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->updatePulseVisibility()V

    :cond_1
    return-void
.end method

.method public setMediaNotificationColor(ZI)V
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mColorController:Lcom/android/systemui/navigation/pulse/ColorController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigation/pulse/ColorController;->setMediaNotificationColor(ZI)V

    return-void
.end method

.method public shouldDrawPulse()Z
    .locals 1

    .line 416
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mLinked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mStreamHandler:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    invoke-virtual {v0}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->isValidStream()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->getState()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
