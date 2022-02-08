.class public final Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;
.super Ljava/lang/Object;
.source "SensorModule_ProvidePrimaryProxSensorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/sensors/ThresholdSensor;",
        ">;"
    }
.end annotation


# instance fields
.field private final sensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private final thresholdSensorBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;->sensorManagerProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;->thresholdSensorBuilderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;",
            ">;)",
            "Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/ThresholdSensor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;",
            ">;)",
            "Lcom/android/systemui/util/sensors/ThresholdSensor;"
        }
    .end annotation

    .line 34
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    .line 33
    invoke-static {p0, p1}, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;->proxyProvidePrimaryProxSensor(Landroid/hardware/SensorManager;Ljava/lang/Object;)Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidePrimaryProxSensor(Landroid/hardware/SensorManager;Ljava/lang/Object;)Lcom/android/systemui/util/sensors/ThresholdSensor;
    .locals 0

    .line 46
    check-cast p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    .line 47
    invoke-static {p0, p1}, Lcom/android/systemui/util/sensors/SensorModule;->providePrimaryProxSensor(Landroid/hardware/SensorManager;Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;)Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 46
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/util/sensors/ThresholdSensor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/sensors/ThresholdSensor;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;->sensorManagerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;->thresholdSensorBuilderProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;->get()Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0

    return-object p0
.end method
