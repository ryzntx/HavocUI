.class public final Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule_ProvideBatteryControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/policy/BatteryController;",
        ">;"
    }
.end annotation


# instance fields
.field private final bgHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final currentUserContentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/CurrentUserContentResolverProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final enhancedEstimatesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/EnhancedEstimates;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final powerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/EnhancedEstimates;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/CurrentUserContentResolverProvider;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p2, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;->enhancedEstimatesProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;->powerManagerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p5, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p6, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;->bgHandlerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p7, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;->currentUserContentResolverProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/EnhancedEstimates;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/CurrentUserContentResolverProvider;",
            ">;)",
            "Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;"
        }
    .end annotation

    .line 89
    new-instance v8, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/EnhancedEstimates;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/CurrentUserContentResolverProvider;",
            ">;)",
            "Lcom/android/systemui/statusbar/policy/BatteryController;"
        }
    .end annotation

    .line 72
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 73
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/power/EnhancedEstimates;

    .line 74
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/os/PowerManager;

    .line 75
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 76
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Landroid/os/Handler;

    .line 77
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/os/Handler;

    .line 78
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/settings/CurrentUserContentResolverProvider;

    .line 71
    invoke-static/range {v0 .. v6}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;->proxyProvideBatteryController(Landroid/content/Context;Lcom/android/systemui/power/EnhancedEstimates;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/settings/CurrentUserContentResolverProvider;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideBatteryController(Landroid/content/Context;Lcom/android/systemui/power/EnhancedEstimates;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/settings/CurrentUserContentResolverProvider;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 0

    .line 108
    invoke-static/range {p0 .. p6}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule;->provideBatteryController(Landroid/content/Context;Lcom/android/systemui/power/EnhancedEstimates;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/settings/CurrentUserContentResolverProvider;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 107
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 7

    .line 53
    iget-object v0, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;->enhancedEstimatesProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;->powerManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;->mainHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;->bgHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;->currentUserContentResolverProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBatteryControllerFactory;->get()Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object p0

    return-object p0
.end method
