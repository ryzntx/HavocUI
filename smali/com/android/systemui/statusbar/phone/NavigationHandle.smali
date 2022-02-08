.class public Lcom/android/systemui/statusbar/phone/NavigationHandle;
.super Landroid/view/View;
.source "NavigationHandle.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ButtonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;
    }
.end annotation


# instance fields
.field private final mBottom:I

.field private mBurnInProtectionTimer:Ljava/util/Timer;

.field private mBurnInYOffset:I

.field private final mDarkColor:I

.field private final mLightColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:I

.field private mRequiresInvalidate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 43
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBurnInYOffset:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    sget v1, Lcom/android/systemui/R$dimen;->navigation_handle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    .line 72
    sget v1, Lcom/android/systemui/R$dimen;->navigation_handle_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBottom:I

    .line 74
    sget v0, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 75
    sget v1, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 76
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 77
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 78
    sget p1, Lcom/android/systemui/R$attr;->homeHandleColor:I

    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mLightColor:I

    .line 79
    sget p1, Lcom/android/systemui/R$attr;->homeHandleColor:I

    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkColor:I

    .line 80
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBurnInYOffset:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/NavigationHandle;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBurnInYOffset:I

    return p1
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 6

    .line 137
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBurnInProtectionTimer:Ljava/util/Timer;

    .line 138
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationHandle$BurnInProtectionTask;-><init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;Lcom/android/systemui/statusbar/phone/NavigationHandle$1;)V

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 139
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBurnInProtectionTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBurnInProtectionTimer:Ljava/util/Timer;

    .line 146
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 95
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 99
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    mul-int/lit8 v1, v1, 0x2

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 101
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBottom:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBurnInYOffset:I

    add-int/2addr v0, v3

    int-to-float v5, v0

    int-to-float v6, v2

    add-int/2addr v0, v1

    int-to-float v7, v0

    .line 102
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    int-to-float v8, v0

    int-to-float v9, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 87
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRequiresInvalidate:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRequiresInvalidate:Z

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 3

    .line 119
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mLightColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRequiresInvalidate:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 0

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    return-void
.end method
