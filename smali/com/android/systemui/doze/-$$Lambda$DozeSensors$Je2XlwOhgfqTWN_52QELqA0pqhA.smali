.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeSensors$Je2XlwOhgfqTWN_52QELqA0pqhA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$Je2XlwOhgfqTWN_52QELqA0pqhA;->f$0:Lcom/android/systemui/doze/DozeSensors;

    return-void
.end method


# virtual methods
.method public final onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$Je2XlwOhgfqTWN_52QELqA0pqhA;->f$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeSensors;->lambda$new$0$DozeSensors(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    return-void
.end method
