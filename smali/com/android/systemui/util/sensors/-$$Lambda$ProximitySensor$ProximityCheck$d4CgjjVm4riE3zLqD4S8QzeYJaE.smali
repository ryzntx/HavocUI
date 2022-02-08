.class public final synthetic Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ProximityCheck$d4CgjjVm4riE3zLqD4S8QzeYJaE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ProximityCheck$d4CgjjVm4riE3zLqD4S8QzeYJaE;->f$0:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;

    return-void
.end method


# virtual methods
.method public final onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/-$$Lambda$ProximitySensor$ProximityCheck$d4CgjjVm4riE3zLqD4S8QzeYJaE;->f$0:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;

    invoke-static {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->lambda$d4CgjjVm4riE3zLqD4S8QzeYJaE(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    return-void
.end method
