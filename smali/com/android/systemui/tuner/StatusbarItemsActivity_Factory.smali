.class public final Lcom/android/systemui/tuner/StatusbarItemsActivity_Factory;
.super Ljava/lang/Object;
.source "StatusbarItemsActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/tuner/StatusbarItemsActivity;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/android/systemui/tuner/StatusbarItemsActivity_Factory;

    invoke-direct {v0}, Lcom/android/systemui/tuner/StatusbarItemsActivity_Factory;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideInstance()Lcom/android/systemui/tuner/StatusbarItemsActivity;
    .locals 1

    .line 19
    new-instance v0, Lcom/android/systemui/tuner/StatusbarItemsActivity;

    invoke-direct {v0}, Lcom/android/systemui/tuner/StatusbarItemsActivity;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/tuner/StatusbarItemsActivity;
    .locals 0

    .line 15
    invoke-static {}, Lcom/android/systemui/tuner/StatusbarItemsActivity_Factory;->provideInstance()Lcom/android/systemui/tuner/StatusbarItemsActivity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/tuner/StatusbarItemsActivity_Factory;->get()Lcom/android/systemui/tuner/StatusbarItemsActivity;

    move-result-object p0

    return-object p0
.end method
