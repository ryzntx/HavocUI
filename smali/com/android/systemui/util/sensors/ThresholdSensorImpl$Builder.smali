.class Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
.super Ljava/lang/Object;
.source "ThresholdSensorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/sensors/ThresholdSensorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private final mResources:Landroid/content/res/Resources;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorDelay:I

.field private final mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field private mSensorSet:Z

.field private mThresholdLatchValue:F

.field private mThresholdLatchValueSet:Z

.field private mThresholdSet:Z

.field private mThresholdValue:F


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/util/sensors/AsyncSensorManager;)V
    .locals 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 215
    iput v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorDelay:I

    .line 225
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mResources:Landroid/content/res/Resources;

    .line 226
    iput-object p2, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    return-void
.end method

.method private findSensorByType(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 3

    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 313
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    .line 315
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 316
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public build()Lcom/android/systemui/util/sensors/ThresholdSensor;
    .locals 8

    .line 291
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorSet:Z

    if-eqz v0, :cond_2

    .line 295
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdSet:Z

    if-eqz v0, :cond_1

    .line 299
    iget v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdValue:F

    iget v1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 304
    new-instance v0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v3, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdValue:F

    iget v5, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F

    iget v6, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorDelay:I

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;-><init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/Sensor;FFILcom/android/systemui/util/sensors/ThresholdSensorImpl$1;)V

    return-object v0

    .line 300
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Threshold must be less than or equal to Threshold Latch"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 296
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "A threshold was not successfully set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "A sensor was not successfully set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setSensor(Landroid/hardware/Sensor;)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensor:Landroid/hardware/Sensor;

    const/4 p1, 0x1

    .line 283
    iput-boolean p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorSet:Z

    return-object p0
.end method

.method setSensorDelay(I)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    .locals 0

    .line 231
    iput p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorDelay:I

    return-object p0
.end method

.method setSensorResourceId(I)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setSensorType(Ljava/lang/String;)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    return-object p0
.end method

.method setSensorType(Ljava/lang/String;)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->findSensorByType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setSensor(Landroid/hardware/Sensor;)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    :cond_0
    return-object p0
.end method

.method setThresholdLatchResourceId(I)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    .locals 1

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setThresholdLatchValue(F)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method setThresholdLatchValue(F)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    .locals 0

    .line 276
    iput p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F

    const/4 p1, 0x1

    .line 277
    iput-boolean p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValueSet:Z

    return-object p0
.end method

.method setThresholdResourceId(I)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    .locals 1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setThresholdValue(F)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method setThresholdValue(F)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    .locals 1

    .line 267
    iput p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdValue:F

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdSet:Z

    .line 269
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValueSet:Z

    if-nez v0, :cond_0

    .line 270
    iput p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F

    :cond_0
    return-object p0
.end method
