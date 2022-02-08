.class public Lcom/android/systemui/biometrics/FODCircleView;
.super Landroid/widget/ImageView;
.source "FODCircleView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;,
        Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;
    }
.end annotation


# instance fields
.field private mBurnInProtectionTimer:Ljava/util/Timer;

.field private mCanUnlockWithFp:Z

.field private mContext:Landroid/content/Context;

.field private mCustomSettingsObserver:Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;

.field private mCutoutMasked:Z

.field private final mDreamingMaxOffset:I

.field private mDreamingOffsetY:I

.field private final mFODAnimation:Lcom/android/systemui/biometrics/FODAnimation;

.field private mFading:Z

.field private mFingerprintInscreenCallback:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback;

.field private mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

.field private mFpDisabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsAssistantVisible:Z

.field private mIsBiometricRunning:Z

.field private mIsBouncer:Z

.field private mIsCircleShowing:Z

.field private mIsDreaming:Z

.field private mIsKeyguard:Z

.field private mIsRecognizingAnimEnabled:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mNavigationBarSize:I

.field private final mPaintFingerprint:Landroid/graphics/Paint;

.field private final mPaintFingerprintBackground:Landroid/graphics/Paint;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mPositionX:I

.field private final mPositionY:I

.field private final mPressedParams:Landroid/view/WindowManager$LayoutParams;

.field private final mPressedView:Landroid/widget/ImageView;

.field private mScreenOffFodEnabled:Z

.field private mScreenOffFodIconEnabled:Z

.field private final mShouldBoostBrightness:Z

.field private mShouldRemoveIconOnAOD:Z

.field private final mSize:I

.field private mStatusbarHeight:I

