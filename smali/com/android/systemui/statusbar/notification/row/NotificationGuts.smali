.class public Lcom/android/systemui/statusbar/notification/row/NotificationGuts;
.super Landroid/widget/FrameLayout;
.source "NotificationGuts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateCloseListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateOpenListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;
    }
.end annotation


# instance fields
.field private mActualHeight:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mClipBottomAmount:I

.field private mClipTopAmount:I

.field private mClosedListener:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;

.field private mExposed:Z

.field private mFalsingCheck:Ljava/lang/Runnable;

.field private mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

.field private mGutsContentAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mHandler:Landroid/os/Handler;

.field private mHeightListener:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;

.field private mNeedsFalsingProtection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContentAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 162
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mHandler:Landroid/os/Handler;

    .line 163
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    .line 171
    sget-object p0, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, p0, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 173
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mNeedsFalsingProtection:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;IIZZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(IIZZ)V

    return-void
.end method

.method private animateOpen(ZIILjava/lang/Runnable;)V
    .locals 7

    .line 325
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 327
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-double v3, p1

    .line 328
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-double v5, p1

    .line 329
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float p1, v3

    .line 331
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 333
    invoke-static {p0, p2, p3, v2, p1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p0

    const-wide/16 p1, 0x168

    .line 334
    invoke-virtual {p0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 335
    sget-object p1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 336
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateOpenListener;

    invoke-direct {p1, p4, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateOpenListener;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 337
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 341
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 342
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xf0

    .line 343
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 344
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateOpenListener;

    invoke-direct {p1, p4, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateOpenListener;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;)V

    .line 345
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 346
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    const-string p0, "NotificationGuts"

    const-string p1, "Failed to animate guts open"

    .line 349
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private closeControls(IIZZ)V
    .locals 2

    .line 298
    const-class v0, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    .line 299
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    .line 300
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;->dismissCurrentBlockingHelper()Z

    move-result v0

    .line 302
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 303
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;

    if-eqz p1, :cond_0

    .line 304
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;->onGutsClosed(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    :cond_0
    return-void

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    if-eqz v1, :cond_2

    .line 310
    invoke-interface {v1, p3, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->handleCloseControls(ZZ)Z

    move-result p3

    if-eqz p3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    xor-int/lit8 p3, v0, 0x1

    .line 313
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->animateClose(IIZ)V

    const/4 p1, 0x0

    .line 315
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mNeedsFalsingProtection:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setExposed(ZZ)V

    .line 316
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;

    if-eqz p1, :cond_3

    .line 317
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;->onGutsClosed(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    :cond_3
    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 205
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mClipTopAmount:I

    .line 206
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mActualHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    if-eqz p2, :cond_0

    if-ge v0, v1, :cond_0

    const/4 v2, 0x0

    .line 208
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    invoke-virtual {p2, v2, v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 209
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawableStateChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method animateClose(IIZ)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 357
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    if-ne p2, p3, :cond_1

    .line 361
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result p2

    add-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    .line 362
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    .line 364
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    sub-int/2addr p3, p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-double v2, p3

    .line 365
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-double v4, p3

    .line 366
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float p3, v2

    .line 367
    invoke-static {p0, p1, p2, p3, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    const-wide/16 p2, 0x168

    .line 369
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 370
    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 371
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateCloseListener;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    invoke-direct {p2, p0, p0, p3, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateCloseListener;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 372
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 375
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 376
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xf0

    .line 377
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 378
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateCloseListener;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    invoke-direct {p2, p0, p0, p3, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateCloseListener;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;)V

    .line 379
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 380
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_3
    const-string p1, "NotificationGuts"

    const-string p2, "Failed to animate guts close"

    .line 383
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->onFinishedClosing()V

    :goto_0
    return-void
.end method

.method public closeControls(Landroid/view/View;Z)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v2, v0, [I

    .line 278
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 279
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    const/4 v0, 0x0

    .line 282
    aget v4, v2, v0

    aget v5, v1, v0

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    const/4 v3, 0x1

    .line 283
    aget v2, v2, v3

    aget v1, v1, v3

    sub-int/2addr v2, v1

    add-int/2addr v2, p1

    .line 285
    invoke-direct {p0, v4, v2, p2, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(IIZZ)V

    return-void
.end method

.method public closeControls(ZZIIZ)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    if-eqz v0, :cond_2

    .line 265
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 266
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 267
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->shouldBeSaved()Z

    move-result p1

    invoke-direct {p0, p3, p4, p1, p5}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(IIZZ)V

    :cond_2
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 241
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->drawableStateChanged(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getGutsContent()Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->getActualHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExposed()Z
    .locals 0

    .line 455
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    return p0
.end method

.method public isLeavebehind()Z
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 215
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 216
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->notification_guts_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method protected onHeightChanged()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mHeightListener:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 427
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    :cond_0
    return-void
.end method

.method public openControls(ZIIZLjava/lang/Runnable;)V
    .locals 0

    .line 251
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->animateOpen(ZIILjava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 252
    invoke-virtual {p0, p1, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setExposed(ZZ)V

    return-void
.end method

.method public resetFalsingCheck()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mNeedsFalsingProtection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setActualHeight(I)V
    .locals 0

    .line 389
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mActualHeight:I

    .line 390
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0

    .line 407
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mClipBottomAmount:I

    .line 408
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0

    .line 402
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mClipTopAmount:I

    .line 403
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setClosedListener(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;

    return-void
.end method

.method setExposed(ZZ)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 433
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    .line 434
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    .line 435
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mNeedsFalsingProtection:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    goto :goto_0

    .line 439
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 441
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    if-eqz p1, :cond_1

    .line 442
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->getContentView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x20

    .line 443
    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 444
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    if-eqz p0, :cond_1

    .line 445
    invoke-virtual {p1}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_1
    return-void
.end method

.method public setGutsContent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;)V
    .locals 1

    .line 181
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContentAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 183
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 184
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 185
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mHeightListener:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 224
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public willBeRemoved()Z
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->willBeRemoved()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
