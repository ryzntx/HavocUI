.class public Lcom/android/systemui/util/sensors/ProximitySensor;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Lcom/android/systemui/util/sensors/ThresholdSensor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAlerting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCancelSecondaryRunnable:Ljava/lang/Runnable;

.field private final mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private mInitializedListeners:Z

.field mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLastPrimaryEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mPaused:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPrimaryEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

.field private final mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

.field private mRegistered:Z

.field private mSecondaryEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

.field private mSecondarySafe:Z

.field private final mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ProxSensor"

    const/4 v1, 0x3

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/sensors/ProximitySensor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mTag:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mAlerting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mInitializedListeners:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondarySafe:Z

    .line 77
    new-instance v0, Lcom/android/systemui/util/sensors/ProximitySensor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/sensors/ProximitySensor$1;-><init>(Lcom/android/systemui/util/sensors/ProximitySensor;)V

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    .line 84
    new-instance v0, Lcom/android/systemui/util/sensors/ProximitySensor$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/sensors/ProximitySensor$2;-><init>(Lcom/android/systemui/util/sensors/ProximitySensor;)V

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    .line 116
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 117
    iput-object p2, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 118
    iput-object p3, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->onPrimarySensorEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/util/sensors/ProximitySensor;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondarySafe:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/util/sensors/ProximitySensor;)Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastPrimaryEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/util/sensors/ProximitySensor;)Lcom/android/systemui/util/sensors/ThresholdSensor;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/util/sensors/ProximitySensor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mCancelSecondaryRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/util/sensors/ProximitySensor;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/util/sensors/ProximitySensor;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->onSensorEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    return-void
.end method

.method static synthetic lambda$alertListeners$0(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
    .locals 0

    .line 263
    invoke-interface {p1, p0}, Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;->onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    return-void
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 3

    .line 375
    sget-boolean v0, Lcom/android/systemui/util/sensors/ProximitySensor;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mTag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProxSensor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private onPrimarySensorEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 2

    .line 270
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastPrimaryEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastPrimaryEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    invoke-virtual {v1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 275
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastPrimaryEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    .line 277
    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Primary sensor is near. Checking secondary."

    .line 278
    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->logDebug(Ljava/lang/String;)V

    .line 279
    iget-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mCancelSecondaryRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    .line 280
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->resume()V

    goto :goto_1

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->isLoaded()Z

    move-result v0

    const-string v1, "Primary sensor event: "

    if-nez v0, :cond_2

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ". No secondary."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->logDebug(Ljava/lang/String;)V

    .line 288
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->onSensorEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private onSensorEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 2

    .line 293
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    invoke-virtual {v1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 298
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondarySafe:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->pause()V

    .line 302
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->alertListeners()V

    return-void
.end method


# virtual methods
.method public alertListeners()V
    .locals 3

    .line 255
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mAlerting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    if-eqz v0, :cond_1

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 262
    new-instance v2, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$YIb9ed46Gor5yTUSU7QnPvRXq1E;

    invoke-direct {v2, v0}, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$YIb9ed46Gor5yTUSU7QnPvRXq1E;-><init>(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 266
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mAlerting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public isLoaded()Z
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->isLoaded()Z

    move-result p0

    return p0
.end method

.method public isNear()Ljava/lang/Boolean;
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isRegistered()Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mRegistered:Z

    return p0
.end method

.method public pause()V
    .locals 1

    .line 140
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPaused:Z

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->unregisterInternal()V

    return-void
.end method

.method public register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
    .locals 2

    .line 188
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProxListener registered multiple times: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->registerInternal()V

    return-void
.end method

.method protected registerInternal()V
    .locals 3

    .line 202
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 203
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mRegistered:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mInitializedListeners:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    invoke-interface {v0, v2}, Lcom/android/systemui/util/sensors/ThresholdSensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->pause()V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    invoke-interface {v0, v2}, Lcom/android/systemui/util/sensors/ThresholdSensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 210
    iput-boolean v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mInitializedListeners:Z

    :cond_1
    const-string v0, "Registering sensor listener"

    .line 212
    invoke-direct {p0, v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->logDebug(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->resume()V

    .line 214
    iput-boolean v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mRegistered:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 150
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPaused:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->registerInternal()V

    return-void
.end method

.method public setDelay(I)V
    .locals 1

    .line 130
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {v0, p1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->setDelay(I)V

    .line 132
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {p0, p1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->setDelay(I)V

    return-void
.end method

.method public setSecondarySafe(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondarySafe:Z

    if-nez p1, :cond_0

    .line 161
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->pause()V

    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 3

    .line 123
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mTag:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":primary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->setTag(Ljava/lang/String;)V

    .line 125
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":secondary"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->setTag(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 310
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->isRegistered()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPaused:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->isNear()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    const-string/jumbo p0, "{registered=%s, paused=%s, near=%s, primarySensor=%s, secondarySensor=%s}"

    .line 308
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
    .locals 1

    .line 225
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 227
    iget-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->unregisterInternal()V

    :cond_0
    return-void
.end method

.method protected unregisterInternal()V
    .locals 2

    .line 233
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 234
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "unregistering sensor listener"

    .line 237
    invoke-direct {p0, v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->logDebug(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->pause()V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->pause()V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mCancelSecondaryRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 241
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 242
    iput-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mCancelSecondaryRunnable:Ljava/lang/Runnable;

    .line 244
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastPrimaryEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    .line 245
    iput-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mRegistered:Z

    return-void
.end method
