.class Lcom/android/systemui/CPUInfoService$CPUView;
.super Landroid/view/View;
.source "CPUInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/CPUInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CPUView"
.end annotation


# instance fields
.field private mAscent:F

.field private mCpuTemp:Ljava/lang/String;

.field private mCurCPUHandler:Landroid/os/Handler;

.field private mDataAvail:Z

.field private mFH:I

.field private mMaxWidth:I

.field private mNeededHeight:I

.field private mNeededWidth:I

.field private mOfflinePaint:Landroid/graphics/Paint;

.field private mOnlinePaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/systemui/CPUInfoService;


# direct methods
.method constructor <init>(Lcom/android/systemui/CPUInfoService;Landroid/content/Context;)V
    .locals 5

    .line 115
    iput-object p1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->this$0:Lcom/android/systemui/CPUInfoService;

    .line 116
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance p1, Lcom/android/systemui/CPUInfoService$CPUView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/CPUInfoService$CPUView$1;-><init>(Lcom/android/systemui/CPUInfoService$CPUView;)V

    iput-object p1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mCurCPUHandler:Landroid/os/Handler;

    .line 117
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x40a00000    # 5.0f

    mul-float v0, p1, p2

    .line 118
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 119
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    const/16 v0, 0x60

    const/4 v1, 0x0

    .line 120
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr p1, v0

    .line 122
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const-string v0, "monospace"

    .line 124
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 126
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mOnlinePaint:Landroid/graphics/Paint;

    .line 127
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 128
    iget-object v1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mOnlinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    iget-object v1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mOnlinePaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 130
    iget-object v1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mOnlinePaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mOnlinePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/high16 v4, -0x1000000

    invoke-virtual {v1, p2, v3, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 133
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mOfflinePaint:Landroid/graphics/Paint;

    .line 134
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 135
    iget-object p2, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mOfflinePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    iget-object p2, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mOfflinePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 137
    iget-object p1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mOfflinePaint:Landroid/graphics/Paint;

    const/high16 p2, -0x10000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object p1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mOnlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mAscent:F

    .line 140
    iget-object p1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mOnlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    .line 141
    iget p2, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mAscent:F

    sub-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mFH:I

    .line 144
    iget-object p1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mOnlinePaint:Landroid/graphics/Paint;

    const-string p2, "cpuX: interactive 00000000"

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mMaxWidth:I

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/CPUInfoService$CPUView;->updateDisplay()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/CPUInfoService$CPUView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mCpuTemp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/CPUInfoService$CPUView;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mDataAvail:Z

    return p1
.end method

.method private getCPUInfoString(I)Ljava/lang/String;
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/android/systemui/CPUInfoService$CPUView;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v0}, Lcom/android/systemui/CPUInfoService;->access$400(Lcom/android/systemui/CPUInfoService;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    .line 168
    iget-object v1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v1}, Lcom/android/systemui/CPUInfoService;->access$100(Lcom/android/systemui/CPUInfoService;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    .line 169
    iget-object v2, p0, Lcom/android/systemui/CPUInfoService$CPUView;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v2}, Lcom/android/systemui/CPUInfoService;->access$200(Lcom/android/systemui/CPUInfoService;)[Ljava/lang/String;

    move-result-object v2

    aget-object p1, v2, p1

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cpu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/systemui/CPUInfoService$CPUView;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string p0, "%8s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCpuTemp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/systemui/CPUInfoService$CPUView;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v0}, Lcom/android/systemui/CPUInfoService;->access$500(Lcom/android/systemui/CPUInfoService;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/CPUInfoService$CPUView;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {p0}, Lcom/android/systemui/CPUInfoService;->access$500(Lcom/android/systemui/CPUInfoService;)I

    move-result p0

    div-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s"

    .line 175
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private toMHz(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 236
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " MHz"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mCurCPUHandler:Landroid/os/Handler;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 151
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 156
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 157
    iget-object p0, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mCurCPUHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 184
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 185
    iget-boolean v0, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mDataAvail:Z

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 193
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 196
    iget v2, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mAscent:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 198
    iget-object v2, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mCpuTemp:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Temp: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mCpuTemp:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/systemui/CPUInfoService$CPUView;->getCpuTemp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u00b0C"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mMaxWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mOnlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 201
    iget v2, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mFH:I

    add-int/2addr v1, v2

    :cond_1
    const/4 v2, 0x0

    .line 204
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/CPUInfoService$CPUView;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v4}, Lcom/android/systemui/CPUInfoService;->access$100(Lcom/android/systemui/CPUInfoService;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 205
    invoke-direct {p0, v2}, Lcom/android/systemui/CPUInfoService$CPUView;->getCPUInfoString(I)Ljava/lang/String;

    move-result-object v4

    .line 206
    iget-object v5, p0, Lcom/android/systemui/CPUInfoService$CPUView;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v5}, Lcom/android/systemui/CPUInfoService;->access$100(Lcom/android/systemui/CPUInfoService;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    .line 207
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 208
    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v5, v0, v5

    iget v6, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mMaxWidth:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mOnlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 211
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/CPUInfoService$CPUView;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v5}, Lcom/android/systemui/CPUInfoService;->access$400(Lcom/android/systemui/CPUInfoService;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": offline"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v5, v0, v5

    iget v6, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mMaxWidth:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mOfflinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 214
    :goto_1
    iget v4, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mFH:I

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 162
    iget v0, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mNeededWidth:I

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mNeededHeight:I

    .line 163
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 162
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method updateDisplay()V
    .locals 5

    .line 219
    iget-boolean v0, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mDataAvail:Z

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/CPUInfoService$CPUView;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v0}, Lcom/android/systemui/CPUInfoService;->access$600(Lcom/android/systemui/CPUInfoService;)I

    move-result v0

    .line 224
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mMaxWidth:I

    add-int/2addr v1, v2

    .line 225
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mFH:I

    iget-object v4, p0, Lcom/android/systemui/CPUInfoService$CPUView;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v4}, Lcom/android/systemui/CPUInfoService;->access$700(Lcom/android/systemui/CPUInfoService;)Z

    move-result v4

    add-int/2addr v4, v0

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 226
    iget v0, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mNeededWidth:I

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mNeededHeight:I

    if-eq v2, v0, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 227
    :cond_2
    :goto_0
    iput v1, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mNeededWidth:I

    .line 228
    iput v2, p0, Lcom/android/systemui/CPUInfoService$CPUView;->mNeededHeight:I

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_1
    return-void
.end method
