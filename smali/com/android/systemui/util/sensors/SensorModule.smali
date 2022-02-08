.class public Lcom/android/systemui/util/sensors/SensorModule;
.super Ljava/lang/Object;
.source "SensorModule.java"


# direct methods
.method static providePrimaryProxSensor(Landroid/hardware/SensorManager;Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;)Lcom/android/systemui/util/sensors/ThresholdSensor;
    .locals 1

    const/4 v0, 0x3

    .line 38
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setSensorDelay(I)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    sget v0, Lcom/android/systemui/R$string;->proximity_sensor_type:I

    .line 39
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setSensorResourceId(I)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    sget v0, Lcom/android/systemui/R$dimen;->proximity_sensor_threshold:I

    .line 40
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setThresholdResourceId(I)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    sget v0, Lcom/android/systemui/R$dimen;->proximity_sensor_threshold_latch:I

    .line 41
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setThresholdLatchResourceId(I)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    .line 42
    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->build()Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/16 v0, 0x8

    .line 44
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    .line 46
    invoke-virtual {p1, p0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setSensor(Landroid/hardware/Sensor;)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    if-eqz p0, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setThresholdValue(F)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    .line 48
    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->build()Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0

    return-object p0
.end method

.method static provideSecondaryProxSensor(Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;)Lcom/android/systemui/util/sensors/ThresholdSensor;
    .locals 1

    .line 57
    :try_start_0
    sget v0, Lcom/android/systemui/R$string;->proximity_sensor_secondary_type:I

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setSensorResourceId(I)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    sget v0, Lcom/android/systemui/R$dimen;->proximity_sensor_secondary_threshold:I

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setThresholdResourceId(I)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    sget v0, Lcom/android/systemui/R$dimen;->proximity_sensor_secondary_threshold_latch:I

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setThresholdLatchResourceId(I)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->build()Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setSensor(Landroid/hardware/Sensor;)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setThresholdValue(F)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->build()Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0

    return-object p0
.end method
