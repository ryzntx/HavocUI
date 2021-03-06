.class public final Lcom/android/systemui/dagger/SystemServicesModule_ProvideAppLockManagerFactory;
.super Ljava/lang/Object;
.source "SystemServicesModule_ProvideAppLockManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/app/AppLockManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideAppLockManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideAppLockManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/dagger/SystemServicesModule_ProvideAppLockManagerFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideAppLockManagerFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideAppLockManagerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Landroid/app/AppLockManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Landroid/app/AppLockManager;"
        }
    .end annotation

    .line 27
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideAppLockManagerFactory;->proxyProvideAppLockManager(Landroid/content/Context;)Landroid/app/AppLockManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideAppLockManager(Landroid/content/Context;)Landroid/app/AppLockManager;
    .locals 1

    .line 37
    invoke-static {p0}, Lcom/android/systemui/dagger/SystemServicesModule;->provideAppLockManager(Landroid/content/Context;)Landroid/app/AppLockManager;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 36
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/app/AppLockManager;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/app/AppLockManager;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/dagger/SystemServicesModule_ProvideAppLockManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideAppLockManagerFactory;->provideInstance(Ljavax/inject/Provider;)Landroid/app/AppLockManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/dagger/SystemServicesModule_ProvideAppLockManagerFactory;->get()Landroid/app/AppLockManager;

    move-result-object p0

    return-object p0
.end method
