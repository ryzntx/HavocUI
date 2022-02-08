.class public final Ldev/kdrag0n/monet/colors/Zcam;
.super Ljava/lang/Object;
.source "Zcam.kt"

# interfaces
.implements Ldev/kdrag0n/monet/colors/Color;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;,
        Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;,
        Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;,
        Ldev/kdrag0n/monet/colors/Zcam$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZcam.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zcam.kt\ndev/kdrag0n/monet/colors/Zcam\n+ 2 MathExt.kt\ndev/kdrag0n/monet/util/MathExtKt\n*L\n1#1,255:1\n9#2:256\n9#2:257\n9#2:258\n9#2:259\n*E\n*S KotlinDebug\n*F\n+ 1 Zcam.kt\ndev/kdrag0n/monet/colors/Zcam\n*L\n60#1:256\n61#1:257\n62#1:258\n63#1:259\n*E\n"
.end annotation


# static fields
.field public static final Companion:Ldev/kdrag0n/monet/colors/Zcam$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final blackness:D

.field private final brightness:D

.field private final chroma:D

.field private final colorfulness:D

.field private final hueAngle:D

.field private final lightness:D

.field private final saturation:D

.field private final viewingConditions:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final vividness:D

.field private final whiteness:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/kdrag0n/monet/colors/Zcam$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/kdrag0n/monet/colors/Zcam$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/kdrag0n/monet/colors/Zcam;->Companion:Ldev/kdrag0n/monet/colors/Zcam$Companion;

    return-void
.end method

.method public constructor <init>(DDDDDDDDDLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;)V
    .locals 4
    .param p19    # Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p19

    const-string/jumbo v2, "viewingConditions"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v2, p1

    iput-wide v2, v0, Ldev/kdrag0n/monet/colors/Zcam;->brightness:D

    move-wide v2, p3

    iput-wide v2, v0, Ldev/kdrag0n/monet/colors/Zcam;->lightness:D

    move-wide v2, p5

    iput-wide v2, v0, Ldev/kdrag0n/monet/colors/Zcam;->colorfulness:D

    move-wide v2, p7

    iput-wide v2, v0, Ldev/kdrag0n/monet/colors/Zcam;->chroma:D

    move-wide v2, p9

    iput-wide v2, v0, Ldev/kdrag0n/monet/colors/Zcam;->hueAngle:D

    move-wide v2, p11

    iput-wide v2, v0, Ldev/kdrag0n/monet/colors/Zcam;->saturation:D

    move-wide/from16 v2, p13

    iput-wide v2, v0, Ldev/kdrag0n/monet/colors/Zcam;->vividness:D

    move-wide/from16 v2, p15

    iput-wide v2, v0, Ldev/kdrag0n/monet/colors/Zcam;->blackness:D

    move-wide/from16 v2, p17

    iput-wide v2, v0, Ldev/kdrag0n/monet/colors/Zcam;->whiteness:D

    iput-object v1, v0, Ldev/kdrag0n/monet/colors/Zcam;->viewingConditions:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    return-void
.end method