.field private final mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mTouchedOutside:Z

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .line 322
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPaintFingerprintBackground:Landroid/graphics/Paint;

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPaintFingerprint:Landroid/graphics/Paint;

    .line 82
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 83
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsAssistantVisible:Z

    .line 115
    new-instance v0, Lcom/android/systemui/biometrics/FODCircleView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/FODCircleView$1;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFingerprintInscreenCallback:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback;

    .line 130
    new-instance v0, Lcom/android/systemui/biometrics/FODCircleView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/FODCircleView$2;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 261
    new-instance v0, Lcom/android/systemui/biometrics/FODCircleView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/FODCircleView$3;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 323
    iput-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mContext:Landroid/content/Context;

    .line 325
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    :try_start_0
    invoke-interface {v0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->shouldBoostBrightness()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mShouldBoostBrightness:Z

    .line 334
    invoke-interface {v0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->getPositionX()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionX:I

    .line 335
    invoke-interface {v0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->getPositionY()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionY:I

    .line 336
    invoke-interface {v0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->getSize()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mSize:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPaintFingerprint:Landroid/graphics/Paint;

    sget v2, Lcom/android/systemui/R$color;->config_fodColor:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPaintFingerprint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 346
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPaintFingerprintBackground:Landroid/graphics/Paint;

    sget v4, Lcom/android/systemui/R$color;->config_fodColorBackground:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPaintFingerprintBackground:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 349
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mWindowManager:Landroid/view/WindowManager;

    .line 351
    sget v1, Lcom/android/systemui/R$dimen;->navigation_bar_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mNavigationBarSize:I

    .line 353
    iget v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mSize:I

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingMaxOffset:I

    .line 355
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mHandler:Landroid/os/Handler;

    .line 357
    new-instance v0, Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;-><init>(Lcom/android/systemui/biometrics/FODCircleView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mCustomSettingsObserver:Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;

    .line 358
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;->update()V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mSize:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 361
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    .line 362
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v1, "android"

    .line 364
    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/16 v1, 0x7fb

    .line 365
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const v1, 0x40108

    .line 366
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x33

    .line 369
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 371
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 372
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7fc

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 373
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x40002

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 376
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "Fingerprint on display"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "Fingerprint on display.touched"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 379
    new-instance v0, Lcom/android/systemui/biometrics/FODCircleView$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/biometrics/FODCircleView$4;-><init>(Lcom/android/systemui/biometrics/FODCircleView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedView:Landroid/widget/ImageView;

    .line 388
    sget v1, Lcom/android/systemui/R$drawable;->fod_icon_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->updateSettings()V

    .line 393
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->updatePosition()V

    .line 394
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->hide()V

    .line 396
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 398
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 399
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 401
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->updateCutoutFlags()V

    .line 402
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 404
    new-instance v0, Lcom/android/systemui/biometrics/FODAnimation;

    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionY:I

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/biometrics/FODAnimation;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFODAnimation:Lcom/android/systemui/biometrics/FODAnimation;

    return-void

    .line 338
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to retrieve FOD circle position or size"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 329
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to get IFingerprintInscreen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/os/Handler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/FODCircleView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsBiometricRunning:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/biometrics/FODCircleView;)F
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->getFODAlpha()F

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/biometrics/FODCircleView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsBiometricRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/biometrics/FODCircleView;)Lcom/android/systemui/biometrics/FODAnimation;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFODAnimation:Lcom/android/systemui/biometrics/FODAnimation;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/biometrics/FODCircleView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsRecognizingAnimEnabled:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/biometrics/FODCircleView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsBouncer:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/biometrics/FODCircleView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/biometrics/FODCircleView;I)Z
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/FODCircleView;->isPinOrPattern(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/biometrics/FODCircleView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsAssistantVisible:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/android/systemui/biometrics/FODCircleView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsAssistantVisible:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/content/Context;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/biometrics/FODCircleView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mScreenOffFodEnabled:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/biometrics/FODCircleView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mScreenOffFodEnabled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/biometrics/FODCircleView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mScreenOffFodIconEnabled:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/android/systemui/biometrics/FODCircleView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mScreenOffFodIconEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/FODCircleView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFpDisabled:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/biometrics/FODCircleView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsCircleShowing:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/biometrics/FODCircleView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFpDisabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/biometrics/FODCircleView;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mSize:I

    return p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/graphics/Paint;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPaintFingerprint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/android/systemui/biometrics/FODCircleView;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingOffsetY:I

    return p1
.end method

.method static synthetic access$2320(Lcom/android/systemui/biometrics/FODCircleView;I)I
    .locals 1

    .line 71
    iget v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingOffsetY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingOffsetY:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/biometrics/FODCircleView;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingMaxOffset:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/biometrics/FODCircleView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsDreaming:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/biometrics/FODCircleView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsKeyguard:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/biometrics/FODCircleView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsKeyguard:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/biometrics/FODCircleView;)Ljava/util/Timer;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mBurnInProtectionTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/biometrics/FODCircleView;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mBurnInProtectionTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/biometrics/FODCircleView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mShouldRemoveIconOnAOD:Z

    return p0
.end method

.method static synthetic access$702(Lcom/android/systemui/biometrics/FODCircleView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mShouldRemoveIconOnAOD:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/biometrics/FODCircleView;Z)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/FODCircleView;->resetFODIcon(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/biometrics/FODCircleView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->updatePosition()V

    return-void
.end method

.method private canUnlockWithFp()V
    .locals 3

    .line 637
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible()Z

    move-result v0

    .line 638
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 639
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFpDisabled:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/biometrics/FODCircleView;->mCanUnlockWithFp:Z

    .line 642
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFODAnimation:Lcom/android/systemui/biometrics/FODAnimation;

    invoke-virtual {p0, v2}, Lcom/android/systemui/biometrics/FODAnimation;->setCanUnlock(Z)V

    return-void
.end method

.method private getFODAlpha()F
    .locals 2

    .line 630
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->canUnlockWithFp()V

    .line 631
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsDreaming:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    move v0, v1

    .line 632
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mCanUnlockWithFp:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x3ecccccd    # 0.4f

    :goto_1
    mul-float/2addr v0, v1

    return v0
.end method

.method private isPinOrPattern(I)Z
    .locals 0

    .line 725
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0

    const/high16 p1, 0x10000

    if-eq p0, p1, :cond_0

    const/high16 p1, 0x20000

    if-eq p0, p1, :cond_0

    const/high16 p1, 0x30000

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$getFingerprintInScreenDaemon$1(J)V
    .locals 0

    const/4 p1, 0x0

    .line 472
    iput-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    return-void
.end method

.method private synthetic lambda$hide$10()V
    .locals 1

    const/16 v0, 0x8

    .line 618
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 619
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFading:Z

    return-void
.end method

.method private synthetic lambda$hide$11()V
    .locals 0

    .line 625
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->dispatchHide()V

    return-void
.end method

.method private synthetic lambda$hide$9()V
    .locals 1

    const/4 v0, 0x1

    .line 614
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFading:Z

    return-void
.end method

.method private synthetic lambda$hideCircle$4()V
    .locals 0

    .line 549
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->dispatchRelease()V

    return-void
.end method

.method private synthetic lambda$hideCircle$5()V
    .locals 0

    .line 554
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFODAnimation:Lcom/android/systemui/biometrics/FODAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODAnimation;->hideFODAnimation()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$0()V
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFODAnimation:Lcom/android/systemui/biometrics/FODAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODAnimation;->hideFODAnimation()V

    return-void
.end method

.method private synthetic lambda$show$6()V
    .locals 1

    const/4 v0, 0x1

    .line 603
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFading:Z

    return-void
.end method

.method private synthetic lambda$show$7()V
    .locals 1

    const/4 v0, 0x0

    .line 606
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFading:Z

    return-void
.end method

.method private synthetic lambda$show$8()V
    .locals 0

    .line 609
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->dispatchShow()V

    return-void
.end method

.method private synthetic lambda$showCircle$2()V
    .locals 0

    .line 527
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->dispatchPress()V

    return-void
.end method

.method private synthetic lambda$showCircle$3()V
    .locals 0

    .line 534
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFODAnimation:Lcom/android/systemui/biometrics/FODAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODAnimation;->showFODAnimation()V

    return-void
.end method

.method private resetFODIcon(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->setFODIcon()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 564
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private setDim(Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 692
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 v0, 0x64

    const-string v1, "screen_brightness"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    .line 696
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object v1

    .line 698
    :try_start_0
    invoke-interface {v1, p1}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->getDimAmount(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :catch_0
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mShouldBoostBrightness:Z

    if-eqz p1, :cond_0

    .line 704
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 707
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 708
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 709
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 711
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 714
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mShouldBoostBrightness:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 715
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 717
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 718
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 719
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedView:Landroid/widget/ImageView;

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private setFODIcon()V
    .locals 1

    .line 569
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsDreaming:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mShouldRemoveIconOnAOD:Z

    if-eqz v0, :cond_0

    return-void

    .line 573
    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->fod_icon_default:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateCutoutFlags()V
    .locals 2

    .line 764
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105025f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mStatusbarHeight:I

    .line 766
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 768
    iget-boolean v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mCutoutMasked:Z

    if-eq v1, v0, :cond_0

    .line 769
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mCutoutMasked:Z

    .line 770
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->updatePosition()V

    :cond_0
    return-void
.end method

.method private updatePosition()V
    .locals 4

    .line 647
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 649
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 650
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 652
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 653
    iget-boolean v2, p0, Lcom/android/systemui/biometrics/FODCircleView;->mCutoutMasked:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/biometrics/FODCircleView;->mStatusbarHeight:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 669
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mNavigationBarSize:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 670
    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionX:I

    goto :goto_2

    .line 673
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 665
    :cond_2
    iget v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionX:I

    .line 666
    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionY:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/biometrics/FODCircleView;->mSize:I

    sub-int/2addr v1, v3

    goto :goto_1

    .line 661
    :cond_3
    iget v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionY:I

    .line 662
    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionX:I

    goto :goto_1

    .line 657
    :cond_4
    iget v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionX:I

    .line 658
    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPositionY:I

    :goto_1
    sub-int/2addr v1, v2

    .line 676
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FODCircleView;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 677
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 679
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsDreaming:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsCircleShowing:Z

    if-nez v0, :cond_5

    .line 680
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mDreamingOffsetY:I

    add-int/2addr v0, v1

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 683
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 686
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPressedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method private updateSettings()V
    .locals 3

    .line 739
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fod_recognizing_animation"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsRecognizingAnimEnabled:Z

    .line 741
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFODAnimation:Lcom/android/systemui/biometrics/FODAnimation;

    if-eqz p0, :cond_1

    .line 742
    invoke-virtual {p0, v2}, Lcom/android/systemui/biometrics/FODAnimation;->update(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchHide()V
    .locals 0

    .line 511
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object p0

    .line 513
    :try_start_0
    invoke-interface {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->onHideFODView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dispatchPress()V
    .locals 1

    .line 483
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFading:Z

    if-eqz v0, :cond_0

    return-void

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object p0

    .line 486
    :try_start_0
    invoke-interface {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->onPress()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dispatchRelease()V
    .locals 0

    .line 493
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object p0

    .line 495
    :try_start_0
    invoke-interface {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->onRelease()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dispatchShow()V
    .locals 0

    .line 502
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object p0

    .line 504
    :try_start_0
    invoke-interface {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->onShowFODView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;
    .locals 4

    .line 466
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    if-nez v0, :cond_0

    .line 468
    :try_start_0
    invoke-static {}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->getService()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    if-eqz v0, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFingerprintInscreenCallback:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback;

    invoke-interface {v0, v1}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->setCallback(Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback;)V

    .line 471
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    invoke-interface {v0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$K9dg8uI6wzQAnUCk_xlM_lxzNPs;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$K9dg8uI6wzQAnUCk_xlM_lxzNPs;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    return-object p0
.end method

.method public hide()V
    .locals 3

    .line 614
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$QCVnULFNRswTVZcV5c13AoQcmUk;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$QCVnULFNRswTVZcV5c13AoQcmUk;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 615
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x7d

    .line 616
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$PRPPucgvH9Msd7bX6u0gi4tZaC4;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$PRPPucgvH9Msd7bX6u0gi4tZaC4;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    .line 617
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 622
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mCustomSettingsObserver:Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;->unobserve()V

    .line 623
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->hideCircle()V

    .line 624
    new-instance v0, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$QyiCRNiKvhlgBa7tnZBsefVmlGA;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$QyiCRNiKvhlgBa7tnZBsefVmlGA;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public hideCircle()V
    .locals 3

    const/4 v0, 0x0

    .line 543
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsCircleShowing:Z

    .line 545
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->setFODIcon()V

    .line 546
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 548
    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$GAGwwnzvBTVf_CP-njis-J7G7GQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$GAGwwnzvBTVf_CP-njis-J7G7GQ;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 551
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/FODCircleView;->setDim(Z)V

    .line 553
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFODAnimation:Lcom/android/systemui/biometrics/FODAnimation;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsRecognizingAnimEnabled:Z

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$cduMXGn1e8W2XBRMhjQ5M74cw8A;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$cduMXGn1e8W2XBRMhjQ5M74cw8A;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setKeepScreenOn(Z)V

    return-void
.end method

.method public synthetic lambda$getFingerprintInScreenDaemon$1$FODCircleView(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/FODCircleView;->lambda$getFingerprintInScreenDaemon$1(J)V

    return-void
.end method

.method public synthetic lambda$hide$10$FODCircleView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->lambda$hide$10()V

    return-void
.end method

.method public synthetic lambda$hide$11$FODCircleView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->lambda$hide$11()V

    return-void
.end method

.method public synthetic lambda$hide$9$FODCircleView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->lambda$hide$9()V

    return-void
.end method

.method public synthetic lambda$hideCircle$4$FODCircleView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->lambda$hideCircle$4()V

    return-void
.end method

.method public synthetic lambda$hideCircle$5$FODCircleView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->lambda$hideCircle$5()V

    return-void
.end method

.method public synthetic lambda$onTouchEvent$0$FODCircleView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->lambda$onTouchEvent$0()V

    return-void
.end method

.method public synthetic lambda$show$6$FODCircleView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->lambda$show$6()V

    return-void
.end method

.method public synthetic lambda$show$7$FODCircleView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->lambda$show$7()V

    return-void
.end method

.method public synthetic lambda$show$8$FODCircleView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->lambda$show$8()V

    return-void
.end method

.method public synthetic lambda$showCircle$2$FODCircleView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->lambda$showCircle$2()V

    return-void
.end method

.method public synthetic lambda$showCircle$3$FODCircleView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->lambda$showCircle$3()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 409
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 411
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 461
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->updateSettings()V

    .line 462
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->updatePosition()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 416
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 418
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 423
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsCircleShowing:Z

    if-nez v0, :cond_0

    .line 424
    iget v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mSize:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/android/systemui/biometrics/FODCircleView;->mPaintFingerprintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 426
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    .line 760
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->updateCutoutFlags()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v0, 0x0

    .line 432
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/4 v2, 0x1

    .line 433
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-lez v5, :cond_0

    .line 435
    iget v5, p0, Lcom/android/systemui/biometrics/FODCircleView;->mSize:I

    int-to-float v6, v5

    cmpg-float v1, v1, v6

    if-gez v1, :cond_0

    cmpl-float v1, v3, v4

    if-lez v1, :cond_0

    int-to-float v1, v5

    cmpg-float v1, v3, v1

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 436
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mTouchedOutside:Z

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 439
    iput-boolean v2, p0, Lcom/android/systemui/biometrics/FODCircleView;->mTouchedOutside:Z

    return v2

    .line 443
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 444
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->showCircle()V

    return v2

    .line 446
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 447
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->hideCircle()V

    return v2

    .line 449
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    return v2

    .line 453
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFODAnimation:Lcom/android/systemui/biometrics/FODAnimation;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsRecognizingAnimEnabled:Z

    if-eqz p1, :cond_5

    .line 454
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$2f9sdUur-Lzw5STJnqBMMXKNrAY;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$2f9sdUur-Lzw5STJnqBMMXKNrAY;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return v0
.end method

.method public show()V
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 582
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsBouncer:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/FODCircleView;->isPinOrPattern(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 587
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsKeyguard:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 592
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsAssistantVisible:Z

    if-eqz v0, :cond_3

    return-void

    .line 597
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->updateSettings()V

    .line 598
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->updatePosition()V

    .line 599
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mCustomSettingsObserver:Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;->observe()V

    .line 600
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mCustomSettingsObserver:Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;->update()V

    const/4 v0, 0x0

    .line 602
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$HtYkd-0NbTdkp_ywjNzlu8hriL8;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$HtYkd-0NbTdkp_ywjNzlu8hriL8;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 604
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->getFODAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x7d

    .line 605
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$G8zwaA4l_HpnVq3Lzy8lpyh_1no;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$G8zwaA4l_HpnVq3Lzy8lpyh_1no;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    .line 606
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 607
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 608
    new-instance v0, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$9aNQ5P7ownel8e_OcU1t3lkz3tU;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$9aNQ5P7ownel8e_OcU1t3lkz3tU;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public showCircle()V
    .locals 2

    .line 520
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFading:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mTouchedOutside:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mCanUnlockWithFp:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 521
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsCircleShowing:Z

    .line 523
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setKeepScreenOn(Z)V

    .line 525
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/FODCircleView;->setDim(Z)V

    .line 526
    new-instance v0, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$6a0rf3rJkqyuRkQEqGAlaWR3_KQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$6a0rf3rJkqyuRkQEqGAlaWR3_KQ;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 530
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mFODAnimation:Lcom/android/systemui/biometrics/FODAnimation;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsRecognizingAnimEnabled:Z

    if-eqz v0, :cond_2

    .line 531
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mIsDreaming:Z

    if-eqz v0, :cond_1

    .line 532
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->updatePosition()V

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$YLvbhBLObMPQpop7x5UXvjiV86k;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$YLvbhBLObMPQpop7x5UXvjiV86k;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 v0, 0x0

    .line 537
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 538
    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView;->updatePosition()V

    .line 539
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method public triggerFodIconAnimation()V
    .locals 2

    .line 775
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->fod_icon_default_animated:I

    .line 776
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 777
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 778
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method
