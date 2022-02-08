.class public final Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;
.super Ljava/lang/Object;
.source "GoogleDefaultUiController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;",
        ">;"
    }
.end annotation


# instance fields
.field private final assistLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistLogger;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistLogger;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 20
    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->assistLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistLogger;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistLogger;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/AssistLogger;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;-><init>(Landroid/content/Context;Lcom/android/systemui/assist/AssistLogger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->assistLoggerProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->get()Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

    move-result-object p0

    return-object p0
.end method
