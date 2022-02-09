.class public interface Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar$BatteryStateChangeCallback;
.super Ljava/lang/Object;
.source "BatteryStateRegistar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/smartbatre/BatteryStateRegistar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x209
    name = "BatteryStateChangeCallback"
.end annotation


# virtual methods
.method public abstract onBatteryLevelChanged(ZIZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZZ)V"
        }
    .end annotation
.end method

.method public abstract onBatteryStyleChanged(II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation
.end method

.method public abstract onPowerSaveChanged()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method
