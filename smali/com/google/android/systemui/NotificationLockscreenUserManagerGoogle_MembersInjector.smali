.class public final Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_MembersInjector;
.super Ljava/lang/Object;
.source "NotificationLockscreenUserManagerGoogle_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;",
        ">;"
    }
.end annotation


# direct methods
.method public static injectMKeyguardBypassControllerLazy(Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;->mKeyguardBypassControllerLazy:Ldagger/Lazy;

    return-void
.end method

.method public static injectMSmartSpaceController(Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;->mSmartSpaceController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    return-void
.end method
