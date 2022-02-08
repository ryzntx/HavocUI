.class public Lcom/android/settingslib/graph/FullCircleBatteryDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FullCircleBatteryDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFullCircleBatteryDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullCircleBatteryDrawable.kt\ncom/android/settingslib/graph/FullCircleBatteryDrawable\n*L\n1#1,326:1\n*E\n"
.end annotation


# instance fields
.field private batteryAlpha:I

.field private batteryLevel:I

.field private final batteryPaint:Landroid/graphics/Paint;

.field private chargeColor:I

.field private charging:Z

.field private chargingAnimator:Landroid/animation/ValueAnimator;

.field private final colors:[I

.field private final context:Landroid/content/Context;

.field private criticalLevel:I

.field private dualTone:Z

.field private final frame:Landroid/graphics/RectF;

.field private final framePaint:Landroid/graphics/Paint;

.field private height:I

.field private iconTint:I

.field private intrinsicHeight:I

.field private intrinsicWidth:I

.field private final padding:Landroid/graphics/Rect;

.field private powerSaveEnabled:Z

.field private final powerSavePaint:Landroid/graphics/Paint;

.field private showPercent:Z

.field private final textPaint:Landroid/graphics/Paint;

.field private final warningString:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->context:Landroid/content/Context;

    .line 39
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->padding:Landroid/graphics/Rect;

    .line 40
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->iconTint:I

    .line 54
    iput p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryLevel:I

    .line 60
    iget-object p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0032

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->criticalLevel:I

    .line 283
    iget-object p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 284
    sget v0, Lcom/android/settingslib/R$array;->batterymeter_color_levels:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 285
    sget v1, Lcom/android/settingslib/R$array;->batterymeter_color_values:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 286
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->colors:[I

    .line 287
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    .line 288
    iget-object v6, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->colors:[I

    mul-int/lit8 v7, v5, 0x2

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    aput v8, v6, v7

    .line 289
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v6

    if-ne v6, v3, :cond_0

    .line 290
    iget-object v6, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->colors:[I

    add-int/lit8 v7, v7, 0x1

    .line 291
    iget-object v8, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->context:Landroid/content/Context;

    .line 292
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    move-result v9

    .line 290
    invoke-static {v8, v9}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v8

    aput v8, v6, v7

    goto :goto_1

    .line 295
    :cond_0
    iget-object v6, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->colors:[I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    aput v8, v6, v7

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 299
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    sget v0, Lcom/android/settingslib/R$string;->battery_meter_very_low_overlay_symbol:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "res.getString(R.string.b\u2026_very_low_overlay_symbol)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->warningString:Ljava/lang/String;

    .line 301
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->framePaint:Landroid/graphics/Paint;

    .line 302
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    iget-object p2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->framePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 304
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryPaint:Landroid/graphics/Paint;

    .line 305
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 306
    iget-object p2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryAlpha:I

    .line 307
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    const-string v0, "sans-serif-condensed"

    .line 308
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 309
    iget-object p2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 310
    iget-object p2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 311
    iget-object p2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 312
    iget-object p2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->context:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/R$color;->meter_consumed_color:I

    invoke-static {p2, v0}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->chargeColor:I

    .line 313
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->powerSavePaint:Landroid/graphics/Paint;

    .line 315
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->context:Landroid/content/Context;

    .line 316
    sget v1, Lcom/android/settingslib/R$color;->batterymeter_plus_color:I

    .line 314
    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    iget-object p2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->powerSavePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 319
    iget-object p2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->powerSavePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 320
    sget p2, Lcom/android/settingslib/R$dimen;->battery_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->intrinsicWidth:I

    .line 321
    sget p2, Lcom/android/settingslib/R$dimen;->battery_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->intrinsicHeight:I

    const p2, 0x1110033

    .line 323
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->dualTone:Z

    return-void
.end method

.method public static final synthetic access$postInvalidate(Lcom/android/settingslib/graph/FullCircleBatteryDrawable;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->postInvalidate()V

    return-void
.end method

.method public static final synthetic access$setBatteryAlpha$p(Lcom/android/settingslib/graph/FullCircleBatteryDrawable;I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryAlpha:I

    return-void
.end method

.method public static final synthetic access$setChargingAnimator$p(Lcom/android/settingslib/graph/FullCircleBatteryDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->chargingAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private final batteryColorForLevel(I)I
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->charging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->powerSaveEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->getColorForLevel(I)I

    move-result p0

    goto :goto_1

    .line 189
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->chargeColor:I

    :goto_1
    return p0
.end method

.method private final cancelChargingAnimation()V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->chargingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private final getColorForLevel(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 171
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->colors:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 172
    aget v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    .line 173
    aget v3, v2, v3

    if-gt p1, v1, :cond_1

    .line 176
    array-length p1, v2

    add-int/lit8 p1, p1, -0x2

    if-ne v0, p1, :cond_0

    .line 177
    iget v3, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->iconTint:I

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_0

    :cond_2
    return v1
.end method

.method private final postInvalidate()V
    .locals 3

    .line 124
    new-instance v0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$postInvalidate$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$postInvalidate$1;-><init>(Lcom/android/settingslib/graph/FullCircleBatteryDrawable;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 125
    new-instance v0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$postInvalidate$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$postInvalidate$2;-><init>(Lcom/android/settingslib/graph/FullCircleBatteryDrawable;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final startChargingAnimation(I)V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x2

    aput v0, v1, v2

    .line 91
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->chargingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 92
    new-instance v2, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$startChargingAnimation$1;

    invoke-direct {v2, p0}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$startChargingAnimation$1;-><init>(Lcom/android/settingslib/graph/FullCircleBatteryDrawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->chargingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$startChargingAnimation$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$startChargingAnimation$2;-><init>(Lcom/android/settingslib/graph/FullCircleBatteryDrawable;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->chargingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->chargingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    const-wide/16 v0, 0xfa0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 112
    :cond_3
    iget-object p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->chargingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 113
    :cond_4
    iget-object p0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->chargingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    return-void
.end method

.method private final updateSize()V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->padding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->height:I

    .line 136
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->padding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->width:I

    .line 137
    sget v1, Lcom/android/settingslib/R$dimen;->battery_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->intrinsicHeight:I

    .line 138
    sget v1, Lcom/android/settingslib/R$dimen;->battery_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->intrinsicWidth:I

    .line 139
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->height:I

    int-to-float p0, p0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->powerSavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 207
    iget v1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->width:I

    iget v2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->height:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    .line 209
    iget v4, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryLevel:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 211
    iget-boolean v5, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->charging:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->powerSaveEnabled:Z

    if-eqz v5, :cond_1

    div-float v5, v0, v2

    sub-float/2addr v3, v5

    .line 215
    :cond_1
    iget-object v5, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->framePaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 216
    iget-object v5, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->framePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 217
    iget-object v5, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 218
    iget-object v5, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 219
    iget-object v5, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    div-float/2addr v0, v2

    .line 220
    iget-object v2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v2

    add-float/2addr v7, v0

    sub-float/2addr v1, v0

    int-to-float v2, v2

    add-float/2addr v2, v1

    .line 219
    invoke-virtual {v5, v7, v0, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 224
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryLevel:I

    invoke-direct {p0, v1}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryColorForLevel(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->chargingAnimator:Landroid/animation/ValueAnimator;

    const/16 v1, 0x64

    if-eqz v0, :cond_3

    .line 226
    iget v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryLevel:I

    if-ne v0, v1, :cond_2

    .line 227
    invoke-direct {p0}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->cancelChargingAnimation()V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 233
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryLevel:I

    invoke-virtual {p0}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->getCriticalLevel()I

    move-result v2

    if-gt v0, v2, :cond_4

    move v4, v6

    .line 238
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v5, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->framePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 242
    iget v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryLevel:I

    if-eq v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->showPercent:Z

    if-eqz v0, :cond_6

    .line 243
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    .line 245
    iget v1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryLevel:I

    invoke-virtual {p0}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->getCriticalLevel()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 246
    iget v1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryLevel:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 248
    :cond_5
    iget-object v1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->warningString:Ljava/lang/String;

    :goto_1
    move-object v8, v1

    .line 249
    iget v1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->height:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    const v0, 0x3ee66666    # 0.45f

    mul-float v12, v1, v0

    .line 250
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryLevel:I

    invoke-direct {p0, v1}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryColorForLevel(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v12, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 252
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 253
    iget-object v7, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    move-object v13, v0

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 255
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    :cond_6
    cmpg-float v0, v4, v6

    if-eqz v0, :cond_7

    .line 260
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    mul-float/2addr v4, v3

    .line 261
    iget-object v2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryPaint:Landroid/graphics/Paint;

    .line 260
    invoke-virtual {p1, v0, v1, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 264
    :cond_7
    iget-boolean v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->charging:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->powerSaveEnabled:Z

    if-eqz v0, :cond_8

    .line 265
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 266
    iget-object p0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->powerSavePaint:Landroid/graphics/Paint;

    .line 265
    invoke-virtual {p1, v0, v1, v3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 268
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getCriticalLevel()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->criticalLevel:I

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->intrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->intrinsicWidth:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "padding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->padding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_0

    .line 148
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0

    .line 150
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->padding:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryLevel:I

    .line 159
    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryColorForLevel(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->chargeColor:I

    .line 160
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    invoke-direct {p0}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->updateSize()V

    return-void
.end method

.method public final setCharging(Z)V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->charging:Z

    .line 66
    iput-boolean p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->charging:Z

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    const/4 p1, -0x1

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->startChargingAnimation(I)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->cancelChargingAnimation()V

    .line 73
    invoke-direct {p0}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->postInvalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 275
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->framePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 276
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->batteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 277
    iget-object p0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setColors(III)V
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->dualTone:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    .line 196
    :goto_0
    iput p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->iconTint:I

    .line 197
    iget-object p3, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->framePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iput p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->chargeColor:I

    .line 200
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setPowerSaveEnabled(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->powerSaveEnabled:Z

    .line 80
    invoke-direct {p0}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->postInvalidate()V

    return-void
.end method

.method public final setShowPercent(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->showPercent:Z

    .line 86
    invoke-direct {p0}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->postInvalidate()V

    return-void
.end method
