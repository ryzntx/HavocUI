.class public final Ldev/kdrag0n/monet/colors/Zcam$Companion;
.super Ljava/lang/Object;
.source "Zcam.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/kdrag0n/monet/colors/Zcam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZcam.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zcam.kt\ndev/kdrag0n/monet/colors/Zcam$Companion\n+ 2 MathExt.kt\ndev/kdrag0n/monet/util/MathExtKt\n*L\n1#1,255:1\n9#2:256\n9#2:257\n9#2:258\n9#2:259\n*E\n*S KotlinDebug\n*F\n+ 1 Zcam.kt\ndev/kdrag0n/monet/colors/Zcam$Companion\n*L\n219#1:256\n230#1:257\n231#1:258\n232#1:259\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ldev/kdrag0n/monet/colors/Zcam$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$hpToEz(Ldev/kdrag0n/monet/colors/Zcam$Companion;D)D
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->hpToEz(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$izToQz(Ldev/kdrag0n/monet/colors/Zcam$Companion;DLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;)D
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->izToQz(DLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$pqInv(Ldev/kdrag0n/monet/colors/Zcam$Companion;D)D
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->pqInv(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$xyzToIzazbz(Ldev/kdrag0n/monet/colors/Zcam$Companion;Ldev/kdrag0n/monet/colors/CieXyz;)[D
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->xyzToIzazbz(Ldev/kdrag0n/monet/colors/CieXyz;)[D

    move-result-object p0

    return-object p0
.end method

.method private final hpToEz(D)D
    .locals 2

    const-wide v0, 0x4056426e978d4fdfL    # 89.038

    add-double/2addr p1, v0

    .line 191
    invoke-static {p1, p2}, Ldev/kdrag0n/monet/util/MathExtKt;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v0, 0x3ff03d70a3d70a3dL    # 1.015

    add-double/2addr p0, v0

    return-wide p0
.end method

.method private final izToQz(DLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;)D
    .locals 6

    .line 193
    invoke-virtual {p3}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getIz_coeff$com_kieronquinn_library_monetcompat()D

    move-result-wide v0

    invoke-virtual {p3}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getF_s()D

    move-result-wide v2

    const-wide v4, 0x3ff999999999999aL    # 1.6

    mul-double/2addr v2, v4

    invoke-virtual {p3}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getQz_denom$com_kieronquinn_library_monetcompat()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method private final pq(D)D
    .locals 6

    const/16 p0, 0x2710

    int-to-double v0, p0

    div-double/2addr p1, v0

    const-wide v0, 0x3fc4640000000000L    # 0.1593017578125

    .line 162
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x4032da0000000000L    # 18.8515625

    mul-double/2addr v2, v4

    const-wide v4, 0x3feac00000000000L    # 0.8359375

    add-double/2addr v2, v4

    .line 163
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide v0, 0x4032b00000000000L    # 18.6875

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v0

    div-double/2addr v2, p0

    const-wide p0, 0x4060c11999999999L    # 134.03437499999998

    .line 165
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private final pqInv(D)D
    .locals 6

    const-wide v0, 0x3f7e8f2fe8fc2986L    # 0.007460772656268216

    .line 168
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x3feac00000000000L    # 0.8359375

    sub-double/2addr v4, v2

    .line 169
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide v0, 0x4032b00000000000L    # 18.6875

    mul-double/2addr p0, v0

    const-wide v0, 0x4032da0000000000L    # 18.8515625

    sub-double/2addr p0, v0

    div-double/2addr v4, p0

    const-wide p0, 0x40191c0d56e7162bL    # 6.277394636015326

    .line 171
    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide v0, 0x40c3880000000000L    # 10000.0

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method private final xyzToIzazbz(Ldev/kdrag0n/monet/colors/CieXyz;)[D
    .locals 12

    .line 176
    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/CieXyz;->getX()D

    move-result-wide v0

    const-wide v2, 0x3ff2666666666666L    # 1.15

    mul-double/2addr v0, v2

    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/CieXyz;->getZ()D

    move-result-wide v2

    const-wide v4, 0x3fc3333333333330L    # 0.1499999999999999

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 177
    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/CieXyz;->getY()D

    move-result-wide v2

    const-wide v4, 0x3fe51eb851eb851fL    # 0.66

    mul-double/2addr v2, v4

    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/CieXyz;->getX()D

    move-result-wide v4

    const-wide v6, -0x402a3d70a3d70a3eL    # -0.33999999999999997

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide v4, 0x3fda8bea2e877ce1L    # 0.41478972

    mul-double/2addr v4, v0

    const-wide v6, 0x3fe28f5a1016ce79L    # 0.579999

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    .line 179
    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/CieXyz;->getZ()D

    move-result-wide v6

    const-wide v8, 0x3f8dffc5479d4d83L    # 0.014648

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-direct {p0, v4, v5}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->pq(D)D

    move-result-wide v4

    const-wide v6, -0x403634eb9a176ddbL    # -0.20151

    mul-double/2addr v6, v0

    const-wide v8, 0x3ff1ee2da554b8bfL    # 1.120649

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    .line 180
    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/CieXyz;->getZ()D

    move-result-wide v8

    const-wide v10, 0x3fab30072ec86a67L    # 0.0531008

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-direct {p0, v6, v7}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->pq(D)D

    move-result-wide v6

    const-wide v8, -0x406f00332ba676f8L    # -0.0166008

    mul-double/2addr v0, v8

    const-wide v8, 0x3fd0f27bb2fec56dL    # 0.2648

    mul-double/2addr v2, v8

    add-double/2addr v0, v2

    .line 181
    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/CieXyz;->getZ()D

    move-result-wide v2

    const-wide v8, 0x3fe5642ff5911135L    # 0.6684799

    mul-double/2addr v2, v8

    add-double/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->pq(D)D

    move-result-wide p0

    const-wide v0, 0x400c3126e978d4feL    # 3.524

    mul-double/2addr v0, v4

    const-wide v2, -0x3fefbbb0e5e67946L    # -4.066708

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    const-wide v2, 0x3fe15ddd2ae8e1d6L    # 0.542708

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    const-wide v2, 0x3fc97b5286b59147L    # 0.199076

    mul-double/2addr v4, v2

    const-wide v2, 0x3ff18c7d1bb4916dL    # 1.096799

    mul-double/2addr v2, v6

    add-double/2addr v4, v2

    const-wide v2, -0x400b44189374bc6aL    # -1.295875

    mul-double/2addr p0, v2

    add-double/2addr v4, p0

    const-wide p0, 0x3dc45c3ea5ce3f93L    # 3.7035226210190005E-11

    sub-double/2addr v6, p0

    const/4 p0, 0x3

    new-array p0, p0, [D

    const/4 p1, 0x0

    aput-wide v6, p0, p1

    const/4 p1, 0x1

    aput-wide v0, p0, p1

    const/4 p1, 0x2

    aput-wide v4, p0, p1

    return-object p0
.end method


# virtual methods
.method public final toAbs(Ldev/kdrag0n/monet/colors/CieXyz;Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;)Ldev/kdrag0n/monet/colors/CieXyz;
    .locals 2
    .param p1    # Ldev/kdrag0n/monet/colors/CieXyz;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "$this$toAbs"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cond"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getWhiteLuminance()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ldev/kdrag0n/monet/colors/CieXyz;->times(D)Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object p0

    return-object p0
.end method

.method public final toRel(Ldev/kdrag0n/monet/colors/CieXyz;Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;)Ldev/kdrag0n/monet/colors/CieXyz;
    .locals 2
    .param p1    # Ldev/kdrag0n/monet/colors/CieXyz;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "$this$toRel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cond"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getWhiteLuminance()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ldev/kdrag0n/monet/colors/CieXyz;->div(D)Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object p0

    return-object p0
.end method

.method public final toZcam(Ldev/kdrag0n/monet/colors/CieXyz;Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;)Ldev/kdrag0n/monet/colors/Zcam;
    .locals 27
    .param p1    # Ldev/kdrag0n/monet/colors/CieXyz;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    const-string v1, "$this$toZcam"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cond"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-direct/range {p0 .. p1}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->xyzToIzazbz(Ldev/kdrag0n/monet/colors/CieXyz;)[D

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v5, v1, v5

    const/4 v7, 0x2

    aget-wide v7, v1, v7

    .line 199
    invoke-virtual/range {p2 .. p2}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getIz_w$com_kieronquinn_library_monetcompat()D

    .line 203
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ldev/kdrag0n/monet/util/MathExtKt;->toDegrees(D)D

    move-result-wide v10

    int-to-double v1, v2

    cmpg-double v1, v10, v1

    if-gez v1, :cond_0

    const/16 v1, 0x168

    int-to-double v1, v1

    add-double/2addr v10, v1

    :cond_0
    move-wide v13, v10

    .line 208
    invoke-direct {v0, v13, v14}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->hpToEz(D)D

    move-result-wide v10

    .line 212
    invoke-direct {v0, v3, v4, v9}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->izToQz(DLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;)D

    move-result-wide v15

    move-wide v1, v15

    .line 213
    invoke-virtual/range {p2 .. p2}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getQz_w$com_kieronquinn_library_monetcompat()D

    move-result-wide v17

    div-double v3, v15, v17

    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    mul-double v21, v3, v19

    move-wide/from16 v3, v21

    mul-double/2addr v5, v5

    mul-double/2addr v7, v7

    add-double/2addr v5, v7

    const-wide v7, 0x3fd7ae147ae147aeL    # 0.37

    .line 219
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double v5, v5, v19

    const-wide v7, 0x3fb16872b020c49cL    # 0.068

    .line 220
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getEz_coeff$com_kieronquinn_library_monetcompat()D

    move-result-wide v10

    mul-double/2addr v7, v10

    invoke-virtual/range {p2 .. p2}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getMz_denom$com_kieronquinn_library_monetcompat()D

    move-result-wide v10

    div-double/2addr v7, v10

    mul-double v10, v5, v7

    move-wide v5, v10

    div-double v7, v10, v17

    mul-double v17, v7, v19

    move-wide/from16 v7, v17

    .line 227
    invoke-virtual/range {p2 .. p2}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getSz_coeff$com_kieronquinn_library_monetcompat()D

    move-result-wide v23

    mul-double v23, v23, v19

    div-double/2addr v10, v15

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v11, v23, v10

    const/16 v0, 0x3a

    int-to-double v9, v0

    sub-double v9, v21, v9

    mul-double/2addr v9, v9

    const-wide v15, 0x400b333333333333L    # 3.4

    mul-double v17, v17, v17

    mul-double v15, v15, v17

    add-double/2addr v9, v15

    .line 230
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    move-wide/from16 v23, v13

    move-wide v13, v9

    const-wide v9, 0x3fe999999999999aL    # 0.8

    mul-double v15, v21, v21

    const-wide/high16 v25, 0x4020000000000000L    # 8.0

    mul-double v25, v25, v17

    add-double v15, v15, v25

    .line 231
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    mul-double/2addr v15, v9

    sub-double v15, v19, v15

    sub-double v9, v19, v21

    mul-double/2addr v9, v9

    add-double v9, v9, v17

    .line 232
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    sub-double v17, v19, v9

    .line 234
    new-instance v20, Ldev/kdrag0n/monet/colors/Zcam;

    move-object/from16 v0, v20

    move-wide/from16 v9, v23

    move-object/from16 v19, p2

    invoke-direct/range {v0 .. v19}, Ldev/kdrag0n/monet/colors/Zcam;-><init>(DDDDDDDDDLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;)V

    return-object v20
.end method
