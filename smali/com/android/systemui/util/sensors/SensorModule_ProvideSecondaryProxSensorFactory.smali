.class public final Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProxSensorFactory;
.super Ljava/lang/Object;
.source "SensorModule_ProvideSecondaryProxSensorFactory.java"

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
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProxSensorFactory;->thresholdSensorBuilderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProxSensorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;",
            ">;)",
            "Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProxSensorFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProxSensorFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProxSensorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/ThresholdSensor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;",
            ">;)",
            "Lcom/android/systemui/util/sensors/ThresholdSensor;"
        }
    .end annotation

    .line 27
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProxSensorFactory;->proxyProvideSecondaryProxSensor(Ljava/lang/Object;)Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideSecondaryProxSensor(Ljava/lang/Object;)Lcom/android/systemui/util/sensors/ThresholdSensor;
    .locals 1

    .line 36
    check-cast p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    .line 37
    invoke-static {p0}, Lcom/android/systemui/util/sensors/SensorModule;->provideSecondaryProxSensor(Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;)Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 36
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/util/sensors/ThresholdSensor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/sensors/ThresholdSensor;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProxSensorFactory;->thresholdSensorBuilderProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProxSensorFactory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProxSensorFactory;->get()Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0

    return-object p0
.end method
