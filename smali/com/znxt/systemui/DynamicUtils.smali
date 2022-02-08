.class public Lcom/znxt/systemui/DynamicUtils;
.super Ljava/lang/Object;
.source "DynamicUtils.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TakeScreenshotSurface()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 259
    sget-object v0, Lcom/znxt/systemui/DynamicUtils;->mContext:Landroid/content/Context;

    .line 260
    const v1, 0x3eb33333    # 0.35f

    .line 261
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 263
    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 264
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 265
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 266
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v3, v4, v1, v2, v0}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 268
    if-nez v0, :cond_0

    .line 269
    const-string v0, "DynamicUtils"

    const-string v1, "Dynamic error bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 273
    :goto_0
    return-object v0

    .line 272
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 273
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static getARGB([II)I
    .locals 9

    .prologue
    const/16 v1, 0xff

    const/4 v0, 0x0

    .line 38
    const/4 v5, 0x4

    move v2, v0

    move v3, v0

    move v4, v0

    move v6, v0

    move v7, v5

    .line 44
    :goto_0
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_7

    .line 45
    aget v5, p0, v7

    .line 46
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v8

    add-int/2addr v4, v8

    .line 47
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 48
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 49
    add-int/lit8 v3, v3, 0x1

    move v5, v3

    .line 51
    :goto_1
    add-int/lit8 v7, v7, -0x1

    .line 52
    shr-int/lit8 p1, p1, 0x1

    .line 43
    if-gez v7, :cond_6

    .line 54
    div-int/2addr v4, v5

    .line 55
    div-int v3, v6, v5

    .line 56
    div-int/2addr v2, v5

    .line 57
    if-gtz v4, :cond_2

    move v4, v0

    .line 62
    :cond_0
    :goto_2
    if-gtz v3, :cond_3

    move v3, v0

    .line 67
    :cond_1
    :goto_3
    if-gtz v2, :cond_4

    .line 72
    :goto_4
    invoke-static {v1, v4, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    .line 59
    :cond_2
    if-lt v4, v1, :cond_0

    move v4, v1

    .line 60
    goto :goto_2

    .line 64
    :cond_3
    if-lt v3, v1, :cond_1

    move v3, v1

    .line 65
    goto :goto_3

    .line 69
    :cond_4
    if-lt v2, v1, :cond_5

    move v0, v1

    .line 70
    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move v3, v5

    goto :goto_0

    :cond_7
    move v5, v3

    goto :goto_1
.end method

.method public static getTargetColorNavi(Landroid/graphics/Bitmap;I)I
    .locals 2

    .prologue
    .line 102
    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    :cond_0
    const/high16 v0, -0x1000000

    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lcom/znxt/systemui/DynamicUtils;->getTargetColorNavigationBar(Landroid/graphics/Bitmap;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getTargetColorNavigationBar(Landroid/graphics/Bitmap;I)I
    .locals 12

    .prologue
    const/16 v11, 0xe

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x5

    const/4 v1, 0x0

    .line 182
    sget-object v0, Lcom/znxt/systemui/DynamicUtils;->mContext:Landroid/content/Context;

    .line 183
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 184
    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 185
    new-array v4, v8, [I

    .line 188
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 189
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-int v3, v3

    div-int v3, p1, v3

    sub-int/2addr v0, v3

    add-int/lit8 v3, v0, -0x5

    .line 190
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    div-int v2, v9, v0

    move v0, v1

    .line 192
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    aput v5, v4, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    .line 191
    if-lt v0, v8, :cond_0

    .line 195
    new-array v5, v8, [I

    move v0, v1

    .line 198
    :cond_1
    aput v1, v5, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    .line 197
    if-lt v0, v8, :cond_1

    move v0, v1

    .line 203
    :cond_2
    aget v6, v4, v0

    move v2, v1

    move v3, v1

    .line 207
    :cond_3
    shl-int/lit8 v2, v2, 0x1

    .line 208
    aget v7, v4, v3

    if-ne v6, v7, :cond_4

    .line 209
    or-int/lit8 v2, v2, 0x1

    .line 211
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 206
    if-lt v3, v8, :cond_3

    .line 213
    aput v2, v5, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    .line 202
    if-lt v0, v8, :cond_2

    .line 216
    aget v0, v5, v1

    .line 217
    const/16 v2, 0x1d

    if-ge v0, v2, :cond_5

    const/16 v2, 0x17

    if-eq v0, v2, :cond_5

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_7

    .line 218
    :cond_5
    aget v0, v4, v1

    .line 251
    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 252
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 253
    aget v2, v1, v10

    .line 254
    const v2, 0x3f4ccccd    # 0.8f

    aput v2, v1, v10

    move v1, v0

    .line 255
    :cond_6
    return v1

    .line 219
    :cond_7
    aget v0, v5, v9

    const/16 v2, 0xf

    if-eq v0, v2, :cond_8

    aget v0, v5, v1

    const/16 v2, 0x11

    if-ne v0, v2, :cond_9

    aget v0, v5, v9

    if-ne v0, v11, :cond_9

    .line 220
    :cond_8
    aget v0, v4, v9

    goto :goto_0

    :cond_9
    move v0, v1

    .line 224
    :cond_a
    aput v1, v5, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    .line 223
    if-lt v0, v8, :cond_a

    move v0, v1

    .line 229
    :cond_b
    aget v6, v4, v0

    move v2, v1

    move v3, v1

    .line 233
    :cond_c
    shl-int/lit8 v2, v2, 0x1

    .line 234
    aget v7, v4, v3

    invoke-static {v6, v7}, Lcom/znxt/systemui/DynamicUtils;->isColorsSama(II)I

    move-result v7

    if-eqz v7, :cond_d

    .line 235
    or-int/lit8 v2, v2, 0x1

    .line 237
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 232
    if-lt v3, v8, :cond_c

    .line 239
    aput v2, v5, v0

    .line 240
    add-int/lit8 v0, v0, 0x1

    .line 228
    if-lt v0, v8, :cond_b

    .line 242
    aget v0, v5, v1

    .line 243
    const/16 v2, 0x1d

    if-ge v0, v2, :cond_e

    const/16 v2, 0x17

    if-eq v0, v2, :cond_e

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_f

    .line 244
    :cond_e
    aget v0, v5, v1

    invoke-static {v4, v0}, Lcom/znxt/systemui/DynamicUtils;->getARGB([II)I

    move-result v0

    goto :goto_0

    .line 245
    :cond_f
    aget v0, v5, v9

    const/16 v2, 0xf

    if-eq v0, v2, :cond_10

    aget v0, v5, v1

    const/16 v2, 0x11

    if-ne v0, v2, :cond_6

    aget v0, v5, v9

    if-ne v0, v11, :cond_6

    .line 248
    :cond_10
    aget v0, v5, v9

    invoke-static {v4, v0}, Lcom/znxt/systemui/DynamicUtils;->getARGB([II)I

    move-result v0

    goto :goto_0
.end method

.method public static getTargetColorStatus(Landroid/graphics/Bitmap;I)I
    .locals 12

    .prologue
    const/16 v11, 0xe

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x5

    const/4 v1, 0x0

    .line 106
    sget-object v0, Lcom/znxt/systemui/DynamicUtils;->mContext:Landroid/content/Context;

    .line 107
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 108
    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 109
    new-array v4, v8, [I

    .line 112
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    div-int v0, p1, v0

    add-int/lit8 v3, v0, 0x2

    .line 113
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    div-int v2, v9, v0

    move v0, v1

    .line 115
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    aput v5, v4, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 114
    if-lt v0, v8, :cond_0

    .line 118
    new-array v5, v8, [I

    move v0, v1

    .line 121
    :cond_1
    aput v1, v5, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 120
    if-lt v0, v8, :cond_1

    move v0, v1

    .line 126
    :cond_2
    aget v6, v4, v0

    move v2, v1

    move v3, v1

    .line 130
    :cond_3
    shl-int/lit8 v2, v2, 0x1

    .line 131
    aget v7, v4, v3

    if-ne v6, v7, :cond_4

    .line 132
    or-int/lit8 v2, v2, 0x1

    .line 134
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 129
    if-lt v3, v8, :cond_3

    .line 136
    aput v2, v5, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    .line 125
    if-lt v0, v8, :cond_2

    .line 139
    aget v0, v5, v1

    .line 140
    const/16 v2, 0x1d

    if-ge v0, v2, :cond_5

    const/16 v2, 0x17

    if-eq v0, v2, :cond_5

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_7

    .line 141
    :cond_5
    aget v0, v4, v1

    .line 174
    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 175
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 176
    aget v2, v1, v10

    .line 177
    const v2, 0x3f4ccccd    # 0.8f

    aput v2, v1, v10

    move v1, v0

    .line 178
    :cond_6
    return v1

    .line 142
    :cond_7
    aget v0, v5, v9

    const/16 v2, 0xf

    if-eq v0, v2, :cond_8

    aget v0, v5, v1

    const/16 v2, 0x11

    if-ne v0, v2, :cond_9

    aget v0, v5, v9

    if-ne v0, v11, :cond_9

    .line 143
    :cond_8
    aget v0, v4, v9

    goto :goto_0

    :cond_9
    move v0, v1

    .line 147
    :cond_a
    aput v1, v5, v0

    .line 148
    add-int/lit8 v0, v0, 0x1

    .line 146
    if-lt v0, v8, :cond_a

    move v0, v1

    .line 152
    :cond_b
    aget v6, v4, v0

    move v2, v1

    move v3, v1

    .line 156
    :cond_c
    shl-int/lit8 v2, v2, 0x1

    .line 157
    aget v7, v4, v3

    invoke-static {v6, v7}, Lcom/znxt/systemui/DynamicUtils;->isColorsSama(II)I

    move-result v7

    if-eqz v7, :cond_d

    .line 158
    or-int/lit8 v2, v2, 0x1

    .line 160
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 155
    if-lt v3, v8, :cond_c

    .line 162
    aput v2, v5, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 151
    if-lt v0, v8, :cond_b

    .line 165
    aget v0, v5, v1

    .line 166
    const/16 v2, 0x1d

    if-ge v0, v2, :cond_e

    const/16 v2, 0x17

    if-eq v0, v2, :cond_e

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_f

    .line 167
    :cond_e
    aget v0, v5, v1

    invoke-static {v4, v0}, Lcom/znxt/systemui/DynamicUtils;->getARGB([II)I

    move-result v0

    goto :goto_0

    .line 168
    :cond_f
    aget v0, v5, v9

    const/16 v2, 0xf

    if-eq v0, v2, :cond_10

    aget v0, v5, v1

    const/16 v2, 0x11

    if-ne v0, v2, :cond_6

    aget v0, v5, v9

    if-ne v0, v11, :cond_6

    .line 171
    :cond_10
    aget v0, v5, v9

    invoke-static {v4, v0}, Lcom/znxt/systemui/DynamicUtils;->getARGB([II)I

    move-result v0

    goto :goto_0
.end method

.method public static getTargetColorStatusBar(Landroid/graphics/Bitmap;I)I
    .locals 2

    .prologue
    .line 98
    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    :cond_0
    const/high16 v0, -0x1000000

    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lcom/znxt/systemui/DynamicUtils;->getTargetColorStatus(Landroid/graphics/Bitmap;I)I

    move-result v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    sput-object p0, Lcom/znxt/systemui/DynamicUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static isColorsSama(II)I
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/16 v6, 0x14

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    new-array v2, v3, [F

    .line 77
    new-array v3, v3, [F

    .line 78
    invoke-static {p0, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 79
    aget v4, v2, v1

    .line 80
    invoke-static {p1, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 81
    aget v5, v3, v1

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    if-gt v4, v6, :cond_0

    .line 82
    invoke-static {p0, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 83
    aget v4, v2, v0

    .line 84
    invoke-static {p1, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 85
    aget v5, v3, v0

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    if-gt v4, v6, :cond_0

    .line 86
    invoke-static {p0, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 87
    aget v2, v2, v7

    .line 88
    invoke-static {p1, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 89
    aget v3, v3, v7

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    if-gt v2, v6, :cond_0

    .line 94
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