.method public synthetic constructor <init>(DDDDDDDDDLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 24

    move/from16 v0, p20

    and-int/lit8 v1, v0, 0x1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    if-eqz v1, :cond_0

    move-wide v5, v2

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-wide v7, v2

    goto :goto_1

    :cond_1
    move-wide/from16 v7, p3

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move-wide v9, v2

    goto :goto_2

    :cond_2
    move-wide/from16 v9, p5

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-wide v11, v2

    goto :goto_3

    :cond_3
    move-wide/from16 v11, p7

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move-wide v15, v2

    goto :goto_4

    :cond_4
    move-wide/from16 v15, p11

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    move-wide/from16 v17, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v17, p13

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    move-wide/from16 v19, v2

    goto :goto_6

    :cond_6
    move-wide/from16 v19, p15

    :goto_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    move-wide/from16 v21, v2

    goto :goto_7

    :cond_7
    move-wide/from16 v21, p17

    :goto_7
    move-object/from16 v4, p0

    move-wide/from16 v13, p9

    move-object/from16 v23, p19

    .line 23
    invoke-direct/range {v4 .. v23}, Ldev/kdrag0n/monet/colors/Zcam;-><init>(DDDDDDDDDLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;)V

    return-void
.end method

.method public static synthetic copy$default(Ldev/kdrag0n/monet/colors/Zcam;DDDDDDDDDLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;ILjava/lang/Object;)Ldev/kdrag0n/monet/colors/Zcam;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p20

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Ldev/kdrag0n/monet/colors/Zcam;->brightness:D

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Ldev/kdrag0n/monet/colors/Zcam;->lightness:D

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-wide v6, v0, Ldev/kdrag0n/monet/colors/Zcam;->colorfulness:D

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p5

    :goto_2
    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_3

    iget-wide v8, v0, Ldev/kdrag0n/monet/colors/Zcam;->chroma:D

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p7

    :goto_3
    and-int/lit8 v10, v1, 0x10

    if-eqz v10, :cond_4

    iget-wide v10, v0, Ldev/kdrag0n/monet/colors/Zcam;->hueAngle:D

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p9

    :goto_4
    and-int/lit8 v12, v1, 0x20

    if-eqz v12, :cond_5

    iget-wide v12, v0, Ldev/kdrag0n/monet/colors/Zcam;->saturation:D

    goto :goto_5

    :cond_5
    move-wide/from16 v12, p11

    :goto_5
    and-int/lit8 v14, v1, 0x40

    if-eqz v14, :cond_6

    iget-wide v14, v0, Ldev/kdrag0n/monet/colors/Zcam;->vividness:D

    goto :goto_6

    :cond_6
    move-wide/from16 v14, p13

    :goto_6
    move-wide/from16 p13, v14

    and-int/lit16 v14, v1, 0x80

    if-eqz v14, :cond_7

    iget-wide v14, v0, Ldev/kdrag0n/monet/colors/Zcam;->blackness:D

    goto :goto_7

    :cond_7
    move-wide/from16 v14, p15

    :goto_7
    move-wide/from16 p15, v14

    and-int/lit16 v14, v1, 0x100

    if-eqz v14, :cond_8

    iget-wide v14, v0, Ldev/kdrag0n/monet/colors/Zcam;->whiteness:D

    goto :goto_8

    :cond_8
    move-wide/from16 v14, p17

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Ldev/kdrag0n/monet/colors/Zcam;->viewingConditions:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p19

    :goto_9
    move-wide/from16 p1, v2

    move-wide/from16 p3, v4

    move-wide/from16 p5, v6

    move-wide/from16 p7, v8

    move-wide/from16 p9, v10

    move-wide/from16 p11, v12

    move-wide/from16 p17, v14

    move-object/from16 p19, v1

    invoke-virtual/range {p0 .. p19}, Ldev/kdrag0n/monet/colors/Zcam;->copy(DDDDDDDDDLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;)Ldev/kdrag0n/monet/colors/Zcam;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(DDDDDDDDDLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;)Ldev/kdrag0n/monet/colors/Zcam;
    .locals 21
    .param p19    # Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    move-wide/from16 v17, p17

    move-object/from16 v19, p19

    const-string/jumbo v0, "viewingConditions"

    move-wide/from16 p0, v1

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v20, Ldev/kdrag0n/monet/colors/Zcam;

    move-object/from16 v0, v20

    move-wide/from16 v1, p0

    invoke-direct/range {v0 .. v19}, Ldev/kdrag0n/monet/colors/Zcam;-><init>(DDDDDDDDDLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;)V

    return-object v20
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ldev/kdrag0n/monet/colors/Zcam;

    if-eqz v0, :cond_0

    check-cast p1, Ldev/kdrag0n/monet/colors/Zcam;

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->brightness:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/Zcam;->brightness:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->lightness:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/Zcam;->lightness:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->colorfulness:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/Zcam;->colorfulness:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->chroma:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/Zcam;->chroma:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->hueAngle:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/Zcam;->hueAngle:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->saturation:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/Zcam;->saturation:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->vividness:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/Zcam;->vividness:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->blackness:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/Zcam;->blackness:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->whiteness:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/Zcam;->whiteness:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Ldev/kdrag0n/monet/colors/Zcam;->viewingConditions:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    iget-object p1, p1, Ldev/kdrag0n/monet/colors/Zcam;->viewingConditions:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getChroma()D
    .locals 2

    .line 15
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->chroma:D

    return-wide v0
.end method

.method public final getCz()D
    .locals 2

    .line 33
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->chroma:D

    return-wide v0
.end method

.method public final getHueAngle()D
    .locals 2

    .line 16
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->hueAngle:D

    return-wide v0
.end method

.method public final getHz()D
    .locals 2

    .line 34
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->hueAngle:D

    return-wide v0
.end method

.method public final getJz()D
    .locals 2

    .line 31
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->lightness:D

    return-wide v0
.end method

.method public final getKz()D
    .locals 2

    .line 37
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->blackness:D

    return-wide v0
.end method

.method public final getLightness()D
    .locals 2

    .line 13
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->lightness:D

    return-wide v0
.end method

.method public final getMz()D
    .locals 2

    .line 32
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->colorfulness:D

    return-wide v0
.end method

.method public final getQz()D
    .locals 2

    .line 30
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->brightness:D

    return-wide v0
.end method

.method public final getSz()D
    .locals 2

    .line 35
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->saturation:D

    return-wide v0
.end method

.method public final getVz()D
    .locals 2

    .line 36
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->vividness:D

    return-wide v0
.end method

.method public final getWz()D
    .locals 2

    .line 38
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->whiteness:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam;->brightness:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam;->lightness:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam;->colorfulness:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam;->chroma:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam;->hueAngle:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam;->saturation:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam;->vividness:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam;->blackness:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam;->whiteness:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Ldev/kdrag0n/monet/colors/Zcam;->viewingConditions:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toCieXyz(Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;)Ldev/kdrag0n/monet/colors/CieXyz;
    .locals 18
    .param p1    # Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ldev/kdrag0n/monet/colors/Zcam;->Companion:Ldev/kdrag0n/monet/colors/Zcam$Companion;

    const-string v1, "luminanceSource"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "chromaSource"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 44
    iget-object v4, v1, Ldev/kdrag0n/monet/colors/Zcam;->viewingConditions:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    .line 45
    invoke-virtual {v4}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getIz_w$com_kieronquinn_library_monetcompat()D

    .line 46
    invoke-virtual {v4}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getQz_w$com_kieronquinn_library_monetcompat()D

    move-result-wide v5

    .line 50
    sget-object v7, Ldev/kdrag0n/monet/colors/Zcam$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v7, v2

    const/4 v7, 0x1

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    if-eq v2, v7, :cond_1

    const/4 v10, 0x2

    if-ne v2, v10, :cond_0

    .line 52
    invoke-virtual/range {p0 .. p0}, Ldev/kdrag0n/monet/colors/Zcam;->getJz()D

    move-result-wide v10

    mul-double/2addr v10, v5

    invoke-virtual {v4}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getIz_coeff$com_kieronquinn_library_monetcompat()D

    move-result-wide v12

    mul-double/2addr v12, v8

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 51
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ldev/kdrag0n/monet/colors/Zcam;->getQz()D

    move-result-wide v10

    invoke-virtual {v4}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getIz_coeff$com_kieronquinn_library_monetcompat()D

    move-result-wide v12

    :goto_0
    div-double/2addr v10, v12

    .line 53
    invoke-virtual {v4}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getQz_denom$com_kieronquinn_library_monetcompat()D

    move-result-wide v12

    const-wide v14, 0x3ff999999999999aL    # 1.6

    invoke-virtual {v4}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getF_s()D

    move-result-wide v16

    mul-double v16, v16, v14

    div-double v12, v12, v16

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 57
    sget-object v2, Ldev/kdrag0n/monet/colors/Zcam$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v2, v2, v12

    const/16 v12, 0x64

    packed-switch v2, :pswitch_data_0

    .line 63
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Ldev/kdrag0n/monet/colors/Zcam;->getWz()D

    move-result-wide v13

    sub-double v13, v8, v13

    mul-double/2addr v13, v13

    invoke-virtual/range {p0 .. p0}, Ldev/kdrag0n/monet/colors/Zcam;->getJz()D

    move-result-wide v15

    sub-double v15, v8, v15

    mul-double/2addr v15, v15

    sub-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    goto :goto_1

    :pswitch_1
    int-to-double v13, v12

    .line 62
    invoke-virtual/range {p0 .. p0}, Ldev/kdrag0n/monet/colors/Zcam;->getKz()D

    move-result-wide v15

    sub-double/2addr v13, v15

    const-wide v15, 0x3fe999999999999aL    # 0.8

    div-double/2addr v13, v15

    mul-double/2addr v13, v13

    invoke-virtual/range {p0 .. p0}, Ldev/kdrag0n/monet/colors/Zcam;->getJz()D

    move-result-wide v15

    mul-double/2addr v15, v15

    sub-double/2addr v13, v15

    const/16 v2, 0x8

    int-to-double v7, v2

    div-double/2addr v13, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    goto :goto_1

    .line 61
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Ldev/kdrag0n/monet/colors/Zcam;->getVz()D

    move-result-wide v7

    mul-double/2addr v7, v7

    invoke-virtual/range {p0 .. p0}, Ldev/kdrag0n/monet/colors/Zcam;->getJz()D

    move-result-wide v13

    const/16 v2, 0x3a

    int-to-double v1, v2

    sub-double/2addr v13, v1

    mul-double/2addr v13, v13

    sub-double/2addr v7, v13

    const-wide v1, 0x400b333333333333L    # 3.4

    div-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    goto :goto_1

    .line 60
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Ldev/kdrag0n/monet/colors/Zcam;->getQz()D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Ldev/kdrag0n/monet/colors/Zcam;->getSz()D

    move-result-wide v7

    mul-double/2addr v7, v7

    mul-double/2addr v1, v7

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double v13, v5, v7

    invoke-virtual {v4}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getQz_denom$com_kieronquinn_library_monetcompat()D

    move-result-wide v7

    mul-double/2addr v13, v7

    div-double v13, v1, v13

    goto :goto_1

    :pswitch_4
    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1

    .line 58
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Ldev/kdrag0n/monet/colors/Zcam;->getCz()D

    move-result-wide v13

    .line 70
    :goto_1
    sget-object v1, Ldev/kdrag0n/monet/colors/Zcam$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    mul-double/2addr v13, v5

    int-to-double v1, v12

    div-double/2addr v13, v1

    goto :goto_2

    .line 71
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ldev/kdrag0n/monet/colors/Zcam;->getMz()D

    move-result-wide v13

    .line 74
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ldev/kdrag0n/monet/colors/Zcam;->getHz()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->access$hpToEz(Ldev/kdrag0n/monet/colors/Zcam$Companion;D)D

    move-result-wide v1

    .line 75
    invoke-virtual {v4}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getMz_denom$com_kieronquinn_library_monetcompat()D

    move-result-wide v5

    mul-double/2addr v13, v5

    const-wide v5, 0x3fb16872b020c49cL    # 0.068

    .line 77
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v5

    invoke-virtual {v4}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->getEz_coeff$com_kieronquinn_library_monetcompat()D

    move-result-wide v3

    mul-double/2addr v1, v3

    div-double/2addr v13, v1

    const-wide v1, 0x3ff59f22983759f2L    # 1.3513513513513513

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 78
    invoke-virtual/range {p0 .. p0}, Ldev/kdrag0n/monet/colors/Zcam;->getHz()D

    move-result-wide v3

    invoke-static {v3, v4}, Ldev/kdrag0n/monet/util/MathExtKt;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    .line 79
    invoke-virtual/range {p0 .. p0}, Ldev/kdrag0n/monet/colors/Zcam;->getHz()D

    move-result-wide v5

    invoke-static {v5, v6}, Ldev/kdrag0n/monet/util/MathExtKt;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    const-wide v5, 0x3dc45c3ea5ce3f93L    # 3.7035226210190005E-11

    add-double/2addr v10, v5

    const-wide v5, 0x3fd1bdcf5fe8e29cL    # 0.2772100865

    mul-double/2addr v5, v3

    add-double/2addr v5, v10

    const-wide v7, 0x3fbdb860b8f83aacL    # 0.1160946323

    mul-double/2addr v7, v1

    add-double/2addr v5, v7

    .line 84
    invoke-static {v0, v5, v6}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->access$pqInv(Ldev/kdrag0n/monet/colors/Zcam$Companion;D)D

    move-result-wide v5

    .line 85
    invoke-static {v0, v10, v11}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->access$pqInv(Ldev/kdrag0n/monet/colors/Zcam$Companion;D)D

    move-result-wide v7

    const-wide v12, 0x3fa5cdce5edb1d41L    # 0.0425858012

    mul-double/2addr v3, v12

    add-double/2addr v10, v3

    const-wide v3, -0x4017e08154e20128L    # -0.7538445799

    mul-double/2addr v1, v3

    add-double/2addr v10, v1

    .line 86
    invoke-static {v0, v10, v11}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->access$pqInv(Ldev/kdrag0n/monet/colors/Zcam$Companion;D)D

    move-result-wide v0

    const-wide v2, 0x3ffec9a1a8bdc11aL    # 1.9242264358

    mul-double/2addr v2, v5

    const-wide v9, -0x400fec5ee561c5cdL    # -1.0047923126

    mul-double/2addr v9, v7

    add-double/2addr v2, v9

    const-wide v9, 0x3fa3470b79a82f00L    # 0.037651404

    mul-double/2addr v9, v0

    add-double/2addr v2, v9

    const-wide v9, 0x3fd66b96ff1d727bL    # 0.3503167621

    mul-double/2addr v9, v5

    const-wide v11, 0x3fe73f557d1eb482L    # 0.7264811939

    mul-double/2addr v11, v7

    add-double/2addr v9, v11

    const-wide v11, -0x404f42f769fa06d1L    # -0.0653844229

    mul-double/2addr v11, v0

    add-double/2addr v9, v11

    const-wide v11, -0x4048b559ba41c0fcL    # -0.090982811

    mul-double/2addr v5, v11

    const-wide v11, -0x402bfc427af12f4fL    # -0.3127282905

    mul-double/2addr v7, v11

    add-double/2addr v5, v7

    const-wide v7, 0x3ff85d4078439d34L    # 1.5227665613

    mul-double/2addr v0, v7

    add-double v16, v5, v0

    const-wide v0, 0x3fc3333333333330L    # 0.1499999999999999

    mul-double v0, v0, v16

    add-double/2addr v2, v0

    const-wide v0, 0x3ff2666666666666L    # 1.15

    div-double v12, v2, v0

    const-wide v0, -0x402a3d70a3d70a3eL    # -0.33999999999999997

    mul-double/2addr v0, v12

    add-double/2addr v9, v0

    const-wide v0, 0x3fe51eb851eb851fL    # 0.66

    div-double v14, v9, v0

    .line 95
    new-instance v0, Ldev/kdrag0n/monet/colors/CieXyz;

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Ldev/kdrag0n/monet/colors/CieXyz;-><init>(DDD)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toLinearSrgb()Ldev/kdrag0n/monet/colors/LinearSrgb;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    new-instance p0, Ldev/kdrag0n/monet/colors/LinearSrgb;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ldev/kdrag0n/monet/colors/LinearSrgb;-><init>(DDD)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Zcam(brightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam;->brightness:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam;->lightness:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", colorfulness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam;->colorfulness:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", chroma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam;->chroma:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", hueAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam;->hueAngle:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", saturation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam;->saturation:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", vividness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam;->vividness:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", blackness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam;->blackness:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", whiteness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam;->whiteness:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", viewingConditions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ldev/kdrag0n/monet/colors/Zcam;->viewingConditions:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
