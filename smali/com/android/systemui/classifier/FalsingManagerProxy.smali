.class public Lcom/android/systemui/classifier/FalsingManagerProxy;
.super Ljava/lang/Object;
.source "FalsingManagerProxy.java"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/FalsingManagerProxy$SettingsObserver;
    }
.end annotation


# instance fields
.field private mBrightlineEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private final mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private final mFalsingDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

.field private final mHandler:Landroid/os/Handler;

.field private mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

.field private mSettingsObserver:Lcom/android/systemui/classifier/FalsingManagerProxy$SettingsObserver;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mUiBgExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/dock/DockManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p4, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 88
    iput-object p6, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 89
    iput-object p7, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 90
    iput-object p9, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 91
    iput-object p10, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 92
    iput-object p11, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mFalsingDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    const-string p3, "FalsingManager"

    .line 93
    invoke-virtual {p4, p3}, Lcom/android/systemui/util/sensors/ProximitySensor;->setTag(Ljava/lang/String;)V

    .line 94
    iget-object p4, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    const/4 p6, 0x1

    invoke-virtual {p4, p6}, Lcom/android/systemui/util/sensors/ProximitySensor;->setDelay(I)V

    .line 95
    iput-object p5, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 96
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mContext:Landroid/content/Context;

    .line 97
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingManagerProxy;->setupFalsingManager(Landroid/content/Context;)V

    .line 99
    new-instance p4, Lcom/android/systemui/classifier/FalsingManagerProxy$1;

    invoke-direct {p4, p0, p1}, Lcom/android/systemui/classifier/FalsingManagerProxy$1;-><init>(Lcom/android/systemui/classifier/FalsingManagerProxy;Landroid/content/Context;)V

    .line 113
    const-class p1, Lcom/android/systemui/plugins/FalsingPlugin;

    invoke-interface {p2, p4, p1}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V

    .line 115
    invoke-virtual {p8, p3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 117
    new-instance p1, Lcom/android/systemui/classifier/FalsingManagerProxy$SettingsObserver;

    iget-object p2, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/classifier/FalsingManagerProxy$SettingsObserver;-><init>(Lcom/android/systemui/classifier/FalsingManagerProxy;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mSettingsObserver:Lcom/android/systemui/classifier/FalsingManagerProxy$SettingsObserver;

    .line 118
    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingManagerProxy$SettingsObserver;->update()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/classifier/FalsingManagerProxy;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/classifier/FalsingManagerProxy;Lcom/android/systemui/plugins/FalsingManager;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/classifier/FalsingManagerProxy;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/classifier/FalsingManagerProxy;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/classifier/FalsingManagerProxy;Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingManagerProxy;->setupFalsingManager(Landroid/content/Context;)V

    return-void
.end method

.method private setupFalsingManager(Landroid/content/Context;)V
    .locals 9

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_anti_falsing_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mBrightlineEnabled:Z

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    if-eqz v0, :cond_1

    return-void

    .line 149
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mBrightlineEnabled:Z

    .line 151
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    if-eqz v0, :cond_2

    .line 152
    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->cleanup()V

    :cond_2
    if-nez v2, :cond_3

    .line 155
    new-instance v0, Lcom/android/systemui/classifier/FalsingManagerImpl;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/classifier/FalsingManagerImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    goto :goto_0

    .line 157
    :cond_3
    new-instance p1, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;

    iget-object v3, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mFalsingDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    iget-object v4, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object v6, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    iget-object v7, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mDockManager:Lcom/android/systemui/dock/DockManager;

    iget-object v8, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    :goto_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->cleanup()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p2}, Lcom/android/systemui/plugins/FalsingManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method getInternalFalsingManager()Lcom/android/systemui/plugins/FalsingManager;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 173
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method public isClassifierEnabled()Z
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isClassifierEnabled()Z

    move-result p0

    return p0
.end method

.method public isFalseTouch(I)Z
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result p0

    return p0
.end method

.method public isReportingEnabled()Z
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isReportingEnabled()Z

    move-result p0

    return p0
.end method

.method public isUnlockingDisabled()Z
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p0

    return p0
.end method

.method public onAffordanceSwipingAborted()V
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onAffordanceSwipingAborted()V

    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->onAffordanceSwipingStarted(Z)V

    return-void
.end method

.method public onBouncerHidden()V
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onBouncerHidden()V

    return-void
.end method

.method public onBouncerShown()V
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onBouncerShown()V

    return-void
.end method

.method public onCameraHintStarted()V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onCameraHintStarted()V

    return-void
.end method

.method public onCameraOn()V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onCameraOn()V

    return-void
.end method

.method public onExpansionFromPulseStopped()V
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onExpansionFromPulseStopped()V

    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onLeftAffordanceHintStarted()V

    return-void
.end method

.method public onLeftAffordanceOn()V
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onLeftAffordanceOn()V

    return-void
.end method

.method public onNotificationActive()V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationActive()V

    return-void
.end method

.method public onNotificationDismissed()V
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationDismissed()V

    return-void
.end method

.method public onNotificationDoubleTap(ZFF)V
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationDoubleTap(ZFF)V

    return-void
.end method

.method public onNotificationStartDismissing()V
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationStartDismissing()V

    return-void
.end method

.method public onNotificationStopDismissing()V
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationStopDismissing()V

    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificatonStartDraggingDown()V

    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificatonStartDraggingDown()V

    return-void
.end method

.method public onQsDown()V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onQsDown()V

    return-void
.end method

.method public onScreenOff()V
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenOff()V

    return-void
.end method

.method public onScreenOnFromTouch()V
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenOnFromTouch()V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenTurningOn()V

    return-void
.end method

.method public onStartExpandingFromPulse()V
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onStartExpandingFromPulse()V

    return-void
.end method

.method public onSuccessfulUnlock()V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onSuccessfulUnlock()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/FalsingManager;->onTouchEvent(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method public onTrackingStarted(Z)V
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->onTrackingStarted(Z)V

    return-void
.end method

.method public onTrackingStopped()V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onTrackingStopped()V

    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onUnlockHintStarted()V

    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public setNotificationExpanded()V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->setNotificationExpanded()V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->setQsExpanded(Z)V

    return-void
.end method

.method public setShowingAod(Z)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->setShowingAod(Z)V

    return-void
.end method

.method public shouldEnforceBouncer()Z
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result p0

    return p0
.end method
