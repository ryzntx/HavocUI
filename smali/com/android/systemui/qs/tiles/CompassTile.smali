.class public Lcom/android/systemui/qs/tiles/CompassTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "CompassTile.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Landroid/hardware/SensorEventListener;"
    }
.end annotation


# instance fields
.field private mAcceleration:[F

.field private mAccelerationSensor:Landroid/hardware/Sensor;

.field private mActive:Z

.field private mGeomagnetic:[F

.field private mGeomagneticFieldSensor:Landroid/hardware/Sensor;

.field private mImage:Landroid/widget/ImageView;

.field private mListeningSensors:Z

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mActive:Z

    .line 57
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mAccelerationSensor:Landroid/hardware/Sensor;

    .line 59
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mGeomagneticFieldSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method private formatValueWithCardinalDirection(F)Ljava/lang/String;
    .locals 5

    float-to-double v0, p1

    const-wide v2, 0x4036800000000000L    # 22.5

    sub-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    rem-double/2addr v0, v2

    const-wide v2, 0x4046800000000000L    # 45.0

    div-double/2addr v0, v2

    .line 182
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    rem-int/lit8 v0, v0, 0x8

    .line 183
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$array;->cardinal_directions:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 186
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->quick_settings_compass_value:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aget-object p1, v1, v0

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setListeningSensors(Z)V
    .locals 2

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mListeningSensors:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 103
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mListeningSensors:Z

    if-eqz p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mAccelerationSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 107
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mGeomagneticFieldSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_compass_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_compass_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object p1

    const v0, 0x1020006

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7cf

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 116
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_compass_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mActive:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mActive:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mActive:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/CompassTile;->setListeningSensors(Z)V

    return-void
.end method

.method protected handleDestroy()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/CompassTile;->setListeningSensors(Z)V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    .line 74
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mImage:Landroid/widget/ImageView;

    return-void
.end method

.method public handleLongClick()V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CompassTile;->handleClick()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 176
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CompassTile;->setListeningSensors(Z)V

    .line 177
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mActive:Z

    :cond_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    .line 121
    :cond_0
    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 123
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mActive:Z

    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 124
    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_compass:I

    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 126
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    .line 127
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz p2, :cond_2

    .line 129
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/CompassTile;->formatValueWithCardinalDirection(F)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 131
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x43b40000    # 360.0f

    sub-float p2, v0, p2

    .line 132
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRotation()F

    move-result v1

    sub-float/2addr p2, v1

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    sub-float/2addr p2, v0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRotation()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    add-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    .line 138
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->quick_settings_compass_init:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 139
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 141
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->accessibility_quick_settings_compass_on:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_2

    .line 144
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->quick_settings_compass_label:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 145
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->accessibility_quick_settings_compass_off:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    .line 147
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 148
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mImage:Landroid/widget/ImageView;

    if-eqz p0, :cond_4

    .line 149
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CompassTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/util/custom/Utils;->deviceHasCompass(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .line 64
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CompassTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 193
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mAcceleration:[F

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mAcceleration:[F

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mAcceleration:[F

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mGeomagnetic:[F

    if-nez v0, :cond_2

    .line 202
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mGeomagnetic:[F

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mGeomagnetic:[F

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    const v3, 0x3f7851ec    # 0.97f

    .line 209
    aget v4, v0, v2

    mul-float/2addr v4, v3

    const v3, 0x3cf5c280    # 0.029999971f

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 212
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mActive:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mListeningSensors:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mAcceleration:[F

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mGeomagnetic:[F

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x9

    new-array v4, v2, [F

    new-array v2, v2, [F

    .line 219
    invoke-static {v4, v2, p1, v0}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    new-array p1, v3, [F

    .line 226
    invoke-static {v4, p1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 229
    aget p1, p1, v1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method
