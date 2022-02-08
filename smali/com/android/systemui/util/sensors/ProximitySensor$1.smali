.class Lcom/android/systemui/util/sensors/ProximitySensor$1;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/sensors/ProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/sensors/ProximitySensor;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/sensors/ProximitySensor;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-static {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$000(Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    return-void
.end method
