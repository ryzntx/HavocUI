.class public final Lcom/android/systemui/screenshot/DeleteScreenshotReceiver_Factory;
.super Ljava/lang/Object;
.source "DeleteScreenshotReceiver_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field private final backgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final screenshotSmartActionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenshot/ScreenshotSmartActions;",
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
            "Lcom/android/systemui/screenshot/ScreenshotSmartActions;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver_Factory;->screenshotSmartActionsProvider:Ljavax/inject/Provider;

    .line 20
    iput-object p2, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver_Factory;->backgroundExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/DeleteScreenshotReceiver_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenshot/ScreenshotSmartActions;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/android/systemui/screenshot/DeleteScreenshotReceiver_Factory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenshot/ScreenshotSmartActions;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;

    .line 32
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;-><init>(Lcom/android/systemui/screenshot/ScreenshotSmartActions;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver_Factory;->screenshotSmartActionsProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver_Factory;->backgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver_Factory;->get()Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;

    move-result-object p0

    return-object p0
.end method
