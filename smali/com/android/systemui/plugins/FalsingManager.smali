.class public interface abstract Lcom/android/systemui/plugins/FalsingManager;
.super Ljava/lang/Object;
.source "FalsingManager.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x5
.end annotation


# static fields
.field public static final VERSION:I = 0x5


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract isClassifierEnabled()Z
.end method

.method public abstract isFalseTouch(I)Z
.end method

.method public abstract isReportingEnabled()Z
.end method

.method public abstract isUnlockingDisabled()Z
.end method

.method public abstract onAffordanceSwipingAborted()V
.end method

.method public abstract onAffordanceSwipingStarted(Z)V
.end method

.method public abstract onBouncerHidden()V
.end method

.method public abstract onBouncerShown()V
.end method

.method public abstract onCameraHintStarted()V
.end method

.method public abstract onCameraOn()V
.end method

.method public abstract onExpansionFromPulseStopped()V
.end method

.method public abstract onLeftAffordanceHintStarted()V
.end method

.method public abstract onLeftAffordanceOn()V
.end method

.method public abstract onNotificationActive()V
.end method

.method public abstract onNotificationDismissed()V
.end method

.method public abstract onNotificationDoubleTap(ZFF)V
.end method

.method public abstract onNotificationStartDismissing()V
.end method

.method public abstract onNotificationStopDismissing()V
.end method

.method public abstract onNotificatonStartDraggingDown()V
.end method

.method public abstract onNotificatonStopDraggingDown()V
.end method

.method public abstract onQsDown()V
.end method

.method public abstract onScreenOff()V
.end method

.method public abstract onScreenOnFromTouch()V
.end method

.method public abstract onScreenTurningOn()V
.end method

.method public abstract onStartExpandingFromPulse()V
.end method

.method public abstract onSuccessfulUnlock()V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;II)V
.end method

.method public abstract onTrackingStarted(Z)V
.end method

.method public abstract onTrackingStopped()V
.end method

.method public abstract onUnlockHintStarted()V
.end method

.method public abstract reportRejectedTouch()Landroid/net/Uri;
.end method

.method public abstract setNotificationExpanded()V
.end method

.method public abstract setQsExpanded(Z)V
.end method

.method public abstract setShowingAod(Z)V
.end method

.method public abstract shouldEnforceBouncer()Z
.end method
