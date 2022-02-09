.class public interface Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterDrawable;
.super Ljava/lang/Object;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/navigation/halo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20c
    name = "BatteryMeterDrawable"
.end annotation


# virtual methods
.method public abstract onDispose()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryTracker;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onSizeChanged(IIII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation
.end method

.method public abstract setDarkIntensity(II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation
.end method

.method public abstract setkolor(I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation
.end method
