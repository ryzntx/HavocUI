.class final Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;
.super Ljava/lang/Object;
.source "BiometricUnlockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingAuthenticated"
.end annotation


# instance fields
.field public final biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field public final isStrongBiometric:Z

.field public final userId:I


# direct methods
.method constructor <init>(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->userId:I

    .line 176
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 177
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->isStrongBiometric:Z

    return-void
.end method
