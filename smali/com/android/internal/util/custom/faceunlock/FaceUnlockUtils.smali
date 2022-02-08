.class public Lcom/android/internal/util/custom/faceunlock/FaceUnlockUtils;
.super Ljava/lang/Object;
.source "FaceUnlockUtils.java"


# direct methods
.method public static isFaceUnlockSupported()Z
    .locals 2

    const-string v0, "ro.face_unlock_service.enabled"

    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
