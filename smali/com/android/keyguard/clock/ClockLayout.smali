.class public Lcom/android/keyguard/clock/ClockLayout;
.super Landroid/widget/FrameLayout;
.source "ClockLayout.java"


# instance fields
.field private mAnalogClock:Landroid/view/View;

.field private mBurnInPreventionOffsetX:I

.field private mBurnInPreventionOffsetY:I

.field private mDarkAmount:F

.field private mTypeClock:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/clock/ClockLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/clock/ClockLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private positionChildren()V
    .locals 8

    .line 95
    iget v0, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetX:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    .line 96
    invoke-static {v0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/clock/ClockLayout;->mDarkAmount:F

    const/4 v2, 0x0

    .line 95
    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    .line 98
    iget v1, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetY:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    .line 99
    invoke-static {v1, v3}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/android/keyguard/clock/ClockLayout;->mDarkAmount:F

    .line 98
    invoke-static {v2, v1, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    .line 104
    iget-object v3, p0, Lcom/android/keyguard/clock/ClockLayout;->mAnalogClock:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/clock/ClockLayout;->mAnalogClock:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v7, v0, v6

    add-float/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    .line 107
    iget-object v3, p0, Lcom/android/keyguard/clock/ClockLayout;->mAnalogClock:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    iget-object v7, p0, Lcom/android/keyguard/clock/ClockLayout;->mAnalogClock:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v6, v1

    add-float/2addr v2, v6

    invoke-virtual {v3, v2}, Landroid/view/View;->setY(F)V

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/clock/ClockLayout;->mTypeClock:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 113
    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockLayout;->mTypeClock:Landroid/view/View;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v2

    add-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 64
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 65
    sget v0, Lcom/android/systemui/R$id;->analog_clock:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockLayout;->mAnalogClock:Landroid/view/View;

    .line 66
    sget v0, Lcom/android/systemui/R$id;->type_clock:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockLayout;->mTypeClock:Landroid/view/View;

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    sget v1, Lcom/android/systemui/R$dimen;->burn_in_prevention_offset_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetX:I

    .line 72
    sget v1, Lcom/android/systemui/R$dimen;->burn_in_prevention_offset_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetY:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 78
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 79
    invoke-direct {p0}, Lcom/android/keyguard/clock/ClockLayout;->positionChildren()V

    return-void
.end method

.method onTimeChanged()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/android/keyguard/clock/ClockLayout;->positionChildren()V

    return-void
.end method

.method setDarkAmount(F)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/android/keyguard/clock/ClockLayout;->mDarkAmount:F

    .line 91
    invoke-direct {p0}, Lcom/android/keyguard/clock/ClockLayout;->positionChildren()V

    return-void
.end method
