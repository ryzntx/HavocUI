.class public Lcom/android/systemui/pip/PipBoundsHandler;
.super Ljava/lang/Object;
.source "PipBoundsHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PipBoundsHandler"


# instance fields
.field private mAspectRatio:F

.field private final mContext:Landroid/content/Context;

.field private mCurrentMinSize:I

.field private mDefaultAspectRatio:F

.field private mDefaultMinSize:I

.field private mDefaultStackGravity:I

.field private final mDisplayController:Lcom/android/systemui/wm/DisplayController;

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

.field private final mDisplaysChangedListener:Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;

.field private mImeHeight:I

.field private mIsImeShowing:Z

.field private mIsShelfShowing:Z

.field private mLastPipComponentName:Landroid/content/ComponentName;

.field private mMaxAspectRatio:F

.field private mMinAspectRatio:F

.field private mOverrideMinimalSize:Landroid/util/Size;

.field private mReentrySize:Landroid/util/Size;

.field private mReentrySnapFraction:F

.field private mScreenEdgeInsets:Landroid/graphics/Point;

.field private mShelfHeight:I

.field private final mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pip/PipSnapAlgorithm;Lcom/android/systemui/wm/DisplayController;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayInfo:Landroid/view/DisplayInfo;

    const/high16 v0, -0x40800000    # -1.0f

    .line 66
    iput v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mReentrySnapFraction:F

    .line 84
    new-instance v0, Lcom/android/systemui/pip/PipBoundsHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/PipBoundsHandler$1;-><init>(Lcom/android/systemui/pip/PipBoundsHandler;)V

    iput-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplaysChangedListener:Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;

    .line 97
    iput-object p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    .line 99
    new-instance p1, Lcom/android/systemui/wm/DisplayLayout;

    invoke-direct {p1}, Lcom/android/systemui/wm/DisplayLayout;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    .line 100
    iput-object p3, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    .line 101
    iget-object p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplaysChangedListener:Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;

    invoke-virtual {p3, p1}, Lcom/android/systemui/wm/DisplayController;->addDisplayWindowListener(Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;)V

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/pip/PipBoundsHandler;->reloadResources()V

    .line 106
    iget p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDefaultAspectRatio:F

    iput p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mAspectRatio:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/PipBoundsHandler;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/PipBoundsHandler;)Lcom/android/systemui/wm/DisplayController;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/PipBoundsHandler;)Lcom/android/systemui/wm/DisplayLayout;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    return-object p0
.end method

.method private dpToPx(FLandroid/util/DisplayMetrics;)I
    .locals 0

    const/4 p0, 0x1

    .line 522
    invoke-static {p0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;
    .locals 8

    .line 451
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 453
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {v7, v1, v1, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 454
    invoke-direct {p0, v7}, Lcom/android/systemui/pip/PipBoundsHandler;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    .line 455
    iget-object p0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    invoke-virtual {p0, v7, p2, p1}, Lcom/android/systemui/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    goto :goto_1

    .line 457
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 458
    invoke-virtual {p0, v3}, Lcom/android/systemui/pip/PipBoundsHandler;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 459
    iget-object p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    iget p2, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDefaultAspectRatio:F

    iget v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDefaultMinSize:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, p2, v0, v4, v2}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getSizeForAspectRatio(FFII)Landroid/util/Size;

    move-result-object p1

    .line 461
    iget v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDefaultStackGravity:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/4 v4, 0x0

    .line 462
    iget-boolean p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mIsImeShowing:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mImeHeight:I

    goto :goto_0

    :cond_1
    move p1, v1

    .line 463
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mIsShelfShowing:Z

    if-eqz v5, :cond_2

    iget v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mShelfHeight:I

    .line 462
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, p2

    move-object v6, v7

    .line 461
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    :goto_1
    return-object v7
.end method

.method private getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x1

    .line 485
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pip/PipBoundsHandler;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 2

    .line 493
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 494
    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/PipBoundsHandler;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 497
    iget-object v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    if-eqz p2, :cond_0

    .line 498
    iget-boolean p2, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mIsImeShowing:Z

    if-eqz p2, :cond_0

    iget p0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mImeHeight:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 497
    :goto_0
    invoke-virtual {v1, p1, v0, v0, p0}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-object v0
.end method

.method private isValidPictureInPictureAspectRatio(F)Z
    .locals 1

    .line 380
    iget v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mMinAspectRatio:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mMaxAspectRatio:F

    .line 381
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onResetReentryBoundsUnchecked()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 206
    iput v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mReentrySnapFraction:F

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mReentrySize:Landroid/util/Size;

    .line 208
    iput-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mLastPipComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method private reloadResources()V
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b6

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDefaultAspectRatio:F

    const v1, 0x10e0045

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDefaultStackGravity:I

    const v1, 0x105010b

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDefaultMinSize:I

    .line 120
    iput v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mCurrentMinSize:I

    const v1, 0x1040215

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 126
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    goto :goto_1

    .line 127
    :cond_1
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/pip/PipBoundsHandler;->dpToPx(FLandroid/util/DisplayMetrics;)I

    move-result v3

    .line 128
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/pip/PipBoundsHandler;->dpToPx(FLandroid/util/DisplayMetrics;)I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    move-object v1, v2

    :goto_1
    iput-object v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mScreenEdgeInsets:Landroid/graphics/Point;

    const v1, 0x10500b9

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mMinAspectRatio:F

    const v1, 0x10500b8

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mMaxAspectRatio:F

    return-void
.end method

.method private transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    .line 401
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipBoundsHandler;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 400
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    if-eqz p3, :cond_0

    .line 402
    iget v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mCurrentMinSize:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDefaultMinSize:I

    :goto_0
    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_1

    .line 408
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    int-to-float p4, v1

    iget-object v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p3, p2, p4, v2, v1}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getSizeForAspectRatio(FFII)Landroid/util/Size;

    move-result-object p3

    goto :goto_2

    .line 405
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    new-instance p4, Landroid/util/Size;

    .line 406
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p4, v2, v3}, Landroid/util/Size;-><init>(II)V

    int-to-float v1, v1

    .line 405
    invoke-virtual {p3, p4, p2, v1}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getSizeForAspectRatio(Landroid/util/Size;FF)Landroid/util/Size;

    move-result-object p3

    .line 412
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p4, v1

    float-to-int p4, p4

    .line 413
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 414
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v2

    add-int/2addr v2, p4

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    add-int/2addr p3, v1

    invoke-virtual {p1, p4, v1, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 416
    iget-object p3, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mOverrideMinimalSize:Landroid/util/Size;

    if-eqz p3, :cond_3

    .line 417
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pip/PipBoundsHandler;->transformBoundsToMinimalSize(Landroid/graphics/Rect;FLandroid/util/Size;)V

    .line 419
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipBoundsHandler;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p1, p0, v0}, Lcom/android/systemui/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    return-void
.end method

