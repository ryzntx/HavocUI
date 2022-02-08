.class public final Lcom/android/systemui/biometrics/FODAnimation;
.super Landroid/widget/ImageView;
.source "FODAnimation.kt"


# instance fields
.field private final animParams:Landroid/view/WindowManager$LayoutParams;

.field private canUnlock:Z

.field private isKeyguard:Z

.field private final recognizingAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private showing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODAnimation;->animParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v0, "window"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/view/WindowManager;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->fod_animation_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 40
    iget-object v2, p0, Lcom/android/systemui/biometrics/FODAnimation;->animParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 41
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x3

    .line 42
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v3, 0x7e4

    .line 43
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x228

    .line 44
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v3, 0x31

    .line 47
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 48
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 49
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 50
    sget p2, Lcom/android/systemui/R$drawable;->fod_recognizing_animation:I

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/16 p2, 0x8

    .line 51
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p0, Lcom/android/systemui/biometrics/FODAnimation;->recognizingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 53
    iget-object p2, p0, Lcom/android/systemui/biometrics/FODAnimation;->animParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "fod_recognizing_animation"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 58
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/FODAnimation;->update(Z)V

    return-void

    .line 52
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final hideFODAnimation()V
    .locals 2

    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODAnimation;->showing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FODAnimation;->showing:Z

    .line 80
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODAnimation;->recognizingAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 82
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODAnimation;->recognizingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 83
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODAnimation;->recognizingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    :cond_0
    const/16 v0, 0x8

    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final setAnimationKeyguard(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/FODAnimation;->isKeyguard:Z

    return-void
.end method

.method public final setCanUnlock(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/FODAnimation;->canUnlock:Z

    return-void
.end method

.method public final showFODAnimation()V
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODAnimation;->showing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODAnimation;->isKeyguard:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FODAnimation;->canUnlock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FODAnimation;->showing:Z

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODAnimation;->recognizingAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method public final update(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    return-void
.end method
