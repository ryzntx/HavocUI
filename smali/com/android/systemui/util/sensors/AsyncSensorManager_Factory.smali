.class public final Lcom/android/systemui/util/sensors/AsyncSensorManager_Factory;
.super Ljava/lang/Object;
.source "AsyncSensorManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final pluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;"
        }
    .end annotation
.end field

.field private final sensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorManager;",
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
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager_Factory;->sensorManagerProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/AsyncSensorManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;)",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager_Factory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/android/systemui/util/sensors/AsyncSensorManager_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/sensors/AsyncSensorManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/AsyncSensorManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;)",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/sensors/AsyncSensorManager;-><init>(Landroid/hardware/SensorManager;Lcom/android/systemui/shared/plugins/PluginManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/sensors/AsyncSensorManager;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager_Factory;->sensorManagerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/util/sensors/AsyncSensorManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/AsyncSensorManager_Factory;->get()Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object p0

    return-object p0
.end method
