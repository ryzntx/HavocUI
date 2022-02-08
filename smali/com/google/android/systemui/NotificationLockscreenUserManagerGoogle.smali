.class public Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;
.super Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;
.source "NotificationLockscreenUserManagerGoogle.java"


# instance fields
.field public mKeyguardBypassControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mSmartSpaceController:Lcom/google/android/systemui/smartspace/SmartSpaceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Lcom/android/systemui/statusbar/NotificationClickNotifier;Landroid/app/KeyguardManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 0

    .line 43
    invoke-direct/range {p0 .. p10}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Lcom/android/systemui/statusbar/NotificationClickNotifier;Landroid/app/KeyguardManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    .line 46
    iput-object p10, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 47
    new-instance p1, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle$1;-><init>(Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;)V

    invoke-interface {p10, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public updateLockscreenNotificationSetting()V
    .locals 0

    .line 57
    invoke-super {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updateLockscreenNotificationSetting()V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;->updateSmartSpaceVisibilitySettings()V

    return-void
.end method

.method public updatePublicMode()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updatePublicMode()V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;->updateLockscreenNotificationSetting()V

    return-void
.end method

.method public updateSmartSpaceVisibilitySettings()V
    .locals 4

    .line 62
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isAnyProfilePublicMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 64
    :goto_0
    iget-object v3, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;->mKeyguardBypassControllerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->allowsManagedPrivateNotificationsInPublic()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isAnyManagedProfilePublicMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 69
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;->mSmartSpaceController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->setHideSensitiveData(ZZ)V

    return-void
.end method
