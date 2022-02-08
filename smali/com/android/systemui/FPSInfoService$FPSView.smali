.class Lcom/android/systemui/FPSInfoService$FPSView;
.super Landroid/view/View;
.source "FPSInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/FPSInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FPSView"
.end annotation


# instance fields
.field private mAscent:F

.field private mCurFPSHandler:Landroid/os/Handler;

.field private mDataAvail:Z

.field private mFH:I

.field private mMaxWidth:I

.field private mNeededHeight:I

.field private mNeededWidth:I

.field private mOnlinePaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/systemui/FPSInfoService;


# direct methods
.method constructor <init>(Lcom/android/systemui/FPSInfoService;Landroid/content/Context;)V
    .locals 2

    .line 80
    iput-object p1, p0, Lcom/android/systemui/FPSInfoService$FPSView;->this$0:Lcom/android/systemui/FPSInfoService;

    .line 81
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance p1, Lcom/android/systemui/FPSInfoService$FPSView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/FPSInfoService$FPSView$1;-><init>(Lcom/android/systemui/FPSInfoService$FPSView;)V

    iput-object p1, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mCurFPSHandler:Landroid/os/Handler;

    .line 82
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x40a00000    # 5.0f

    mul-float v0, p1, p2

    .line 83
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 84
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    const/16 v0, 0x60

    const/4 v1, 0x0

    .line 85
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr p1, v0

    .line 87
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mOnlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mOnlinePaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    iget-object p1, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mOnlinePaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object p1, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mOnlinePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    const/high16 v1, -0x1000000

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 95
    iget-object p1, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mOnlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mAscent:F

    .line 96
    iget-object p1, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mOnlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    .line 97
    iget p2, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mAscent:F

    sub-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mFH:I

    .line 100
    iget-object p1, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mOnlinePaint:Landroid/graphics/Paint;

    const-string p2, "FPS: XYZ"

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mMaxWidth:I

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/FPSInfoService$FPSView;->updateDisplay()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/FPSInfoService$FPSView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/FPSInfoService$FPSView;->parseMeasuredFps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/FPSInfoService$FPSView;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mDataAvail:Z

    return p1
.end method

.method private getFPSInfoString()Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/FPSInfoService$FPSView;->this$0:Lcom/android/systemui/FPSInfoService;

    invoke-static {p0}, Lcom/android/systemui/FPSInfoService;->access$000(Lcom/android/systemui/FPSInfoService;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseMeasuredFps(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string p0, ": "

    .line 151
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 152
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "FPSInfoService"

    const-string p1, "NumberFormatException occured at parsing FPS data"

    .line 154
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "err"

    .line 156
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FPS: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mCurFPSHandler:Landroid/os/Handler;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 107
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 112
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 113
    iget-object p0, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mCurFPSHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 128
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mDataAvail:Z

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 137
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 140
    iget v2, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mAscent:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/FPSInfoService$FPSView;->getFPSInfoString()Ljava/lang/String;

    move-result-object v2

    .line 143
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mMaxWidth:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mOnlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 118
    iget v0, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mNeededWidth:I

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mNeededHeight:I

    .line 119
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 118
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method updateDisplay()V
    .locals 3

    .line 160
    iget-boolean v0, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mDataAvail:Z

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mMaxWidth:I

    add-int/2addr v0, v1

    .line 165
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x28

    .line 166
    iget v2, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mNeededWidth:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mNeededHeight:I

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 167
    :cond_2
    :goto_0
    iput v0, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mNeededWidth:I

    .line 168
    iput v1, p0, Lcom/android/systemui/FPSInfoService$FPSView;->mNeededHeight:I

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_1
    return-void
.end method
