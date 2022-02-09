.class public Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final PERCENTAGE_MODE_INSIDE:I = 0x1

.field public static final PERCENTAGE_MODE_OFF:I = 0x0

.field public static final PERCENTAGE_MODE_OUTSIDE:I = 0x2

.field public static final STYLE_CIRCLE:I = 0x2

.field public static final STYLE_GONE:I = 0x4

.field public static final STYLE_ICON_LANDSCAPE:I = 0x5

.field public static final STYLE_ICON_PORTRAIT:I = 0x0

.field public static final STYLE_TEXT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "BatteryController"


# instance fields
.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCharged:Z

.field private mCharging:Z

.field private mLevel:I

.field private mObserver:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;

.field private mPercentMode:I

.field private mPluggedIn:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPowerSave:Z

.field private mPresent:Z

.field private mStyle:I

.field private mUserId:I


# direct methods
.method static final constructor <clinit>()V
    .locals 2

    const-string v0, "BatteryController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->updatePowerSave()V

    new-instance v0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mObserver:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mObserver:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->observe()V

    return-void
.end method

.method static synthetic access$1000018(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->fireSettingsChanged()V

    return-void
.end method

.method static synthetic access$L1000010(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mStyle:I

    return v0
.end method

.method static synthetic access$L1000011(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPercentMode:I

    return v0
.end method

.method static synthetic access$L1000012(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mUserId:I

    return v0
.end method

.method static synthetic access$S1000010(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mStyle:I

    return-void
.end method

.method static synthetic access$S1000011(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPercentMode:I

    return-void
.end method

.method static synthetic access$S1000012(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mUserId:I

    return-void
.end method

.method private fireBatteryLevelChanged()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPresent:Z

    iget v4, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mLevel:I

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPluggedIn:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mCharging:Z

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;->onBatteryLevelChanged(ZIZZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private firePowerSaveChanged()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;->onPowerSaveChanged()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private fireSettingsChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mStyle:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPercentMode:I

    invoke-interface {v0, v3, v4}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;->onBatteryStyleChanged(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private setPowerSave(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPowerSave:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPowerSave:Z

    if-nez v0, :cond_0

    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPowerSave:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v1, "BatteryController"

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Power save is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPowerSave:Z

    if-eqz v0, :cond_4

    const-string v0, "on"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->firePowerSaveChanged()V

    goto :goto_0

    :cond_4
    const-string v0, "off"

    goto :goto_1
.end method

.method private updatePowerSave()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->setPowerSave(Z)V

    return-void
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPresent:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mLevel:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPluggedIn:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mCharging:Z

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;->onBatteryLevelChanged(ZIZZ)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mStyle:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPercentMode:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;->onBatteryStyleChanged(II)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "BatteryController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mPresent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPresent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mPluggedIn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPluggedIn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mCharging="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mCharging:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mCharged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mCharged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mPowerSave="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPowerSave:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public isPowerSave()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPowerSave:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/high16 v0, 0x42c80000    # 100.0f

    const-string v3, "level"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mLevel:I

    const-string v0, "present"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPresent:Z

    const-string v0, "plugged"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mPluggedIn:Z

    const-string v0, "status"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v0, 0x5

    if-eq v3, v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mCharged:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mCharged:Z

    if-nez v0, :cond_3

    const/4 v0, 0x2

    if-eq v3, v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mCharging:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->fireBatteryLevelChanged()V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->updatePowerSave()V

    goto :goto_3

    :cond_5
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mode"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->setPowerSave(Z)V

    goto :goto_3
.end method

.method public removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setUserId(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput p1, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mUserId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->mObserver:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->observe()V

    return-void
.end method
