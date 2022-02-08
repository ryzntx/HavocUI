.class public final Lcom/google/android/systemui/assist/OpaEnabledDispatcher_MembersInjector;
.super Ljava/lang/Object;
.source "OpaEnabledDispatcher_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/google/android/systemui/assist/OpaEnabledDispatcher;",
        ">;"
    }
.end annotation


# direct methods
.method public static injectMStatusBarLazy(Lcom/google/android/systemui/assist/OpaEnabledDispatcher;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/assist/OpaEnabledDispatcher;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaEnabledDispatcher;->mStatusBarLazy:Ldagger/Lazy;

    return-void
.end method
