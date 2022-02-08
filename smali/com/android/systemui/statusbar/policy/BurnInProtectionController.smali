.class public Lcom/android/systemui/statusbar/policy/BurnInProtectionController;
.super Ljava/lang/Object;
.source "BurnInProtectionController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHorizontalMaxShift:I

.field private mHorizontalShift:I

.field private mHorizontalShiftStep:I

.field private final mLock:Ljava/lang/Object;

.field private mPhoneStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private final mShiftEnabled:Z

.field private final mShiftInterval:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTimer:Ljava/util/Timer;

.field private final mUiHandler:Landroid/os/Handler;

.field private mVerticalMaxShift:I

.field private mVerticalShift:I

.field private mVerticalShiftStep:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mLock:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mContext:Landroid/content/Context;

    .line 63
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mUiHandler:Landroid/os/Handler;

    .line 65
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 66
    sget v0, Lcom/android/systemui/R$bool;->config_statusBarBurnInProtection:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mShiftEnabled:Z

    .line 67
    sget v0, Lcom/android/systemui/R$integer;->config_shift_interval:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mShiftInterval:I

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mShiftEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mShiftEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mShiftInterval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mShiftInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->logD(Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->loadResources(Landroid/content/res/Resources;)V

    .line 72
    new-instance p1, Lcom/android/systemui/statusbar/policy/BurnInProtectionController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController$1;-><init>(Lcom/android/systemui/statusbar/policy/BurnInProtectionController;)V

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BurnInProtectionController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BurnInProtectionController;Landroid/content/res/Resources;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->loadResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/BurnInProtectionController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->shiftItems()V

    return-void
.end method

.method private synthetic lambda$shiftItems$0()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mPhoneStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    .line 148
    iget v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mHorizontalShift:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mVerticalShift:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->shiftStatusBarItems(II)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    iget v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mHorizontalShift:I

    iget p0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mVerticalShift:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->shiftNavigationBarItems(II)V

    :cond_1
    return-void
.end method

.method private loadResources(Landroid/content/res/Resources;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 114
    :try_start_0
    iput v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mVerticalShift:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mHorizontalShift:I

    .line 115
    sget v1, Lcom/android/systemui/R$dimen;->horizontal_max_shift:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mHorizontalMaxShift:I

    .line 116
    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mHorizontalShiftStep:I

    .line 117
    sget v1, Lcom/android/systemui/R$dimen;->vertical_max_shift:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mVerticalMaxShift:I

    .line 118
    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mVerticalShiftStep:I

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHorizontalMaxShift = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mHorizontalMaxShift:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHorizontalShiftStep = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mHorizontalShiftStep:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVerticalMaxShift = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mVerticalMaxShift:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVerticalShiftStep = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mVerticalShiftStep:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->logD(Ljava/lang/String;)V

    .line 123
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static logD(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private shiftItems()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mHorizontalShift:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mHorizontalShiftStep:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mHorizontalShift:I

    .line 129
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mHorizontalMaxShift:I

    if-ge v1, v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mHorizontalMaxShift:I

    neg-int v2, v2

    if-gt v1, v2, :cond_1

    :cond_0
    const-string v1, "shifting horizontal direction"

    .line 131
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->logD(Ljava/lang/String;)V

    .line 132
    iget v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mHorizontalShiftStep:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mHorizontalShiftStep:I

    .line 135
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mVerticalShift:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mVerticalShiftStep:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mVerticalShift:I

    .line 136
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mVerticalMaxShift:I

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mVerticalMaxShift:I

    neg-int v2, v2

    if-gt v1, v2, :cond_3

    :cond_2
    const-string v1, "shifting vertical direction"

    .line 138
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->logD(Ljava/lang/String;)V

    .line 139
    iget v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mVerticalShiftStep:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mVerticalShiftStep:I

    .line 141
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shifting items, mHorizontalShift = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mHorizontalShift:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVerticalShift = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mVerticalShift:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->logD(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$BurnInProtectionController$HcYZ_Jl-sj5h7X6QUphheJUSsko;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$BurnInProtectionController$HcYZ_Jl-sj5h7X6QUphheJUSsko;-><init>(Lcom/android/systemui/statusbar/policy/BurnInProtectionController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 141
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public synthetic lambda$shiftItems$0$BurnInProtectionController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->lambda$shiftItems$0()V

    return-void
.end method

.method public setPhoneStatusBarView(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mPhoneStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public startShiftTimer()V
    .locals 7

    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mShiftEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    const-string v0, "mTimer is set"

    .line 92
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->logD(Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mTimer:Ljava/util/Timer;

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/android/systemui/statusbar/policy/BurnInProtectionController$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController$2;-><init>(Lcom/android/systemui/statusbar/policy/BurnInProtectionController;)V

    const-wide/16 v3, 0x0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mShiftInterval:I

    int-to-long v5, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const-string p0, "Started swift timer"

    .line 101
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public stopShiftTimer()V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mShiftEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->mTimer:Ljava/util/Timer;

    const-string p0, "Cancelled swift timer"

    .line 109
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->logD(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
