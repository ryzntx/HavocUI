.class Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 6707
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDraggedDown$0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public isDragDownAnywhereEnabled()Z
    .locals 2

    .line 6790
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 6791
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$5100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDragDownEnabledForView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 2

    .line 6772
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->isDragDownAnywhereEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 6775
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    return v1

    .line 6780
    :cond_1
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_2

    .line 6782
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSensitive()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isFalsingCheckNeeded()Z
    .locals 1

    .line 6767
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCrossedThreshold(Z)V
    .locals 1

    .line 6751
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    return-void
.end method

.method public onDragDownReset()V
    .locals 2

    .line 6744
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 6745
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    .line 6746
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetCheckSnoozeLeavebehind()V

    return-void
.end method

.method public onDraggedDown(Landroid/view/View;I)Z
    .locals 5

    .line 6712
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 6713
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/media/KeyguardMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/KeyguardMediaController;->getView()Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 6714
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I

    move-result v3

    if-ne v3, v2, :cond_4

    if-eqz v0, :cond_4

    .line 6715
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    move-result-object v0

    const/16 v3, 0xbb

    int-to-float p2, p2

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 6717
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v4

    float-to-int p2, p2

    .line 6715
    invoke-virtual {v0, v3, p2, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 6719
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_PULL_SHADE_OPEN:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    .line 6721
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_3

    .line 6723
    :cond_2
    const-class p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/ShadeController;->goToLockedShade(Landroid/view/View;)V

    .line 6724
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_3

    .line 6725
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 6726
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpandedByGesture(Z)V

    :cond_3
    return v2

    .line 6731
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6732
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 6733
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$16$4jJHIvYLz4tPygD0Enr8OUidlx4;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$16$4jJHIvYLz4tPygD0Enr8OUidlx4;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return v2

    :cond_5
    return v1
.end method

.method public onTouchSlopExceeded()V
    .locals 1

    .line 6756
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 6757
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 0

    .line 6762
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$5000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setEmptyDragAmount(F)V

    return-void
.end method
