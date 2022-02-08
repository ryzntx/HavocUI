.class public Lcom/android/systemui/navigation/pulse/ColorAnimator;
.super Ljava/lang/Object;
.source "ColorAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigation/pulse/ColorAnimator$ColorAnimationListener;
    }
.end annotation


# instance fields
.field protected final from:[F

.field protected final hsv:[F

.field protected mAnimTime:J

.field protected mColorAnim:Landroid/animation/ValueAnimator;

.field protected mFromColor:I

.field protected mLastColor:I

.field protected mListener:Lcom/android/systemui/navigation/pulse/ColorAnimator$ColorAnimationListener;

.field protected mToColor:I

.field protected final to:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 50
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/navigation/pulse/ColorAnimator;-><init>(Landroid/animation/ValueAnimator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-wide/16 v0, 0x2710

    .line 54
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/navigation/pulse/ColorAnimator;-><init>(Landroid/animation/ValueAnimator;J)V

    return-void
.end method

.method public constructor <init>(Landroid/animation/ValueAnimator;J)V
    .locals 7

    const-string v0, "#ffff8080"

    .line 58
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v0, "#ff8080ff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/navigation/pulse/ColorAnimator;-><init>(Landroid/animation/ValueAnimator;JII)V

    return-void
.end method

.method public constructor <init>(Landroid/animation/ValueAnimator;JII)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 38
    iput-object v1, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->from:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->to:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->hsv:[F

    const-string v0, "#ffff8080"

    .line 44
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mLastColor:I

    .line 63
    iput-wide p2, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mAnimTime:J

    .line 64
    iput p4, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mFromColor:I

    .line 65
    iput p5, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mToColor:I

    .line 66
    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mColorAnim:Landroid/animation/ValueAnimator;

    .line 67
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->hsv:[F

    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->from:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    iget-object v4, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->to:[F

    aget v4, v4, v2

    aget v1, v1, v2

    sub-float/2addr v4, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, v0, v2

    .line 118
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->hsv:[F

    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->from:[F

    const/4 v2, 0x1

    aget v3, v1, v2

    iget-object v4, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->to:[F

    aget v4, v4, v2

    aget v1, v1, v2

    sub-float/2addr v4, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, v0, v2

    .line 119
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->hsv:[F

    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->from:[F

    const/4 v2, 0x2

    aget v3, v1, v2

    iget-object v4, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->to:[F

    aget v4, v4, v2

    aget v1, v1, v2

    sub-float/2addr v4, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    aput v3, v0, v2

    .line 121
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->hsv:[F

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mLastColor:I

    .line 123
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mListener:Lcom/android/systemui/navigation/pulse/ColorAnimator$ColorAnimationListener;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p0, p1}, Lcom/android/systemui/navigation/pulse/ColorAnimator$ColorAnimationListener;->onColorChanged(Lcom/android/systemui/navigation/pulse/ColorAnimator;I)V

    :cond_0
    return-void
.end method

.method public setAnimationTime(J)V
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mAnimTime:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 100
    iput-wide p1, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mAnimTime:J

    .line 101
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorAnimator;->start()V

    :cond_0
    return-void
.end method

.method public setColorAnimatorListener(Lcom/android/systemui/navigation/pulse/ColorAnimator$ColorAnimationListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mListener:Lcom/android/systemui/navigation/pulse/ColorAnimator$ColorAnimationListener;

    return-void
.end method

.method public start()V
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorAnimator;->stop()V

    .line 72
    iget v0, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mFromColor:I

    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->from:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 73
    iget v0, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mToColor:I

    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->to:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mColorAnim:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mAnimTime:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mColorAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mColorAnim:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mListener:Lcom/android/systemui/navigation/pulse/ColorAnimator$ColorAnimationListener;

    if-eqz v0, :cond_0

    .line 78
    iget v1, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mFromColor:I

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/navigation/pulse/ColorAnimator$ColorAnimationListener;->onStartAnimation(Lcom/android/systemui/navigation/pulse/ColorAnimator;I)V

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mListener:Lcom/android/systemui/navigation/pulse/ColorAnimator$ColorAnimationListener;

    if-eqz v0, :cond_0

    .line 89
    iget v1, p0, Lcom/android/systemui/navigation/pulse/ColorAnimator;->mLastColor:I

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/navigation/pulse/ColorAnimator$ColorAnimationListener;->onStopAnimation(Lcom/android/systemui/navigation/pulse/ColorAnimator;I)V

    :cond_0
    return-void
.end method
