.class public final Lcom/google/android/systemui/assist/OpaEnabledDispatcher_Factory;
.super Ljava/lang/Object;
.source "OpaEnabledDispatcher_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/OpaEnabledDispatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final mStatusBarLazyAndLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
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
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaEnabledDispatcher_Factory;->mStatusBarLazyAndLazyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/OpaEnabledDispatcher_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)",
            "Lcom/google/android/systemui/assist/OpaEnabledDispatcher_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/google/android/systemui/assist/OpaEnabledDispatcher_Factory;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/OpaEnabledDispatcher_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/OpaEnabledDispatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)",
            "Lcom/google/android/systemui/assist/OpaEnabledDispatcher;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/google/android/systemui/assist/OpaEnabledDispatcher;

    .line 28
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/systemui/assist/OpaEnabledDispatcher;-><init>(Ldagger/Lazy;)V

    .line 30
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    .line 29
    invoke-static {v0, p0}, Lcom/google/android/systemui/assist/OpaEnabledDispatcher_MembersInjector;->injectMStatusBarLazy(Lcom/google/android/systemui/assist/OpaEnabledDispatcher;Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/assist/OpaEnabledDispatcher;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledDispatcher_Factory;->mStatusBarLazyAndLazyProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/google/android/systemui/assist/OpaEnabledDispatcher_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/OpaEnabledDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaEnabledDispatcher_Factory;->get()Lcom/google/android/systemui/assist/OpaEnabledDispatcher;

    move-result-object p0

    return-object p0
.end method
