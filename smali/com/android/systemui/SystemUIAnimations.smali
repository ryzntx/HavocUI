.class public Lcom/android/systemui/SystemUIAnimations;
.super Ljava/lang/Object;
.source "SystemUIAnimations.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static faceLockShake(Landroid/view/View;Z)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x3

    new-array v0, p1, [F

    .line 18
    fill-array-data v0, :array_0

    const-string v1, "translationY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array p1, p1, [F

    .line 19
    fill-array-data p1, :array_1

    const-string v1, "translationX"

    invoke-static {p0, v1, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 20
    new-instance p1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 21
    new-instance p1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x1f4

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 23
    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 24
    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p1, -0x1

    .line 25
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 27
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 28
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 29
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/SystemUIAnimations;->setNullAnim(Landroid/view/View;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        -0x3d380000    # -100.0f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x41880000    # 17.0f
        0x0
    .end array-data
.end method

.method private static setNullAnim(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 55
    fill-array-data v1, :array_0

    const-string v2, "translationY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v0, v0, [F

    .line 56
    fill-array-data v0, :array_1

    const-string v2, "translationX"

    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v2, 0x0

    .line 58
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 59
    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 60
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 61
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
