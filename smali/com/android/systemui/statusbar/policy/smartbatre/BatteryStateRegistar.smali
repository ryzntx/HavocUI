.class public interface Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar;
.super Ljava/lang/Object;
.source "BatteryStateRegistar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;
    }
.end annotation


# virtual methods
.method public abstract addStateChangedCallback(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;",
            ")V"
        }
    .end annotation
.end method
