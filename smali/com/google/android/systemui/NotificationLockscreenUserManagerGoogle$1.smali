.class Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle$1;
.super Ljava/lang/Object;
.source "NotificationLockscreenUserManagerGoogle.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Lcom/android/systemui/statusbar/NotificationClickNotifier;Landroid/app/KeyguardManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle$1;->this$0:Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged()V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle$1;->this$0:Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;

    invoke-virtual {p0}, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;->updateSmartSpaceVisibilitySettings()V

    return-void
.end method
