.class public interface abstract Lcom/android/systemui/statusbar/policy/PulseController;
.super Ljava/lang/Object;
.source "PulseController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/PulseController$PulseStateListener;
    }
.end annotation


# virtual methods
.method public abstract notifyKeyguardGoingAway()V
.end method

.method public abstract onStartedGoingToSleep()V
.end method

.method public abstract setDozing(Z)V
.end method

.method public abstract setKeyguardShowing(Z)V
.end method
