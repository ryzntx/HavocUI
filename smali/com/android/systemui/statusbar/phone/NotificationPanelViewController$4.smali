.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NotificationPanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;ILcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/MetricsLogger;Landroid/app/ActivityManager;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/tuner/TunerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$4;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 617
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$4;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/custom/Utils;->switchScreenOff(Landroid/content/Context;)V

    .line 620
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$4;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 621
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$4;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 622
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$4;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V

    const/4 p0, 0x1

    return p0
.end method
