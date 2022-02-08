.class public final Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory;

    invoke-direct {v0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory;-><init>()V

    sput-object v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory;->INSTANCE:Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory;->INSTANCE:Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory;

    return-object v0
.end method

.method public static provideInstance()Ljava/lang/Boolean;
    .locals 1

    .line 20
    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory;->proxyProvideAllowNotificationLongPress()Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static proxyProvideAllowNotificationLongPress()Z
    .locals 1

    .line 28
    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule;->provideAllowNotificationLongPress()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 0

    .line 16
    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory;->provideInstance()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory;->get()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