.method private transformBoundsToMinimalSize(Landroid/graphics/Rect;FLandroid/util/Size;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 431
    :cond_0
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, p2

    if-lez v0, :cond_1

    .line 434
    new-instance v0, Landroid/util/Size;

    .line 435
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p2

    float-to-int p2, p3

    invoke-direct {v0, v1, p2}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 437
    :cond_1
    new-instance v0, Landroid/util/Size;

    .line 438
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int p2, v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-direct {v0, p2, p3}, Landroid/util/Size;-><init>(II)V

    .line 440
    :goto_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 441
    iget p0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDefaultStackGravity:I

    .line 442
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 441
    invoke-static {p0, p3, v0, p2, p1}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateDisplayInfoIfNeeded()V
    .locals 5

    .line 364
    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ge v1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_1

    .line 365
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    if-le v1, v0, :cond_1

    :goto_1
    if-eqz v2, :cond_3

    .line 370
    iget-object p0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 371
    iget v1, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 372
    iput v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    :cond_3
    return-void
.end method


# virtual methods
.method public applySnapFraction(Landroid/graphics/Rect;F)V
    .locals 1

    .line 514
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipBoundsHandler;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 515
    iget-object p0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/systemui/pip/PipBoundsHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastPipComponentName="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mLastPipComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mReentrySnapFraction="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mReentrySnapFraction:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mReentrySize="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mReentrySize:Landroid/util/Size;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDisplayInfo="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDefaultAspectRatio="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDefaultAspectRatio:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMinAspectRatio="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mMinAspectRatio:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMaxAspectRatio="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mMaxAspectRatio:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAspectRatio="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mAspectRatio:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDefaultStackGravity="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDefaultStackGravity:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsImeShowing="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mIsImeShowing:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mImeHeight="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mImeHeight:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsShelfShowing="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mIsShelfShowing:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mShelfHeight="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mShelfHeight:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getDefaultAspectRatio()F
    .locals 0

    .line 290
    iget p0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDefaultAspectRatio:F

    return p0
.end method

.method getDestinationBounds(Landroid/content/ComponentName;FLandroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 257
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pip/PipBoundsHandler;->getDestinationBounds(Landroid/content/ComponentName;FLandroid/graphics/Rect;Landroid/util/Size;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method getDestinationBounds(Landroid/content/ComponentName;FLandroid/graphics/Rect;Landroid/util/Size;Z)Landroid/graphics/Rect;
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mLastPipComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/pip/PipBoundsHandler;->onResetReentryBoundsUnchecked()V

    .line 268
    iput-object p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mLastPipComponentName:Landroid/content/ComponentName;

    :cond_0
    if-nez p3, :cond_1

    .line 272
    iget p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mReentrySnapFraction:F

    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mReentrySize:Landroid/util/Size;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pip/PipBoundsHandler;->getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p1

    .line 273
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 274
    iget p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mReentrySnapFraction:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mReentrySize:Landroid/util/Size;

    if-nez p1, :cond_2

    .line 275
    iput-object p4, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mOverrideMinimalSize:Landroid/util/Size;

    goto :goto_0

    .line 278
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 280
    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/systemui/pip/PipBoundsHandler;->isValidPictureInPictureAspectRatio(F)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez p3, :cond_3

    .line 281
    iget-object p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mReentrySize:Landroid/util/Size;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 282
    :goto_1
    invoke-direct {p0, v0, p2, p5, p1}, Lcom/android/systemui/pip/PipBoundsHandler;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V

    .line 285
    :cond_4
    iput p2, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mAspectRatio:F

    return-object v0
.end method

.method public getDisplayBounds()Landroid/graphics/Rect;
    .locals 3

    .line 220
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->rotation:I

    return p0
.end method

.method protected getInsetBounds(Landroid/graphics/Rect;)V
    .locals 7

    .line 473
    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/systemui/wm/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 474
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v2

    iget-object p0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v3

    iget p0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    sub-int/2addr p0, v2

    invoke-virtual {p1, v1, v4, v5, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getSnapFraction(Landroid/graphics/Rect;)F
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipBoundsHandler;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public hasSaveReentryBounds()Z
    .locals 1

    .line 216
    iget p0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mReentrySnapFraction:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAspectRatioChanged(F)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mAspectRatio:F

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 240
    invoke-direct {p0}, Lcom/android/systemui/pip/PipBoundsHandler;->reloadResources()V

    return-void
.end method

.method public onDisplayInfoChanged(Landroid/view/DisplayInfo;)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public onDisplayRotationChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/window/WindowContainerTransaction;)Z
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->displayId:I

    const/4 v1, 0x0

    if-ne p4, v0, :cond_2

    if-ne p5, p6, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p4

    const/4 p5, 0x2

    .line 328
    invoke-interface {p4, p5, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p4, :cond_1

    return v1

    .line 336
    :cond_1
    new-instance p5, Landroid/graphics/Rect;

    invoke-direct {p5, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 337
    invoke-virtual {p0, p5}, Lcom/android/systemui/pip/PipBoundsHandler;->getSnapFraction(Landroid/graphics/Rect;)F

    move-result p2

    .line 340
    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    iget-object v2, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2, p6}, Lcom/android/systemui/wm/DisplayLayout;->rotateTo(Landroid/content/res/Resources;I)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput p6, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 347
    invoke-direct {p0}, Lcom/android/systemui/pip/PipBoundsHandler;->updateDisplayInfoIfNeeded()V

    .line 351
    invoke-direct {p0, p5, v1}, Lcom/android/systemui/pip/PipBoundsHandler;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p6

    .line 353
    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    invoke-virtual {v0, p5, p6, p2}, Lcom/android/systemui/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 356
    invoke-virtual {p0, p3}, Lcom/android/systemui/pip/PipBoundsHandler;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 357
    invoke-virtual {p1, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 358
    iget-object p0, p4, Landroid/app/ActivityManager$StackInfo;->stackToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p7, p0, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 331
    sget-object p1, Lcom/android/systemui/pip/PipBoundsHandler;->TAG:Ljava/lang/String;

    const-string p2, "Failed to get StackInfo for pinned stack"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public onDisplayRotationChangedNotInPip(I)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    iget-object v1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/wm/DisplayLayout;->rotateTo(Landroid/content/res/Resources;I)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput p1, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 308
    invoke-direct {p0}, Lcom/android/systemui/pip/PipBoundsHandler;->updateDisplayInfoIfNeeded()V

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mIsImeShowing:Z

    .line 163
    iput p2, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mImeHeight:I

    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V
    .locals 1

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/PipBoundsHandler;->getInsetBounds(Landroid/graphics/Rect;)V

    const/high16 p1, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pip/PipBoundsHandler;->getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p1

    .line 174
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 175
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 178
    :cond_0
    iget p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mAspectRatio:F

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipBoundsHandler;->isValidPictureInPictureAspectRatio(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 179
    iget p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mAspectRatio:F

    const/4 p3, 0x0

    invoke-direct {p0, p2, p1, p3, p3}, Lcom/android/systemui/pip/PipBoundsHandler;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V

    .line 182
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p4, p0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public onResetReentryBounds(Landroid/content/ComponentName;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mLastPipComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/pip/PipBoundsHandler;->onResetReentryBoundsUnchecked()V

    :cond_0
    return-void
.end method

.method public onSaveReentryBounds(Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 2

    .line 190
    invoke-virtual {p0, p2}, Lcom/android/systemui/pip/PipBoundsHandler;->getSnapFraction(Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mReentrySnapFraction:F

    .line 191
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {v0, v1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mReentrySize:Landroid/util/Size;

    .line 192
    iput-object p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mLastPipComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public setMinEdgeSize(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mCurrentMinSize:I

    return-void
.end method

.method public setShelfHeight(ZI)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 149
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mIsShelfShowing:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mShelfHeight:I

    if-ne p2, v2, :cond_1

    return v1

    .line 153
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mIsShelfShowing:Z

    .line 154
    iput p2, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mShelfHeight:I

    return v0
.end method

.method public transformBoundsToAspectRatio(Landroid/graphics/Rect;)V
    .locals 2

    .line 389
    iget v0, p0, Lcom/android/systemui/pip/PipBoundsHandler;->mAspectRatio:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/systemui/pip/PipBoundsHandler;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V

    return-void
.end method
