.class public Lcom/android/settingslib/graph/CircleBatteryDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircleBatteryDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/graph/CircleBatteryDrawable$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCircleBatteryDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircleBatteryDrawable.kt\ncom/android/settingslib/graph/CircleBatteryDrawable\n*L\n1#1,349:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/settingslib/graph/CircleBatteryDrawable$Companion;


# instance fields
.field private BATTERY_STYLE_CIRCLE:I

.field private BATTERY_STYLE_DOTTED_CIRCLE:I

.field private batteryLevel:I

.field private final batteryPaint:Landroid/graphics/Paint;

.field private final boltFrame:Landroid/graphics/RectF;

.field private final boltPaint:Landroid/graphics/Paint;

.field private final boltPath:Landroid/graphics/Path;

.field private final boltPoints:[F

.field private chargeColor:I

.field private charging:Z

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

.field private meterStyle:I

.field private final padding:Landroid/graphics/Rect;

.field private final pathEffect:Landroid/graphics/DashPathEffect;

.field private final plusPaint:Landroid/graphics/Paint;

.field private powerSaveEnabled:Z

.field private final powerSavePaint:Landroid/graphics/Paint;

.field private showPercent:Z

.field private final textPaint:Landroid/graphics/Paint;

.field private final warningString:Ljava/lang/String;

.field private final warningTextPaint:Landroid/graphics/Paint;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settingslib/graph/CircleBatteryDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/graph/CircleBatteryDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->Companion:Lcom/android/settingslib/graph/CircleBatteryDrawable$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->context:Landroid/content/Context;

    .line 40
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltPath:Landroid/graphics/Path;

    .line 41
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->padding:Landroid/graphics/Rect;

    .line 42
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    .line 43
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltFrame:Landroid/graphics/RectF;

    .line 44
    new-instance p1, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->pathEffect:Landroid/graphics/DashPathEffect;

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->iconTint:I

    const/4 v1, 0x1

    .line 53
    iput v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->BATTERY_STYLE_CIRCLE:I

    .line 54
    iput v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->BATTERY_STYLE_DOTTED_CIRCLE:I

    .line 59
    iput p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryLevel:I

    .line 65
    iget-object p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x10e0032

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->criticalLevel:I

    .line 86
    iget p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->BATTERY_STYLE_CIRCLE:I

    iput p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->meterStyle:I

    .line 295
    iget-object p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 296
    sget v2, Lcom/android/settingslib/R$array;->batterymeter_color_levels:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 297
    sget v3, Lcom/android/settingslib/R$array;->batterymeter_color_values:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 298
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    mul-int/2addr v4, v0

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->colors:[I

    .line 299
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    .line 300
    iget-object v7, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->colors:[I

    mul-int/lit8 v8, v6, 0x2

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    aput v9, v7, v8

    .line 301
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v7

    if-ne v7, v0, :cond_0

    .line 302
    iget-object v7, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->colors:[I

    add-int/lit8 v8, v8, 0x1

    .line 303
    iget-object v9, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->context:Landroid/content/Context;

    .line 304
    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    move-result v10

    .line 302
    invoke-static {v9, v10}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v9

    aput v9, v7, v8

    goto :goto_1

    .line 307
    :cond_0
    iget-object v7, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->colors:[I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    aput v9, v7, v8

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 312
    sget v0, Lcom/android/settingslib/R$string;->battery_meter_very_low_overlay_symbol:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "res.getString(R.string.b\u2026_very_low_overlay_symbol)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->warningString:Ljava/lang/String;

    .line 313
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->framePaint:Landroid/graphics/Paint;

    .line 314
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    iget-object p2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->framePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 316
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryPaint:Landroid/graphics/Paint;

    .line 317
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 318
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    const-string v0, "sans-serif-condensed"

    .line 319
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 320
    iget-object p2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 321
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->warningTextPaint:Landroid/graphics/Paint;

    const-string v0, "sans-serif"

    .line 322
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 323
    iget-object p2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->warningTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 324
    iget-object p2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->colors:[I

    array-length v0, p2

    if-le v0, v1, :cond_2

    .line 325
    iget-object v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->warningTextPaint:Landroid/graphics/Paint;

    aget p2, p2, v1

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    :cond_2
    iget-object p2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->context:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/R$color;->meter_consumed_color:I

    invoke-static {p2, v0}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->chargeColor:I

    .line 328
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltPaint:Landroid/graphics/Paint;

    .line 330
    iget-object v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->context:Landroid/content/Context;

    .line 331
    sget v2, Lcom/android/settingslib/R$color;->batterymeter_bolt_color:I

    .line 329
    invoke-static {v0, v2}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 334
    sget-object p2, Lcom/android/settingslib/graph/CircleBatteryDrawable;->Companion:Lcom/android/settingslib/graph/CircleBatteryDrawable$Companion;

    const-string v0, "res"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/android/settingslib/R$array;->batterymeter_bolt_points:I

    invoke-static {p2, p1, v0}, Lcom/android/settingslib/graph/CircleBatteryDrawable$Companion;->access$loadPoints(Lcom/android/settingslib/graph/CircleBatteryDrawable$Companion;Landroid/content/res/Resources;I)[F

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltPoints:[F

    .line 335
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->plusPaint:Landroid/graphics/Paint;

    .line 337
    iget-object v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->context:Landroid/content/Context;

    .line 338
    sget v2, Lcom/android/settingslib/R$color;->batterymeter_plus_color:I

    .line 336
    invoke-static {v0, v2}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 340
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->powerSavePaint:Landroid/graphics/Paint;

    .line 341
    iget-object v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->plusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    iget-object p2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->powerSavePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 343
    sget p2, Lcom/android/settingslib/R$dimen;->battery_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->intrinsicWidth:I

    .line 344
    sget p2, Lcom/android/settingslib/R$dimen;->battery_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->intrinsicHeight:I

    const p2, 0x1110033

    .line 346
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->dualTone:Z

    return-void

    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private final batteryColorForLevel(I)I
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->charging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->powerSaveEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/CircleBatteryDrawable;->getColorForLevel(I)I

    move-result p0

    goto :goto_1

    .line 159
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->chargeColor:I

    :goto_1
    return p0
.end method

.method private final getColorForLevel(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->colors:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 142
    aget v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    .line 143
    aget v3, v2, v3

    if-gt p1, v1, :cond_1

    .line 146
    array-length p1, v2

    add-int/lit8 p1, p1, -0x2

    if-ne v0, p1, :cond_0

    .line 147
    iget v3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->iconTint:I

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

    .line 94
    new-instance v0, Lcom/android/settingslib/graph/CircleBatteryDrawable$postInvalidate$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/CircleBatteryDrawable$postInvalidate$1;-><init>(Lcom/android/settingslib/graph/CircleBatteryDrawable;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 95
    new-instance v0, Lcom/android/settingslib/graph/CircleBatteryDrawable$postInvalidate$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/CircleBatteryDrawable$postInvalidate$2;-><init>(Lcom/android/settingslib/graph/CircleBatteryDrawable;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final updateSize()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->padding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->height:I

    .line 106
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->padding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->width:I

    .line 107
    iget-object v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->warningTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->height:I

    int-to-float v2, v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 108
    sget v1, Lcom/android/settingslib/R$dimen;->battery_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->intrinsicHeight:I

    .line 109
    sget v1, Lcom/android/settingslib/R$dimen;->battery_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->intrinsicWidth:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v1, "c"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryLevel:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 176
    :cond_0
    iget v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->width:I

    iget v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->height:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40d00000    # 6.5f

    div-float v2, v1, v2

    .line 178
    iget-object v3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->framePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    iget-object v3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->framePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    iget-object v3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 181
    iget-object v3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    iget v3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->meterStyle:I

    iget v4, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->BATTERY_STYLE_DOTTED_CIRCLE:I

    if-ne v3, v4, :cond_1

    .line 183
    iget-object v3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->pathEffect:Landroid/graphics/DashPathEffect;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 184
    iget-object v3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->powerSavePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->pathEffect:Landroid/graphics/DashPathEffect;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    .line 186
    :cond_1
    iget-object v3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 187
    iget-object v3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->powerSavePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 189
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->powerSavePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    iget-object v3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 191
    iget-object v4, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->padding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v4

    add-float/2addr v5, v2

    sub-float/2addr v1, v2

    int-to-float v4, v4

    add-float/2addr v4, v1

    .line 190
    invoke-virtual {v3, v5, v2, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 195
    iget-object v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryLevel:I

    invoke-direct {p0, v2}, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryColorForLevel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    iget-boolean v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->charging:Z

    if-eqz v1, :cond_5

    .line 197
    iget-object v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->chargeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-object v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 199
    iget-object v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const v4, 0x4059999a    # 3.4f

    div-float/2addr v1, v4

    add-float/2addr v3, v1

    .line 200
    iget-object v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v1, v5

    sub-float/2addr v4, v1

    .line 201
    iget-object v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const v6, 0x40b33333    # 5.6f

    div-float/2addr v1, v6

    sub-float/2addr v5, v1

    .line 205
    iget-object v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltFrame:Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v6, v2

    if-nez v6, :cond_2

    iget v6, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v3

    if-nez v6, :cond_2

    iget v6, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v4

    if-nez v6, :cond_2

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v5

    if-eqz v1, :cond_4

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltFrame:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 208
    iget-object v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 209
    iget-object v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltPath:Landroid/graphics/Path;

    .line 210
    iget-object v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltPoints:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    .line 211
    iget-object v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltFrame:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltPoints:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v6, v2

    add-float/2addr v4, v6

    .line 209
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x2

    .line 214
    :goto_1
    iget-object v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltPoints:[F

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 215
    iget-object v3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltPath:Landroid/graphics/Path;

    .line 216
    iget-object v4, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    aget v2, v2, v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v2, v4

    add-float/2addr v6, v2

    .line 217
    iget-object v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltFrame:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltPoints:[F

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v8, v2

    add-float/2addr v4, v8

    .line 215
    invoke-virtual {v3, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 221
    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltPath:Landroid/graphics/Path;

    .line 222
    iget-object v3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltFrame:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    aget v2, v2, v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v4, v2

    .line 223
    iget-object v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltPoints:[F

    aget v5, v5, v7

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    .line 221
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 226
    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 229
    :cond_5
    iget-object v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->framePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 231
    iget v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryLevel:I

    if-lez v1, :cond_7

    .line 232
    iget-boolean v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->charging:Z

    const v3, 0x40666666    # 3.6f

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->powerSaveEnabled:Z

    if-eqz v2, :cond_6

    .line 233
    iget-object v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    const/high16 v4, 0x43870000    # 270.0f

    int-to-float v1, v1

    mul-float v5, v1, v3

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->powerSavePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_2

    .line 235
    :cond_6
    iget-object v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->frame:Landroid/graphics/RectF;

    const/high16 v4, 0x43870000    # 270.0f

    iget v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryLevel:I

    int-to-float v1, v1

    mul-float v5, v1, v3

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 239
    :cond_7
    :goto_2
    iget-boolean v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->charging:Z

    if-nez v1, :cond_9

    iget v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryLevel:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_9

    iget-boolean v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->showPercent:Z

    if-eqz v2, :cond_9

    .line 240
    iget-object v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/android/settingslib/graph/CircleBatteryDrawable;->getColorForLevel(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    iget-object v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->height:I

    int-to-float v2, v2

    const v3, 0x3f051eb8    # 0.52f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 242
    iget-object v1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    .line 244
    iget v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryLevel:I

    invoke-virtual {p0}, Lcom/android/settingslib/graph/CircleBatteryDrawable;->getCriticalLevel()I

    move-result v3

    if-le v2, v3, :cond_8

    .line 245
    iget v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 247
    :cond_8
    iget-object v2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->warningString:Ljava/lang/String;

    .line 248
    :goto_3
    iget v3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->width:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 249
    iget v4, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->height:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    const v1, 0x3ef0a3d7    # 0.47f

    mul-float/2addr v4, v1

    .line 250
    iget-object v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_9
    return-void
.end method

.method public getCriticalLevel()I
    .locals 0

    .line 65
    iget p0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->criticalLevel:I

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->intrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->intrinsicWidth:I

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

    .line 116
    iget-object v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->padding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_0

    .line 118
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->padding:Landroid/graphics/Rect;

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

    .line 128
    iput p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryLevel:I

    .line 129
    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryColorForLevel(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->chargeColor:I

    .line 130
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 100
    invoke-direct {p0}, Lcom/android/settingslib/graph/CircleBatteryDrawable;->updateSize()V

    return-void
.end method

.method public final setCharging(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->charging:Z

    .line 71
    invoke-direct {p0}, Lcom/android/settingslib/graph/CircleBatteryDrawable;->postInvalidate()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 258
    iget-object v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->framePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 259
    iget-object v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->batteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 260
    iget-object v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->warningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 261
    iget-object v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 262
    iget-object p0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->plusPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setColors(III)V
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->dualTone:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    .line 166
    :goto_0
    iput p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->iconTint:I

    .line 167
    iget-object p3, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->framePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object p2, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->boltPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iput p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->chargeColor:I

    .line 171
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setMeterStyle(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->meterStyle:I

    .line 89
    invoke-direct {p0}, Lcom/android/settingslib/graph/CircleBatteryDrawable;->postInvalidate()V

    return-void
.end method

.method public final setPowerSaveEnabled(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->powerSaveEnabled:Z

    .line 77
    invoke-direct {p0}, Lcom/android/settingslib/graph/CircleBatteryDrawable;->postInvalidate()V

    return-void
.end method

.method public final setShowPercent(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/android/settingslib/graph/CircleBatteryDrawable;->showPercent:Z

    .line 83
    invoke-direct {p0}, Lcom/android/settingslib/graph/CircleBatteryDrawable;->postInvalidate()V

    return-void
.end method
