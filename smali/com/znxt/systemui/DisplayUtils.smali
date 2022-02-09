.class public Lcom/znxt/systemui/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TakeScreenshotSurface(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    .line 98
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v1, "window"

    .line 99
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 101
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    .line 102
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v3, 0x3eb33333    # 0.35f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    .line 103
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v3, 0x0

    .line 102
    invoke-static {v1, v2, v0, v3, p0}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ScreenShotHelper"

    const-string v0, "screenShotBitmap error bitmap is null"

    .line 105
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 109
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getColorLightness(I)D
    .locals 6

    .line 83
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-double v2, p0

    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    return-wide v2
.end method

.method public static getDominantColorByPixelsSampling(Landroid/graphics/Bitmap;II)I
    .locals 20

    move/from16 v0, p1

    move/from16 v1, p2

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 41
    div-int/2addr v2, v1

    .line 42
    div-int/2addr v3, v0

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/16 v5, 0x24

    new-array v6, v5, [I

    new-array v7, v5, [F

    new-array v8, v5, [F

    new-array v5, v5, [F

    const/4 v9, 0x0

    const/4 v10, -0x1

    move v11, v9

    :goto_0
    const/4 v13, 0x1

    if-gt v11, v0, :cond_5

    move v14, v9

    :goto_1
    if-gt v14, v1, :cond_4

    if-lez v14, :cond_0

    mul-int v15, v2, v14

    sub-int/2addr v15, v13

    goto :goto_2

    :cond_0
    move v15, v9

    :goto_2
    if-lez v11, :cond_1

    mul-int v16, v3, v11

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v13, p0

    move/from16 v12, v16

    goto :goto_3

    :cond_1
    move-object/from16 v13, p0

    move v12, v9

    .line 52
    :goto_3
    invoke-virtual {v13, v15, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    .line 56
    invoke-static {v12, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 58
    aget v12, v4, v9

    const/high16 v15, 0x41200000    # 10.0f

    div-float/2addr v12, v15

    move/from16 v18, v10

    float-to-double v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 60
    aget v10, v7, v9

    const/4 v12, 0x0

    aget v19, v4, v12

    add-float v10, v10, v19

    aput v10, v7, v9

    .line 61
    aget v10, v8, v9

    const/4 v12, 0x1

    aget v17, v4, v12

    add-float v10, v10, v17

    aput v10, v8, v9

    .line 62
    aget v10, v5, v9

    const/16 v16, 0x2

    aget v17, v4, v16

    add-float v10, v10, v17

    aput v10, v5, v9

    .line 64
    aget v10, v6, v9

    add-int/2addr v10, v12

    aput v10, v6, v9

    if-ltz v18, :cond_3

    .line 66
    aget v10, v6, v9

    aget v12, v6, v18

    if-le v10, v12, :cond_2

    goto :goto_4

    :cond_2
    move/from16 v10, v18

    goto :goto_5

    :cond_3
    :goto_4
    move v10, v9

    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v13, p0

    move/from16 v18, v10

    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    if-gez v10, :cond_6

    const/16 v0, 0xff

    .line 72
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    .line 74
    :cond_6
    aget v0, v7, v10

    aget v1, v6, v10

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    aput v0, v4, v1

    .line 75
    aget v0, v8, v10

    aget v1, v6, v10

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x1

    aput v0, v4, v1

    .line 76
    aget v0, v5, v10

    aget v1, v6, v10

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x2

    aput v0, v4, v1

    .line 78
    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method public static getPxFromDp(Landroid/content/res/Resources;I)I
    .locals 0

    int-to-float p1, p1

    .line 35
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getRealDimensionDisplay(Landroid/content/Context;)[I
    .locals 3

    const-string/jumbo v0, "window"

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 88
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 89
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 92
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x0

    aput v1, p0, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v1, 0x1

    aput v0, p0, v1

    return-object p0
.end method
