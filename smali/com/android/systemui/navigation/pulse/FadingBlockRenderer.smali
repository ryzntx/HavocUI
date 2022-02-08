.class public Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;
.super Lcom/android/systemui/navigation/pulse/Renderer;
.source "FadingBlockRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;
    }
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mCanvasBitmap:Landroid/graphics/Bitmap;

.field private mDbFuzzFactor:I

.field private mDivisions:I

.field private mFFTAverage:[Lcom/android/systemui/navigation/pulse/FFTAverage;

.field private mFFTPoints:[F

.field private final mFadePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mLeftInLandscape:Z

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mObserver:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;

.field private final mPaint:Landroid/graphics/Paint;

.field private mSmoothingEnabled:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/navigation/pulse/PulseView;Lcom/android/systemui/navigation/pulse/ColorController;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/navigation/pulse/Renderer;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/navigation/pulse/PulseView;Lcom/android/systemui/navigation/pulse/ColorController;)V

    .line 60
    new-instance p1, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;-><init>(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mObserver:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mPaint:Landroid/graphics/Paint;

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mFadePaint:Landroid/graphics/Paint;

    const/16 p2, 0xc8

    const/16 p3, 0xff

    .line 63
    invoke-static {p2, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mFadePaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 65
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mMatrix:Landroid/graphics/Matrix;

    .line 66
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mObserver:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;

    invoke-virtual {p1}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;->updateSettings()V

    .line 67
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->onSizeChanged(IIII)V

    return-void
.end method

.method static synthetic access$000(IIILandroid/content/res/Resources;)I
    .locals 0

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->getLimitedDimenValue(IIILandroid/content/res/Resources;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;)Landroid/graphics/Paint;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mDivisions:I

    return p1
.end method

.method static synthetic access$300(I)I
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->validateDivision(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mDbFuzzFactor:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mSmoothingEnabled:Z

    return p1
.end method

.method private static getLimitedDimenValue(IIILandroid/content/res/Resources;)I
    .locals 0

    .line 258
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    .line 257
    invoke-static {p2, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private setupFFTAverage(I)V
    .locals 3

    .line 126
    new-array v0, p1, [Lcom/android/systemui/navigation/pulse/FFTAverage;

    iput-object v0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mFFTAverage:[Lcom/android/systemui/navigation/pulse/FFTAverage;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mFFTAverage:[Lcom/android/systemui/navigation/pulse/FFTAverage;

    new-instance v2, Lcom/android/systemui/navigation/pulse/FFTAverage;

    invoke-direct {v2}, Lcom/android/systemui/navigation/pulse/FFTAverage;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static validateDivision(I)I
    .locals 1

    .line 264
    rem-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/16 p0, 0x10

    :cond_0
    const/16 v0, 0x2c

    .line 267
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mObserver:Lcom/android/systemui/navigation/pulse/FadingBlockRenderer$LegacySettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mColorController:Lcom/android/systemui/navigation/pulse/ColorController;

    invoke-virtual {v0}, Lcom/android/systemui/navigation/pulse/ColorController;->stopLavaLamp()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mCanvasBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mCanvasBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onFFTUpdate([B)V
    .locals 10

    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mDbFuzzFactor:I

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mDbFuzzFactor:I

    :goto_0
    if-eqz p1, :cond_c

    .line 84
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mFFTPoints:[F

    if-eqz v1, :cond_1

    array-length v1, v1

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_2

    .line 85
    :cond_1
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mFFTPoints:[F

    .line 87
    :cond_2
    array-length v1, p1

    iget v2, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mDivisions:I

    div-int/2addr v1, v2

    .line 88
    iget-boolean v2, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mSmoothingEnabled:Z

    if-eqz v2, :cond_4

    .line 89
    iget-object v2, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mFFTAverage:[Lcom/android/systemui/navigation/pulse/FFTAverage;

    if-eqz v2, :cond_3

    array-length v2, v2

    if-eq v2, v1, :cond_5

    .line 90
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->setupFFTAverage(I)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 93
    iput-object v2, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mFFTAverage:[Lcom/android/systemui/navigation/pulse/FFTAverage;

    :cond_5
    :goto_1
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_c

    .line 96
    iget-boolean v4, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mVertical:Z

    if-eqz v4, :cond_6

    .line 97
    iget-object v4, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mFFTPoints:[F

    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v6, v5, 0x1

    iget v7, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mDivisions:I

    mul-int v8, v5, v7

    int-to-float v8, v8

    aput v8, v4, v6

    add-int/lit8 v6, v5, 0x3

    mul-int/2addr v5, v7

    int-to-float v5, v5

    .line 98
    aput v5, v4, v6

    goto :goto_3

    .line 100
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mFFTPoints:[F

    mul-int/lit8 v5, v3, 0x4

    iget v6, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mDivisions:I

    mul-int v7, v5, v6

    int-to-float v7, v7

    aput v7, v4, v5

    add-int/lit8 v7, v5, 0x2

    mul-int/2addr v5, v6

    int-to-float v5, v5

    .line 101
    aput v5, v4, v7

    .line 103
    :goto_3
    iget v4, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mDivisions:I

    mul-int v5, v4, v3

    aget-byte v5, p1, v5

    mul-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    .line 104
    aget-byte v4, p1, v4

    mul-int/2addr v5, v5

    mul-int/2addr v4, v4

    add-int/2addr v5, v4

    int-to-float v4, v5

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-lez v6, :cond_7

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    float-to-double v8, v4

    .line 106
    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    double-to-int v4, v8

    goto :goto_4

    :cond_7
    move v4, v2

    .line 107
    :goto_4
    iget-boolean v6, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mSmoothingEnabled:Z

    if-eqz v6, :cond_8

    .line 108
    iget-object v6, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mFFTAverage:[Lcom/android/systemui/navigation/pulse/FFTAverage;

    aget-object v6, v6, v3

    invoke-virtual {v6, v4}, Lcom/android/systemui/navigation/pulse/FFTAverage;->average(I)I

    move-result v4

    .line 110
    :cond_8
    iget-boolean v6, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mVertical:Z

    if-eqz v6, :cond_b

    .line 111
    iget-object v6, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mFFTPoints:[F

    mul-int/lit8 v7, v3, 0x4

    iget-boolean v8, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mLeftInLandscape:Z

    if-eqz v8, :cond_9

    goto :goto_5

    :cond_9
    iget v5, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mWidth:I

    int-to-float v5, v5

    :goto_5
    aput v5, v6, v7

    .line 112
    iget-object v5, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mFFTPoints:[F

    add-int/lit8 v7, v7, 0x2

    iget-boolean v6, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mLeftInLandscape:Z

    if-eqz v6, :cond_a

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    goto :goto_6

    .line 113
    :cond_a
    iget v6, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mWidth:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x2

    sub-int/2addr v6, v4

    int-to-float v4, v6

    :goto_6
    aput v4, v5, v7

    goto :goto_7

    .line 115
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mFFTPoints:[F

    mul-int/lit8 v6, v3, 0x4

    add-int/lit8 v7, v6, 0x1

    iget v8, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mHeight:I

    int-to-float v9, v8

    aput v9, v5, v7

    add-int/lit8 v6, v6, 0x3

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x2

    sub-int/2addr v8, v4

    int-to-float v4, v8

    .line 116
    aput v4, v5, v6

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 120
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mFFTPoints:[F

    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 121
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/Renderer;->postInvalidate()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 134
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mView:Lcom/android/systemui/navigation/pulse/PulseView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mView:Lcom/android/systemui/navigation/pulse/PulseView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_1

    .line 135
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mView:Lcom/android/systemui/navigation/pulse/PulseView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mWidth:I

    .line 136
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mView:Lcom/android/systemui/navigation/pulse/PulseView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mHeight:I

    .line 137
    iget-boolean p2, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mKeyguardShowing:Z

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mWidth:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mVertical:Z

    .line 138
    iget p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mWidth:I

    iget p2, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mHeight:I

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 139
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mCanvas:Landroid/graphics/Canvas;

    :cond_1
    return-void
.end method

.method public onStreamAnalyzed(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mIsValidStream:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 75
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->onSizeChanged(IIII)V

    .line 76
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mColorController:Lcom/android/systemui/navigation/pulse/ColorController;

    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorController;->startLavaLamp()V

    :cond_0
    return-void
.end method

.method public onUpdateColor(I)V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public onVisualizerLinkChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 161
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mColorController:Lcom/android/systemui/navigation/pulse/ColorController;

    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorController;->stopLavaLamp()V

    :cond_0
    return-void
.end method

.method public setLeftInLandscape(Z)V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mLeftInLandscape:Z

    if-eq v0, p1, :cond_0

    .line 146
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->mLeftInLandscape:Z

    const/4 p1, 0x0

    .line 147
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/android/systemui/navigation/pulse/FadingBlockRenderer;->onSizeChanged(IIII)V

    :cond_0
    return-void
.end method
