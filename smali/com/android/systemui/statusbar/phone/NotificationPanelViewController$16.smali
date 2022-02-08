.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FILjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field final synthetic val$onFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)V
    .locals 0

    .line 2029
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->val$onFinishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2037
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 2038
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 2039
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetCheckSnoozeLeavebehind()V

    .line 2040
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3802(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 2041
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->val$onFinishRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 2042
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 2032
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingStarted()V

    return-void
.end method
