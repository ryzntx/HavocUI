.class public final Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;
.super Ljava/lang/Object;
.source "NotificationLockscreenUserManagerGoogle_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;",
        ">;"
    }
.end annotation


# instance fields
.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final clickNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
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

.field private final devicePolicyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/admin/DevicePolicyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceProvisionedControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/KeyguardManager;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyguardBypassControllerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmartSpaceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/smartspace/SmartSpaceController;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final userManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/admin/DevicePolicyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/KeyguardManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/smartspace/SmartSpaceController;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p2, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p3, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->devicePolicyManagerProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p4, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->userManagerProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p5, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->clickNotifierProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p6, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->keyguardManagerProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p7, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p8, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p9, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p10, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p11, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->mKeyguardBypassControllerLazyProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p12, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->mSmartSpaceControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/admin/DevicePolicyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/KeyguardManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/smartspace/SmartSpaceController;",
            ">;)",
            "Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;"
        }
    .end annotation

    .line 138
    new-instance v13, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v13
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/admin/DevicePolicyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/KeyguardManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/smartspace/SmartSpaceController;",
            ">;)",
            "Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;"
        }
    .end annotation

    .line 106
    new-instance v11, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;

    .line 108
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    .line 109
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 110
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 111
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/UserManager;

    .line 112
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/NotificationClickNotifier;

    .line 113
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/KeyguardManager;

    .line 114
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 115
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/Handler;

    .line 116
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 117
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Lcom/android/systemui/statusbar/NotificationClickNotifier;Landroid/app/KeyguardManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    .line 119
    invoke-static/range {p10 .. p10}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 118
    invoke-static {v11, v0}, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_MembersInjector;->injectMKeyguardBypassControllerLazy(Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;Ldagger/Lazy;)V

    .line 121
    invoke-interface/range {p11 .. p11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;

    .line 120
    invoke-static {v11, v0}, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_MembersInjector;->injectMSmartSpaceController(Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    return-object v11
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;
    .locals 12

    .line 78
    iget-object v0, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->devicePolicyManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->userManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->clickNotifierProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->keyguardManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->mKeyguardBypassControllerLazyProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->mSmartSpaceControllerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v11}, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle_Factory;->get()Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;

    move-result-object p0

    return-object p0
.end method
