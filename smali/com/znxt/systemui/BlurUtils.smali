.class public Lcom/znxt/systemui/BlurUtils;
.super Ljava/lang/Object;
.source "BlurUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/znxt/systemui/BlurUtils$BlurTaskCallback;,
        Lcom/znxt/systemui/BlurUtils$BlurEngine;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRenderScript:Landroid/renderscript/RenderScript;

.field private mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/znxt/systemui/BlurUtils;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcom/znxt/systemui/BlurUtils;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 47
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Lcom/znxt/systemui/BlurUtils;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    return-void
.end method


# virtual methods
.method public fastBlur(Landroid/graphics/Bitmap;I)V
    .locals 25

    move/from16 v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    add-int/lit8 v12, v10, -0x1

    add-int/lit8 v13, v11, -0x1

    mul-int v2, v10, v11

    add-int v3, v0, v0

    add-int/lit8 v14, v3, 0x1

    .line 283
    new-array v15, v2, [I

    .line 284
    new-array v9, v2, [I

    .line 285
    new-array v8, v2, [I

    .line 287
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v7, v3, [I

    .line 288
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v6, v3, [I

    .line 289
    new-array v5, v2, [I

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move-object v3, v5

    move-object/from16 v18, v5

    move v5, v10

    move-object/from16 v19, v6

    move/from16 v6, v16

    move-object/from16 v16, v7

    move/from16 v7, v17

    move-object/from16 v17, v8

    move v8, v10

    move-object/from16 v20, v9

    move v9, v11

    .line 291
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit16 v2, v14, 0x100

    .line 293
    new-array v3, v2, [I

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    .line 296
    div-int v6, v5, v14

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    move v5, v2

    move v6, v5

    :goto_1
    if-ge v2, v11, :cond_5

    neg-int v7, v0

    move v8, v4

    move v9, v8

    move v14, v9

    :goto_2
    const v21, 0xff00

    const/high16 v22, 0xff0000

    if-gt v7, v0, :cond_2

    .line 304
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v5

    aget v1, v18, v1

    and-int v22, v1, v22

    shr-int/lit8 v22, v22, 0x10

    add-int v8, v8, v22

    and-int v21, v1, v21

    shr-int/lit8 v21, v21, 0x8

    add-int v9, v9, v21

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v14, v1

    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_3
    if-ge v1, v10, :cond_4

    .line 311
    aget v7, v3, v8

    aput v7, v15, v5

    .line 312
    aget v7, v3, v9

    aput v7, v20, v5

    .line 313
    aget v7, v3, v14

    aput v7, v17, v5

    if-nez v2, :cond_3

    add-int v7, v1, v0

    const/16 v23, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 316
    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v16, v1

    sub-int v7, v1, v0

    .line 317
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v19, v1

    .line 320
    :cond_3
    aget v7, v16, v1

    add-int/2addr v7, v6

    aget v7, v18, v7

    .line 321
    aget v23, v19, v1

    add-int v23, v6, v23

    aget v4, v18, v23

    and-int v23, v7, v22

    and-int v24, v4, v22

    sub-int v23, v23, v24

    shr-int/lit8 v23, v23, 0x10

    add-int v8, v8, v23

    and-int v23, v7, v21

    and-int v24, v4, v21

    sub-int v23, v23, v24

    shr-int/lit8 v23, v23, 0x8

    add-int v9, v9, v23

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v7, v4

    add-int/2addr v14, v7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    add-int/2addr v6, v10

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x1

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v10, :cond_9

    neg-int v2, v0

    mul-int v4, v2, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_5
    if-gt v2, v0, :cond_6

    const/4 v8, 0x0

    .line 336
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/2addr v9, v1

    .line 337
    aget v8, v15, v9

    add-int/2addr v5, v8

    .line 338
    aget v8, v20, v9

    add-int/2addr v6, v8

    .line 339
    aget v8, v17, v9

    add-int/2addr v7, v8

    add-int/2addr v4, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    move v2, v1

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v11, :cond_8

    const/high16 v4, -0x1000000

    .line 345
    aget v9, v3, v5

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v4, v9

    aget v9, v3, v6

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v4, v9

    aget v9, v3, v7

    or-int/2addr v4, v9

    aput v4, v18, v2

    if-nez v1, :cond_7

    add-int v4, v8, v0

    const/4 v9, 0x1

    add-int/2addr v4, v9

    .line 347
    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v10

    aput v4, v16, v8

    sub-int v4, v8, v0

    const/4 v12, 0x0

    .line 348
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/2addr v4, v10

    aput v4, v19, v8

    goto :goto_7

    :cond_7
    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 351
    :goto_7
    aget v4, v16, v8

    add-int/2addr v4, v1

    .line 352
    aget v14, v19, v8

    add-int/2addr v14, v1

    .line 354
    aget v21, v15, v4

    aget v22, v15, v14

    sub-int v21, v21, v22

    add-int v5, v5, v21

    .line 355
    aget v21, v20, v4

    aget v22, v20, v14

    sub-int v21, v21, v22

    add-int v6, v6, v21

    .line 356
    aget v4, v17, v4

    aget v14, v17, v14

    sub-int/2addr v4, v14

    add-int/2addr v7, v4

    add-int/2addr v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    const/4 v9, 0x1

    const/4 v12, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    move v5, v10

    move v8, v10

    move v9, v11

    .line 361
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/znxt/systemui/BlurUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public renderScriptBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/znxt/systemui/BlurUtils;->mRenderScript:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/znxt/systemui/BlurUtils;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/znxt/systemui/BlurUtils;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    int-to-float p2, p2

    invoke-virtual {v2, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 61
    iget-object p2, p0, Lcom/znxt/systemui/BlurUtils;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 62
    iget-object p0, p0, Lcom/znxt/systemui/BlurUtils;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 63
    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public stackBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 36

    move/from16 v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int v12, v10, v11

    .line 75
    new-array v13, v12, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object v3, v13

    move v5, v10

    move v8, v10

    move v9, v11

    .line 76
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v2, v10, -0x1

    add-int/lit8 v3, v11, -0x1

    add-int v4, v0, v0

    add-int/2addr v4, v1

    .line 83
    new-array v5, v12, [I

    .line 84
    new-array v6, v12, [I

    .line 85
    new-array v7, v12, [I

    .line 87
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    new-array v8, v8, [I

    add-int/lit8 v9, v4, 0x1

    shr-int/2addr v9, v1

    mul-int/2addr v9, v9

    mul-int/lit16 v12, v9, 0x100

    .line 91
    new-array v14, v12, [I

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v12, :cond_1

    .line 94
    div-int v16, v15, v9

    aput v16, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x3

    const/4 v12, 0x2

    new-array v15, v12, [I

    aput v9, v15, v1

    const/4 v9, 0x0

    aput v4, v15, v9

    .line 99
    const-class v9, I

    invoke-static {v9, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    add-int/lit8 v15, v0, 0x1

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_1
    if-ge v12, v11, :cond_6

    neg-int v1, v0

    move/from16 v28, v11

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move v11, v1

    const/4 v1, 0x0

    :goto_2
    const v29, 0xff00

    const/high16 v30, 0xff0000

    if-gt v11, v0, :cond_3

    move/from16 v31, v3

    move-object/from16 v32, v8

    const/4 v3, 0x0

    .line 111
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v8, v17, v8

    aget v8, v13, v8

    add-int v33, v11, v0

    .line 112
    aget-object v33, v9, v33

    and-int v30, v8, v30

    shr-int/lit8 v30, v30, 0x10

    .line 113
    aput v30, v33, v3

    and-int v29, v8, v29

    shr-int/lit8 v29, v29, 0x8

    const/16 v19, 0x1

    .line 114
    aput v29, v33, v19

    and-int/lit16 v8, v8, 0xff

    const/16 v16, 0x2

    .line 115
    aput v8, v33, v16

    .line 116
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int v8, v15, v8

    .line 117
    aget v29, v33, v3

    mul-int v29, v29, v8

    add-int v1, v1, v29

    .line 118
    aget v29, v33, v19

    mul-int v29, v29, v8

    add-int v20, v20, v29

    .line 119
    aget v29, v33, v16

    mul-int v29, v29, v8

    add-int v21, v21, v29

    if-lez v11, :cond_2

    .line 122
    aget v8, v33, v3

    add-int v25, v25, v8

    .line 123
    aget v8, v33, v19

    add-int v26, v26, v8

    .line 124
    aget v8, v33, v16

    add-int v27, v27, v8

    goto :goto_3

    .line 126
    :cond_2
    aget v8, v33, v3

    add-int v22, v22, v8

    .line 127
    aget v3, v33, v19

    add-int v23, v23, v3

    .line 128
    aget v3, v33, v16

    add-int v24, v24, v3

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v31

    move-object/from16 v8, v32

    goto :goto_2

    :cond_3
    move/from16 v31, v3

    move-object/from16 v32, v8

    move v8, v0

    move v3, v1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v10, :cond_5

    .line 135
    aget v11, v14, v3

    aput v11, v5, v17

    .line 136
    aget v11, v14, v20

    aput v11, v6, v17

    .line 137
    aget v11, v14, v21

    aput v11, v7, v17

    sub-int v3, v3, v22

    sub-int v20, v20, v23

    sub-int v21, v21, v24

    sub-int v11, v8, v0

    add-int/2addr v11, v4

    .line 144
    rem-int/2addr v11, v4

    aget-object v11, v9, v11

    const/16 v33, 0x0

    .line 146
    aget v34, v11, v33

    sub-int v22, v22, v34

    const/16 v19, 0x1

    .line 147
    aget v33, v11, v19

    sub-int v23, v23, v33

    const/16 v16, 0x2

    .line 148
    aget v33, v11, v16

    sub-int v24, v24, v33

    if-nez v12, :cond_4

    add-int v33, v1, v0

    move-object/from16 v34, v14

    add-int/lit8 v14, v33, 0x1

    .line 151
    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    aput v14, v32, v1

    goto :goto_5

    :cond_4
    move-object/from16 v34, v14

    .line 154
    :goto_5
    aget v14, v32, v1

    add-int v14, v18, v14

    aget v14, v13, v14

    and-int v33, v14, v30

    shr-int/lit8 v33, v33, 0x10

    const/16 v35, 0x0

    .line 156
    aput v33, v11, v35

    and-int v33, v14, v29

    shr-int/lit8 v33, v33, 0x8

    const/16 v19, 0x1

    .line 157
    aput v33, v11, v19

    and-int/lit16 v14, v14, 0xff

    const/16 v16, 0x2

    .line 158
    aput v14, v11, v16

    .line 160
    aget v14, v11, v35

    add-int v25, v25, v14

    .line 161
    aget v14, v11, v19

    add-int v26, v26, v14

    .line 162
    aget v11, v11, v16

    add-int v27, v27, v11

    add-int v3, v3, v25

    add-int v20, v20, v26

    add-int v21, v21, v27

    add-int/lit8 v8, v8, 0x1

    .line 168
    rem-int/2addr v8, v4

    .line 169
    rem-int v11, v8, v4

    aget-object v11, v9, v11

    const/4 v14, 0x0

    .line 171
    aget v33, v11, v14

    add-int v22, v22, v33

    const/16 v19, 0x1

    .line 172
    aget v33, v11, v19

    add-int v23, v23, v33

    const/16 v16, 0x2

    .line 173
    aget v33, v11, v16

    add-int v24, v24, v33

    .line 175
    aget v33, v11, v14

    sub-int v25, v25, v33

    .line 176
    aget v14, v11, v19

    sub-int v26, v26, v14

    .line 177
    aget v11, v11, v16

    sub-int v27, v27, v11

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v14, v34

    goto/16 :goto_4

    :cond_5
    move-object/from16 v34, v14

    add-int v18, v18, v10

    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v28

    move/from16 v3, v31

    move-object/from16 v8, v32

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_6
    move/from16 v31, v3

    move-object/from16 v32, v8

    move/from16 v28, v11

    move-object/from16 v34, v14

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v10, :cond_c

    neg-int v2, v0

    mul-int v3, v2, v10

    move/from16 v21, v4

    move-object/from16 v22, v13

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move v4, v2

    move v13, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-gt v4, v0, :cond_9

    move/from16 v23, v10

    const/4 v10, 0x0

    .line 189
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v24

    add-int v24, v24, v1

    add-int v25, v4, v0

    .line 191
    aget-object v25, v9, v25

    .line 193
    aget v26, v5, v24

    aput v26, v25, v10

    .line 194
    aget v10, v6, v24

    const/16 v19, 0x1

    aput v10, v25, v19

    .line 195
    aget v10, v7, v24

    const/16 v16, 0x2

    aput v10, v25, v16

    .line 197
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    sub-int v10, v15, v10

    .line 199
    aget v26, v5, v24

    mul-int v26, v26, v10

    add-int v2, v2, v26

    .line 200
    aget v26, v6, v24

    mul-int v26, v26, v10

    add-int v3, v3, v26

    .line 201
    aget v24, v7, v24

    mul-int v24, v24, v10

    add-int v8, v8, v24

    if-lez v4, :cond_7

    const/4 v10, 0x0

    .line 204
    aget v24, v25, v10

    add-int v17, v17, v24

    const/16 v19, 0x1

    .line 205
    aget v24, v25, v19

    add-int v18, v18, v24

    const/16 v16, 0x2

    .line 206
    aget v24, v25, v16

    add-int v20, v20, v24

    goto :goto_8

    :cond_7
    const/4 v10, 0x0

    const/16 v16, 0x2

    const/16 v19, 0x1

    .line 208
    aget v24, v25, v10

    add-int v11, v11, v24

    .line 209
    aget v10, v25, v19

    add-int/2addr v12, v10

    .line 210
    aget v10, v25, v16

    add-int/2addr v14, v10

    :goto_8
    move/from16 v10, v31

    if-ge v4, v10, :cond_8

    add-int v13, v13, v23

    :cond_8
    add-int/lit8 v4, v4, 0x1

    move/from16 v31, v10

    move/from16 v10, v23

    goto :goto_7

    :cond_9
    move/from16 v23, v10

    move/from16 v10, v31

    move/from16 v25, v0

    move/from16 v24, v1

    move/from16 v13, v28

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v13, :cond_b

    const/high16 v26, -0x1000000

    .line 221
    aget v27, v22, v24

    and-int v26, v27, v26

    aget v27, v34, v2

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    aget v27, v34, v3

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    aget v27, v34, v8

    or-int v26, v26, v27

    aput v26, v22, v24

    sub-int/2addr v2, v11

    sub-int/2addr v3, v12

    sub-int/2addr v8, v14

    sub-int v26, v25, v0

    add-int v26, v26, v21

    .line 228
    rem-int v26, v26, v21

    aget-object v26, v9, v26

    const/16 v27, 0x0

    .line 230
    aget v28, v26, v27

    sub-int v11, v11, v28

    const/16 v19, 0x1

    .line 231
    aget v27, v26, v19

    sub-int v12, v12, v27

    const/16 v16, 0x2

    .line 232
    aget v27, v26, v16

    sub-int v14, v14, v27

    if-nez v1, :cond_a

    add-int v0, v4, v15

    .line 235
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v23

    aput v0, v32, v4

    .line 238
    :cond_a
    aget v0, v32, v4

    add-int/2addr v0, v1

    .line 240
    aget v27, v5, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    .line 241
    aget v27, v6, v0

    const/16 v19, 0x1

    aput v27, v26, v19

    .line 242
    aget v0, v7, v0

    const/16 v16, 0x2

    aput v0, v26, v16

    .line 244
    aget v0, v26, v28

    add-int v17, v17, v0

    .line 245
    aget v0, v26, v19

    add-int v18, v18, v0

    .line 246
    aget v0, v26, v16

    add-int v20, v20, v0

    add-int v2, v2, v17

    add-int v3, v3, v18

    add-int v8, v8, v20

    add-int/lit8 v25, v25, 0x1

    .line 252
    rem-int v25, v25, v21

    .line 253
    aget-object v0, v9, v25

    const/16 v26, 0x0

    .line 255
    aget v27, v0, v26

    add-int v11, v11, v27

    const/16 v19, 0x1

    .line 256
    aget v27, v0, v19

    add-int v12, v12, v27

    const/16 v16, 0x2

    .line 257
    aget v27, v0, v16

    add-int v14, v14, v27

    .line 259
    aget v27, v0, v26

    sub-int v17, v17, v27

    .line 260
    aget v27, v0, v19

    sub-int v18, v18, v27

    .line 261
    aget v0, v0, v16

    sub-int v20, v20, v0

    add-int v24, v24, v23

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p2

    goto/16 :goto_9

    :cond_b
    const/16 v16, 0x2

    const/16 v19, 0x1

    const/16 v26, 0x0

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p2

    move/from16 v31, v10

    move/from16 v28, v13

    move/from16 v4, v21

    move-object/from16 v13, v22

    move/from16 v10, v23

    goto/16 :goto_6

    :cond_c
    move/from16 v23, v10

    move-object/from16 v22, v13

    move/from16 v13, v28

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move/from16 v4, v23

    move/from16 v7, v23

    move v8, v13

    .line 266
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1
.end method
