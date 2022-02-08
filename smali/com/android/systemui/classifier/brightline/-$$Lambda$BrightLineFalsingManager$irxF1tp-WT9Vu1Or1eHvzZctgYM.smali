.class public final synthetic Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$irxF1tp-WT9Vu1Or1eHvzZctgYM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$irxF1tp-WT9Vu1Or1eHvzZctgYM;->f$0:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$irxF1tp-WT9Vu1Or1eHvzZctgYM;->f$0:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    check-cast p1, Lcom/android/systemui/classifier/brightline/FalsingClassifier;

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->lambda$onProximityEvent$3(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;Lcom/android/systemui/classifier/brightline/FalsingClassifier;)V

    return-void
.end method
