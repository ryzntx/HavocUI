.class public Lcom/android/systemui/navigation/pulse/SolidLineRenderer;
.super Lcom/android/systemui/navigation/pulse/Renderer;
.source "SolidLineRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;,
        Lcom/android/systemui/navigation/pulse/SolidLineRenderer$2;,
        Lcom/android/systemui/navigation/pulse/SolidLineRenderer$3;
    }
.end annotation


# instance fields
.field private mAutoColor:Z

.field private mOverrideIconColor:I

.field private mHandler:Landroid/os/Handler;

.field private mColor:I

.field private mDbFuzzFactor:I

.field private mFFTAverage:[Lcom/android/systemui/navigation/pulse/FFTAverage;

.field private mFFTPoints:[F

.field private mHeight:I

.field private mLeftInLandscape:Z

.field private final mObserver:Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;

.field private final mPaint:Landroid/graphics/Paint;

.field private mSmoothingEnabled:Z

.field private mUnits:I

.field private mUnitsOpacity:I

.field private mValueAnimators:[Landroid/animation/ValueAnimator;

.field private mWidth:I


# direct methods
.method static synthetic access$jiamvut(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mAutoColor:Z

    return p0
.end method

.method private UpdateListener()V
    .locals 5

    .prologue
    const/4 v3, 0x0
    
    const/4 v1, 0x0
    
    const/4 v4, 0x1
    
    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mHandler:Landroid/os/Handler;

    .line 48
    iput v3, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mOverrideIconColor:I

    .line 81
    new-array v0, v4, [Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    new-instance v1, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$2;

    invoke-direct {v1, p0, p0}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$2;-><init>(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->addListener([Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;)V

    .line 116
    return-void
.end method

.method private setColor()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$3;-><init>(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic -get10(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    .prologue
    iget v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mOverrideIconColor:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -set6(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/navigation/pulse/SolidLineRenderer;
    .param p1, "-color"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mOverrideIconColor:I

    return-void
.end method

.method static synthetic -wrap0(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->setColor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/navigation/pulse/PulseView;Lcom/android/systemui/navigation/pulse/ColorController;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/navigation/pulse/Renderer;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/navigation/pulse/PulseView;Lcom/android/systemui/navigation/pulse/ColorController;)V

    const/16 p1, 0xff

    .line 42
    iput p1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mUnitsOpacity:I

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mColor:I

    .line 58
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    .line 59
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, 0x5

    .line 60
    iput p1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mDbFuzzFactor:I

    .line 61
    new-instance p1, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;-><init>(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mObserver:Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;

    .line 62
    invoke-virtual {p1}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;->updateSettings()V

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->loadValueAnimators()V

    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->UpdateListener()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mDbFuzzFactor:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mSmoothingEnabled:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mSmoothingEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mUnits:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mUnits:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->stopAnimation(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;[F)[F
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mFFTPoints:[F

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->setupFFTAverage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)[Lcom/android/systemui/navigation/pulse/FFTAverage;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mFFTAverage:[Lcom/android/systemui/navigation/pulse/FFTAverage;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;[Lcom/android/systemui/navigation/pulse/FFTAverage;)[Lcom/android/systemui/navigation/pulse/FFTAverage;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mFFTAverage:[Lcom/android/systemui/navigation/pulse/FFTAverage;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mUnitsOpacity:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mUnitsOpacity:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mColor:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;)Landroid/graphics/Paint;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private synthetic lambda$loadValueAnimators$0(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mFFTPoints:[F

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v0, p1

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/Renderer;->postInvalidate()V

    return-void
.end method

.method private loadValueAnimators()V
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mValueAnimators:[Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 76
    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->stopAnimation(I)V

    .line 78
    :cond_0
    iget v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mUnits:I

    new-array v0, v0, [Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mValueAnimators:[Landroid/animation/ValueAnimator;

    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mVertical:Z

    const/4 v1, 0x0

    .line 80
    :goto_0
    iget v2, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mUnits:I

    if-ge v1, v2, :cond_2

    if-eqz v0, :cond_1

    mul-int/lit8 v2, v1, 0x4

    goto :goto_1

    :cond_1
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    .line 87
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mValueAnimators:[Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    aput-object v4, v3, v1

    .line 88
    iget-object v3, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mValueAnimators:[Landroid/animation/ValueAnimator;

    aget-object v3, v3, v1

    const-wide/16 v4, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 89
    iget-object v3, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mValueAnimators:[Landroid/animation/ValueAnimator;

    aget-object v3, v3, v1

    new-instance v4, Lcom/android/systemui/navigation/pulse/-$$Lambda$SolidLineRenderer$HK3F7MeBqCnMLdoYn8JbJ2qQF-o;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/navigation/pulse/-$$Lambda$SolidLineRenderer$HK3F7MeBqCnMLdoYn8JbJ2qQF-o;-><init>(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setPortraitPoints()V
    .locals 8

    .line 107
    iget v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mUnits:I

    int-to-float v0, v0

    .line 108
    iget v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x41100000    # 9.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    div-float/2addr v1, v0

    add-float/2addr v1, v2

    .line 111
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x0

    .line 112
    :goto_0
    iget v3, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mUnits:I

    if-ge v0, v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mFFTPoints:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v5, v4, 0x2

    int-to-float v6, v0

    mul-float/2addr v6, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v2, v7

    add-float/2addr v6, v7

    aput v6, v3, v5

    aput v6, v3, v4

    add-int/lit8 v5, v4, 0x1

    .line 114
    iget v6, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mHeight:I

    int-to-float v7, v6

    aput v7, v3, v5

    add-int/lit8 v4, v4, 0x3

    int-to-float v5, v6

    .line 115
    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setVerticalPoints()V
    .locals 9

    .line 120
    iget v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mUnits:I

    int-to-float v0, v0

    .line 121
    iget v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x41100000    # 9.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    div-float/2addr v1, v0

    add-float/2addr v1, v2

    .line 124
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x0

    .line 125
    :goto_0
    iget v3, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mUnits:I

    if-ge v0, v3, :cond_2

    .line 126
    iget-object v3, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mFFTPoints:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v4, 0x3

    int-to-float v7, v0

    mul-float/2addr v7, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v2, v8

    add-float/2addr v7, v8

    aput v7, v3, v6

    aput v7, v3, v5

    .line 127
    iget-boolean v5, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mLeftInLandscape:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    iget v5, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mWidth:I

    int-to-float v5, v5

    :goto_1
    aput v5, v3, v4

    .line 128
    iget-object v3, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mFFTPoints:[F

    add-int/lit8 v4, v4, 0x2

    iget-boolean v5, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mLeftInLandscape:Z

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    iget v5, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mWidth:I

    int-to-float v6, v5

    :goto_2
    aput v6, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setupFFTAverage()V
    .locals 3

    .line 280
    iget v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mUnits:I

    new-array v0, v0, [Lcom/android/systemui/navigation/pulse/FFTAverage;

    iput-object v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mFFTAverage:[Lcom/android/systemui/navigation/pulse/FFTAverage;

    const/4 v0, 0x0

    .line 281
    :goto_0
    iget v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mUnits:I

    if-ge v0, v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mFFTAverage:[Lcom/android/systemui/navigation/pulse/FFTAverage;

    new-instance v2, Lcom/android/systemui/navigation/pulse/FFTAverage;

    invoke-direct {v2}, Lcom/android/systemui/navigation/pulse/FFTAverage;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private stopAnimation(I)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mValueAnimators:[Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mValueAnimators:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 102
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mValueAnimators:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mObserver:Lcom/android/systemui/navigation/pulse/SolidLineRenderer$CMRendererObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 196
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mColorController:Lcom/android/systemui/navigation/pulse/ColorController;

    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorController;->stopLavaLamp()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mFFTPoints:[F

    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method

.method public synthetic lambda$loadValueAnimators$0$SolidLineRenderer(ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->lambda$loadValueAnimators$0(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onFFTUpdate([B)V
    .locals 10

    .line 158
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mDbFuzzFactor:I

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mDbFuzzFactor:I

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    .line 159
    :goto_1
    iget v3, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mUnits:I

    if-ge v2, v3, :cond_7

    .line 160
    iget-object v3, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mValueAnimators:[Landroid/animation/ValueAnimator;

    aget-object v4, v3, v2

    if-nez v4, :cond_1

    goto/16 :goto_4

    .line 161
    :cond_1
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 162
    aget-byte v4, p1, v4

    const/4 v5, 0x3

    add-int/2addr v3, v5

    .line 163
    aget-byte v3, p1, v3

    mul-int/2addr v4, v4

    mul-int/2addr v3, v3

    add-int/2addr v4, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    float-to-double v3, v3

    .line 165
    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    goto :goto_2

    :cond_2
    move v3, v1

    .line 166
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mSmoothingEnabled:Z

    if-eqz v4, :cond_4

    .line 167
    iget-object v4, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mFFTAverage:[Lcom/android/systemui/navigation/pulse/FFTAverage;

    if-nez v4, :cond_3

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->setupFFTAverage()V

    .line 170
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mFFTAverage:[Lcom/android/systemui/navigation/pulse/FFTAverage;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Lcom/android/systemui/navigation/pulse/FFTAverage;->average(I)I

    move-result v3

    .line 172
    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mVertical:Z

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v4, :cond_6

    .line 173
    iget-boolean v4, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mLeftInLandscape:Z

    if-eqz v4, :cond_5

    .line 174
    iget-object v4, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mValueAnimators:[Landroid/animation/ValueAnimator;

    aget-object v4, v4, v2

    new-array v5, v7, [F

    iget-object v7, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mFFTPoints:[F

    mul-int/lit8 v8, v2, 0x4

    aget v7, v7, v8

    aput v7, v5, v1

    mul-int/2addr v3, v0

    int-to-float v3, v3

    aput v3, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_3

    .line 177
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mValueAnimators:[Landroid/animation/ValueAnimator;

    aget-object v4, v4, v2

    new-array v5, v7, [F

    iget-object v8, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mFFTPoints:[F

    mul-int/lit8 v9, v2, 0x4

    aget v9, v8, v9

    aput v9, v5, v1

    aget v7, v8, v7

    mul-int/2addr v3, v0

    int-to-float v3, v3

    sub-float/2addr v7, v3

    aput v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_3

    .line 181
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mValueAnimators:[Landroid/animation/ValueAnimator;

    aget-object v4, v4, v2

    new-array v7, v7, [F

    iget-object v8, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mFFTPoints:[F

    mul-int/lit8 v9, v2, 0x4

    add-int/2addr v9, v6

    aget v9, v8, v9

    aput v9, v7, v1

    aget v5, v8, v5

    mul-int/2addr v3, v0

    int-to-float v3, v3

    sub-float/2addr v5, v3

    aput v5, v7, v6

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 184
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mValueAnimators:[Landroid/animation/ValueAnimator;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 134
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mView:Lcom/android/systemui/navigation/pulse/PulseView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mView:Lcom/android/systemui/navigation/pulse/PulseView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_2

    .line 135
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mView:Lcom/android/systemui/navigation/pulse/PulseView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mWidth:I

    .line 136
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mView:Lcom/android/systemui/navigation/pulse/PulseView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mHeight:I

    .line 137
    iget-boolean p2, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mKeyguardShowing:Z

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mWidth:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mVertical:Z

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->loadValueAnimators()V

    .line 139
    iget-boolean p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mVertical:Z

    if-eqz p1, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->setVerticalPoints()V

    goto :goto_1

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->setPortraitPoints()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onStreamAnalyzed(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mIsValidStream:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 151
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->onSizeChanged(IIII)V

    .line 152
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mColorController:Lcom/android/systemui/navigation/pulse/ColorController;

    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorController;->startLavaLamp()V

    :cond_0
    return-void
.end method

.method public onUpdateColor(I)V
    .locals 1

    .line 208
    iput p1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mColor:I

    .line 209
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mUnitsOpacity:I

    invoke-static {p1, p0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public onVisualizerLinkChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mColorController:Lcom/android/systemui/navigation/pulse/ColorController;

    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorController;->stopLavaLamp()V

    :cond_0
    return-void
.end method

.method public setLeftInLandscape(Z)V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mLeftInLandscape:Z

    if-eq v0, p1, :cond_0

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->mLeftInLandscape:Z

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->onSizeChanged(IIII)V

    :cond_0
    return-void
.end method
