.class public final synthetic Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$bnOLkgKXe1jNMv3ZNAZlbz_YdRU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$bnOLkgKXe1jNMv3ZNAZlbz_YdRU;->f$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;

    return-void
.end method


# virtual methods
.method public final onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$bnOLkgKXe1jNMv3ZNAZlbz_YdRU;->f$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->lambda$bnOLkgKXe1jNMv3ZNAZlbz_YdRU(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    return-void
.end method
