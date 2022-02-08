.class public Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/sensors/ProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProximityCheck"
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

.field private final mRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSensor:Lcom/android/systemui/util/sensors/ProximitySensor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mCallbacks:Ljava/util/List;

    .line 323
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 327
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mSensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    const-string v0, "prox_check"

    .line 328
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->setTag(Ljava/lang/String;)V

    .line 329
    iput-object p2, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 330
    new-instance p1, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ProximityCheck$d4CgjjVm4riE3zLqD4S8QzeYJaE;

    invoke-direct {p1, p0}, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ProximityCheck$d4CgjjVm4riE3zLqD4S8QzeYJaE;-><init>(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;)V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    return-void
.end method

.method public static synthetic lambda$d4CgjjVm4riE3zLqD4S8QzeYJaE(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->onProximityEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    return-void
.end method

.method static synthetic lambda$onProximityEvent$0(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;Ljava/util/function/Consumer;)V
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 366
    :goto_0
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private onProximityEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mCallbacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ProximityCheck$we6vY_buMVwUj_CYRjP6Jhe6RHk;

    invoke-direct {v1, p1}, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ProximityCheck$we6vY_buMVwUj_CYRjP6Jhe6RHk;-><init>(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 368
    iget-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 369
    invoke-direct {p0}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->unregister()V

    .line 370
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private unregister()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mSensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/sensors/ProximitySensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 360
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public check(JLjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mSensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-virtual {v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 349
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object p3, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p3

    if-nez p3, :cond_1

    .line 353
    iget-object p3, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mSensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    invoke-virtual {p3, v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 354
    iget-object p3, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p3, p0, p1, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public run()V
    .locals 1

    .line 340
    invoke-direct {p0}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->unregister()V

    const/4 v0, 0x0

    .line 341
    invoke-direct {p0, v0}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->onProximityEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    return-void
.end method
