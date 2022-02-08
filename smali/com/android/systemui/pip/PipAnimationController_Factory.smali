.class public final Lcom/android/systemui/pip/PipAnimationController_Factory;
.super Ljava/lang/Object;
.source "PipAnimationController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/pip/PipAnimationController;",
        ">;"
    }
.end annotation


# instance fields
.field private final helperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipSurfaceTransactionHelper;",
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
            "Lcom/android/systemui/pip/PipSurfaceTransactionHelper;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/systemui/pip/PipAnimationController_Factory;->helperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipAnimationController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipSurfaceTransactionHelper;",
            ">;)",
            "Lcom/android/systemui/pip/PipAnimationController_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/android/systemui/pip/PipAnimationController_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/PipAnimationController_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipAnimationController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pip/PipSurfaceTransactionHelper;",
            ">;)",
            "Lcom/android/systemui/pip/PipAnimationController;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/android/systemui/pip/PipAnimationController;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/PipAnimationController;-><init>(Lcom/android/systemui/pip/PipSurfaceTransactionHelper;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/pip/PipAnimationController;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/pip/PipAnimationController_Factory;->helperProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/pip/PipAnimationController_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/pip/PipAnimationController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipAnimationController_Factory;->get()Lcom/android/systemui/pip/PipAnimationController;

    move-result-object p0

    return-object p0
.end method
