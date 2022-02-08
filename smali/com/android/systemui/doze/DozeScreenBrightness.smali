.class public Lcom/android/systemui/doze/DozeScreenBrightness;
.super Landroid/content/BroadcastReceiver;
.source "DozeScreenBrightness.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final DEBUG_AOD_BRIGHTNESS:Z


# instance fields
.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mContext:Landroid/content/Context;

.field private mDebugBrightnessBucket:I

.field private final mDebuggable:Z

.field private mDefaultDozeBrightness:I

.field private mDefaultPulseBrightness:I

.field private final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private final mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

.field private final mHandler:Landroid/os/Handler;

.field private mLastSensorValue:I

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mPaused:Z

.field private mRegistered:Z

.field private mScreenOff:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorToBrightness:[I

.field private final mSensorToScrimOpacity:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.aod_brightness"

    const/4 v1, 0x0

    .line 44
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeScreenBrightness;->DEBUG_AOD_BRIGHTNESS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;I[I[IZI)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 81
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mPaused:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenOff:Z

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    .line 74
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebugBrightnessBucket:I

    .line 82
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 84
    iput-object p3, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorManager:Landroid/hardware/SensorManager;

    .line 85
    iput-object p4, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensor:Landroid/hardware/Sensor;

    .line 86
    iput-object p5, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 87
    iput-object p6, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 88
    iput-object p7, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mHandler:Landroid/os/Handler;

    .line 89
    iput-boolean p11, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebuggable:Z

    .line 91
    iput p8, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDefaultDozeBrightness:I

    .line 92
    iput-object p9, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToBrightness:[I

    .line 93
    iput-object p10, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToScrimOpacity:[I

    if-eq p12, v0, :cond_0

    move p8, p12

    .line 94
    :cond_0
    iput p8, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDefaultPulseBrightness:I

    .line 96
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebuggable:Z

    if-eqz p1, :cond_1

    .line 97
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.android.systemui.doze.AOD_BRIGHTNESS"

    .line 98
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, p0, p1, p7, p3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V
    .locals 16

    move-object/from16 v0, p8

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iget-object v12, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->screenBrightnessArray:[I

    iget-object v13, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->dimmingScrimArray:[I

    sget-boolean v14, Lcom/android/systemui/doze/DozeScreenBrightness;->DEBUG_AOD_BRIGHTNESS:Z

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 107
    invoke-direct/range {v3 .. v15}, Lcom/android/systemui/doze/DozeScreenBrightness;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;I[I[IZI)V

    return-void
.end method

.method private clampToUserSetting(I)I
    .locals 3

    .line 239
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness"

    const v1, 0x7fffffff

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 242
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private computeBrightness(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 204
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToBrightness:[I

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private computeScrimOpacity(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 197
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToScrimOpacity:[I

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private getDozeBrightnessValue()I
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDefaultDozeBrightness:I

    const-string v1, "doze_brightness"

    const/4 v2, -0x2

    invoke-static {v0, v1, p0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private getPulseBrightnessValue()I
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDefaultPulseBrightness:I

    const-string v1, "pulse_brightness"

    const/4 v2, -0x2

    invoke-static {v0, v1, p0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebuggable:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private resetBrightnessToDefault()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeScreenBrightness;->getDozeBrightnessValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeScreenBrightness;->clampToUserSetting(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    .line 216
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    return-void
.end method

.method private setBrightnessToValue(I)V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_brightness_force"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->clampToUserSetting(I)I

    move-result p1

    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    return-void
.end method

.method private setLightSensorEnabled(Z)V
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 246
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    .line 250
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 251
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-eqz p1, :cond_1

    .line 252
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 253
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    .line 254
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    :cond_1
    :goto_0
    return-void
.end method

.method private setPaused(Z)V
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mPaused:Z

    if-eq v0, p1, :cond_0

    .line 261
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mPaused:Z

    const/4 p1, 0x0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V

    :cond_0
    return-void
.end method

.method private setScreenOff(Z)V
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenOff:Z

    if-eq v0, p1, :cond_0

    .line 268
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenOff:Z

    const/4 p1, 0x1

    .line 269
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V

    :cond_0
    return-void
.end method

.method private updateBrightnessAndReady(Z)V
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 173
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebugBrightnessBucket:I

    if-eq p1, v0, :cond_6

    .line 174
    :cond_0
    iget p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebugBrightnessBucket:I

    if-ne p1, v0, :cond_1

    .line 175
    iget p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    .line 176
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->computeBrightness(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    .line 179
    iget-object v4, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeScreenBrightness;->clampToUserSetting(I)I

    move-result v1

    invoke-interface {v4, v1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    .line 183
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    .line 188
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->computeScrimOpacity(I)I

    move-result v0

    :cond_5
    :goto_1
    if-ltz v0, :cond_6

    .line 191
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    int-to-float p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    invoke-interface {p0, p1}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    :cond_6
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "brightness_bucket"

    const/4 v0, -0x1

    .line 275
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebugBrightnessBucket:I

    const/4 p1, 0x0

    .line 276
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V

    return-void
.end method

.method public onScreenState(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 148
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 146
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    :goto_1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DozeScreenBrightness.onSensorChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 163
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    .line 165
    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 169
    throw p0
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 2

    .line 117
    sget-object p1, Lcom/android/systemui/doze/DozeScreenBrightness$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeScreenBrightness;->onDestroy()V

    goto :goto_0

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeScreenBrightness;->getPulseBrightnessValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->setBrightnessToValue(I)V

    goto :goto_0

    .line 128
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeScreenBrightness;->getDozeBrightnessValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->setBrightnessToValue(I)V

    goto :goto_0

    .line 122
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-nez p1, :cond_4

    .line 123
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    .line 125
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeScreenBrightness;->resetBrightnessToDefault()V

    .line 137
    :goto_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p2, p1, :cond_7

    .line 138
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v1, 0x0

    if-ne p2, p1, :cond_5

    move p1, v0

    goto :goto_1

    :cond_5
    move p1, v1

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->setScreenOff(Z)V

    .line 139
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeScreenBrightness;->setPaused(Z)V

    :cond_7
    return-void
.end method
