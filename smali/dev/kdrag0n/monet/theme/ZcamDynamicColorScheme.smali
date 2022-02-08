.class public final Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;
.super Ldev/kdrag0n/monet/theme/ColorScheme;
.source "ZcamDynamicColorScheme.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZcamDynamicColorScheme.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZcamDynamicColorScheme.kt\ndev/kdrag0n/monet/theme/ZcamDynamicColorScheme\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,202:1\n125#2:203\n152#2,3:204\n*E\n*S KotlinDebug\n*F\n+ 1 ZcamDynamicColorScheme.kt\ndev/kdrag0n/monet/theme/ZcamDynamicColorScheme\n*L\n57#1:203\n57#1,3:204\n*E\n"
.end annotation


# static fields
.field public static final Companion:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final accent1$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final accent2$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final accent3$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final accurateShades:Z

.field private final cond:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

.field private final neutral1$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final neutral2$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final seedAccent:Ldev/kdrag0n/monet/colors/Zcam;

.field private final seedNeutral:Ldev/kdrag0n/monet/colors/Zcam;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->Companion:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$Companion;

    return-void
.end method

.method public constructor <init>(Ldev/kdrag0n/monet/theme/ColorScheme;Ldev/kdrag0n/monet/colors/Color;DLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;Z)V
    .locals 27
    .param p1    # Ldev/kdrag0n/monet/theme/ColorScheme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ldev/kdrag0n/monet/colors/Color;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    const-string v3, "targets"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "seedColor"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "cond"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct/range {p0 .. p0}, Ldev/kdrag0n/monet/theme/ColorScheme;-><init>()V

    iput-object v2, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->cond:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    move/from16 v2, p6

    iput-boolean v2, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->accurateShades:Z

    .line 21
    sget-object v2, Ldev/kdrag0n/monet/colors/Zcam;->Companion:Ldev/kdrag0n/monet/colors/Zcam$Companion;

    sget-object v3, Ldev/kdrag0n/monet/colors/CieXyz;->Companion:Ldev/kdrag0n/monet/colors/CieXyz$Companion;

    invoke-interface/range {p2 .. p2}, Ldev/kdrag0n/monet/colors/Color;->toLinearSrgb()Ldev/kdrag0n/monet/colors/LinearSrgb;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldev/kdrag0n/monet/colors/CieXyz$Companion;->toCieXyz(Ldev/kdrag0n/monet/colors/LinearSrgb;)Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v3

    iget-object v4, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->cond:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    invoke-virtual {v2, v3, v4}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->toAbs(Ldev/kdrag0n/monet/colors/CieXyz;Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;)Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v3

    iget-object v4, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->cond:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    invoke-virtual {v2, v3, v4}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->toZcam(Ldev/kdrag0n/monet/colors/CieXyz;Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;)Ldev/kdrag0n/monet/colors/Zcam;

    move-result-object v2

    move-object v5, v2

    .line 22
    invoke-virtual {v2}, Ldev/kdrag0n/monet/colors/Zcam;->getChroma()D

    move-result-wide v2

    mul-double v12, v2, p3

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x3f7

    const/16 v26, 0x0

    invoke-static/range {v5 .. v26}, Ldev/kdrag0n/monet/colors/Zcam;->copy$default(Ldev/kdrag0n/monet/colors/Zcam;DDDDDDDDDLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;ILjava/lang/Object;)Ldev/kdrag0n/monet/colors/Zcam;

    move-result-object v2

    .line 21
    iput-object v2, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->seedNeutral:Ldev/kdrag0n/monet/colors/Zcam;

    .line 24
    iput-object v2, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->seedAccent:Ldev/kdrag0n/monet/colors/Zcam;

    .line 27
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$accent1$2;

    invoke-direct {v3, v0, v1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$accent1$2;-><init>(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;Ldev/kdrag0n/monet/theme/ColorScheme;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->accent1$delegate:Lkotlin/Lazy;

    .line 32
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$accent2$2;

    invoke-direct {v3, v0, v1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$accent2$2;-><init>(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;Ldev/kdrag0n/monet/theme/ColorScheme;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->accent2$delegate:Lkotlin/Lazy;

    .line 37
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$accent3$2;

    invoke-direct {v3, v0, v1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$accent3$2;-><init>(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;Ldev/kdrag0n/monet/theme/ColorScheme;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->accent3$delegate:Lkotlin/Lazy;

    .line 43
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$neutral1$2;

    invoke-direct {v3, v0, v1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$neutral1$2;-><init>(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;Ldev/kdrag0n/monet/theme/ColorScheme;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->neutral1$delegate:Lkotlin/Lazy;

    .line 48
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$neutral2$2;

    invoke-direct {v3, v0, v1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$neutral2$2;-><init>(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;Ldev/kdrag0n/monet/theme/ColorScheme;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->neutral2$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ldev/kdrag0n/monet/theme/ColorScheme;Ldev/kdrag0n/monet/colors/Color;DLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_1

    const/4 p6, 0x1

    :cond_1
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 19
    invoke-direct/range {v0 .. v6}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;-><init>(Ldev/kdrag0n/monet/theme/ColorScheme;Ldev/kdrag0n/monet/colors/Color;DLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;Z)V

    return-void
.end method

.method public static final synthetic access$getSeedAccent$p(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;)Ldev/kdrag0n/monet/colors/Zcam;
    .locals 0

    .line 14
    iget-object p0, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->seedAccent:Ldev/kdrag0n/monet/colors/Zcam;

    return-object p0
.end method

.method public static final synthetic access$getSeedNeutral$p(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;)Ldev/kdrag0n/monet/colors/Zcam;
    .locals 0

    .line 14
    iget-object p0, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->seedNeutral:Ldev/kdrag0n/monet/colors/Zcam;

    return-object p0
.end method

.method public static final synthetic access$transformSwatch(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;Ljava/util/Map;Ldev/kdrag0n/monet/colors/Zcam;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->transformSwatch(Ljava/util/Map;Ldev/kdrag0n/monet/colors/Zcam;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final clipZcamJchToLinearSrgb(DDDDD)Ldev/kdrag0n/monet/colors/LinearSrgb;
    .locals 28

    .line 119
    sget-object v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->Companion:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$Companion;

    invoke-direct/range {p0 .. p6}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->zcamJchToLinearSrgb(DDD)Ldev/kdrag0n/monet/colors/LinearSrgb;

    move-result-object v1

    .line 122
    invoke-static {v0, v1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$Companion;->access$isInGamut(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$Companion;Ldev/kdrag0n/monet/colors/LinearSrgb;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v4, p1, v2

    if-gtz v4, :cond_1

    .line 124
    new-instance v1, Ldev/kdrag0n/monet/colors/LinearSrgb;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 p0, v1

    move-wide/from16 p1, v2

    move-wide/from16 p3, v4

    move-wide/from16 p5, v6

    invoke-direct/range {p0 .. p6}, Ldev/kdrag0n/monet/colors/LinearSrgb;-><init>(DDD)V

    goto/16 :goto_1

    :cond_1
    const-wide v4, 0x4058fffe5c91d14eL    # 99.9999

    cmpl-double v4, p1, v4

    if-ltz v4, :cond_2

    .line 125
    new-instance v1, Ldev/kdrag0n/monet/colors/LinearSrgb;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 p0, v1

    move-wide/from16 p1, v2

    move-wide/from16 p3, v4

    move-wide/from16 p5, v6

    invoke-direct/range {p0 .. p6}, Ldev/kdrag0n/monet/colors/LinearSrgb;-><init>(DDD)V

    goto :goto_1

    :cond_2
    sub-double v4, p1, p7

    sub-double v6, p3, p9

    div-double/2addr v4, v6

    mul-double v6, v4, p9

    sub-double v6, p7, v6

    const-wide/16 v8, 0x0

    move-wide/from16 v15, p3

    move-wide/from16 v17, v8

    :goto_0
    sub-double v8, v15, v17

    .line 139
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v8, v8, v2

    if-lez v8, :cond_4

    add-double v8, v17, v15

    const/4 v1, 0x2

    int-to-double v10, v1

    div-double v26, v8, v10

    move-object/from16 v8, p0

    move-wide/from16 v9, v26

    move-wide v11, v4

    move-wide v13, v6

    .line 141
    invoke-direct/range {v8 .. v14}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->evalLine(DDD)D

    move-result-wide v20

    move-object/from16 v19, p0

    move-wide/from16 v22, v26

    move-wide/from16 v24, p5

    .line 143
    invoke-direct/range {v19 .. v25}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->zcamJchToLinearSrgb(DDD)Ldev/kdrag0n/monet/colors/LinearSrgb;

    move-result-object v1

    .line 147
    invoke-static {v0, v1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$Companion;->access$isInGamut(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$Companion;Ldev/kdrag0n/monet/colors/LinearSrgb;)Z

    move-result v8

    if-nez v8, :cond_3

    move-wide/from16 v15, v26

    goto :goto_0

    :cond_3
    add-double v22, v26, v2

    move-object/from16 v8, p0

    move-wide/from16 v9, v22

    move-wide v11, v4

    move-wide v13, v6

    .line 151
    invoke-direct/range {v8 .. v14}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->evalLine(DDD)D

    move-result-wide v20

    move-object/from16 v19, p0

    move-wide/from16 v24, p5

    .line 153
    invoke-direct/range {v19 .. v25}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->zcamJchToLinearSrgb(DDD)Ldev/kdrag0n/monet/colors/LinearSrgb;

    move-result-object v8

    .line 154
    invoke-static {v0, v8}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$Companion;->access$isInGamut(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$Companion;Ldev/kdrag0n/monet/colors/LinearSrgb;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-wide/from16 v17, v26

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1
.end method

.method private final clipZcamJchToLinearSrgbAdaptive(DDDD)Ldev/kdrag0n/monet/colors/LinearSrgb;
    .locals 14

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v2, p1, v0

    div-double v4, p3, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v6

    .line 184
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v8, v6

    mul-double v4, v4, p7

    add-double/2addr v8, v4

    .line 185
    invoke-static {v2, v3}, Ljava/lang/Math;->signum(D)D

    move-result-wide v4

    mul-double v10, v8, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v12

    sub-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sub-double/2addr v8, v2

    mul-double/2addr v4, v8

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v2

    mul-double/2addr v4, v6

    mul-double v9, v4, v0

    const-wide/16 v11, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    .line 188
    invoke-direct/range {v2 .. v12}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->clipZcamJchToLinearSrgb(DDDDD)Ldev/kdrag0n/monet/colors/LinearSrgb;

    move-result-object v0

    return-object v0
.end method

.method private final clipZcamJchToLinearSrgbLightness(DDD)Ldev/kdrag0n/monet/colors/LinearSrgb;
    .locals 11

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide v7, p1

    .line 171
    invoke-direct/range {v0 .. v10}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->clipZcamJchToLinearSrgb(DDDDD)Ldev/kdrag0n/monet/colors/LinearSrgb;

    move-result-object v0

    return-object v0
.end method

.method private final evalLine(DDD)D
    .locals 0

    mul-double/2addr p3, p1

    add-double/2addr p3, p5

    return-wide p3
.end method

.method private final transformColor(Ldev/kdrag0n/monet/colors/Zcam;Ldev/kdrag0n/monet/colors/Zcam;Ldev/kdrag0n/monet/colors/Zcam;)Ldev/kdrag0n/monet/colors/Color;
    .locals 13

    .line 72
    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/Zcam;->getLightness()D

    move-result-wide v1

    .line 75
    invoke-virtual/range {p3 .. p3}, Ldev/kdrag0n/monet/colors/Zcam;->getChroma()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double v0, v3, v5

    if-nez v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p2}, Ldev/kdrag0n/monet/colors/Zcam;->getChroma()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    invoke-virtual/range {p3 .. p3}, Ldev/kdrag0n/monet/colors/Zcam;->getChroma()D

    move-result-wide v11

    invoke-static/range {v7 .. v12}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Ldev/kdrag0n/monet/colors/Zcam;->getChroma()D

    move-result-wide v5

    div-double v5, v3, v5

    .line 82
    :goto_0
    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/Zcam;->getChroma()D

    move-result-wide v3

    mul-double/2addr v3, v5

    .line 84
    invoke-virtual {p2}, Ldev/kdrag0n/monet/colors/Zcam;->getHueAngle()D

    move-result-wide v5

    move-object v0, p0

    .line 86
    iget-boolean v7, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->accurateShades:Z

    if-eqz v7, :cond_1

    move-object v0, p0

    .line 87
    invoke-direct/range {v0 .. v6}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->clipZcamJchToLinearSrgbLightness(DDD)Ldev/kdrag0n/monet/colors/LinearSrgb;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    move-object v0, p0

    .line 89
    invoke-direct/range {v0 .. v8}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->clipZcamJchToLinearSrgbAdaptive(DDDD)Ldev/kdrag0n/monet/colors/LinearSrgb;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private final transformSwatch(Ljava/util/Map;Ldev/kdrag0n/monet/colors/Zcam;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Ldev/kdrag0n/monet/colors/Color;",
            ">;",
            "Ldev/kdrag0n/monet/colors/Zcam;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Ldev/kdrag0n/monet/colors/Color;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldev/kdrag0n/monet/colors/Color;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 205
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/kdrag0n/monet/colors/Color;

    .line 58
    instance-of v3, v1, Ldev/kdrag0n/monet/colors/Zcam;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_0
    move-object v3, v1

    :goto_1
    check-cast v3, Ldev/kdrag0n/monet/colors/Zcam;

    if-eqz v3, :cond_1

    goto :goto_2

    .line 59
    :cond_1
    sget-object v3, Ldev/kdrag0n/monet/colors/Zcam;->Companion:Ldev/kdrag0n/monet/colors/Zcam$Companion;

    sget-object v5, Ldev/kdrag0n/monet/colors/CieXyz;->Companion:Ldev/kdrag0n/monet/colors/CieXyz$Companion;

    invoke-interface {v1}, Ldev/kdrag0n/monet/colors/Color;->toLinearSrgb()Ldev/kdrag0n/monet/colors/LinearSrgb;

    move-result-object v6

    invoke-virtual {v5, v6}, Ldev/kdrag0n/monet/colors/CieXyz$Companion;->toCieXyz(Ldev/kdrag0n/monet/colors/LinearSrgb;)Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v5

    iget-object v6, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->cond:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    invoke-virtual {v3, v5, v6}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->toAbs(Ldev/kdrag0n/monet/colors/CieXyz;Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;)Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v5

    iget-object v6, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->cond:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    invoke-virtual {v3, v5, v6}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->toZcam(Ldev/kdrag0n/monet/colors/CieXyz;Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;)Ldev/kdrag0n/monet/colors/Zcam;

    move-result-object v3

    .line 60
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    instance-of v6, v5, Ldev/kdrag0n/monet/colors/Zcam;

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    move-object v4, v5

    :goto_3
    check-cast v4, Ldev/kdrag0n/monet/colors/Zcam;

    if-eqz v4, :cond_3

    goto :goto_4

    .line 61
    :cond_3
    sget-object v4, Ldev/kdrag0n/monet/colors/Zcam;->Companion:Ldev/kdrag0n/monet/colors/Zcam$Companion;

    sget-object v5, Ldev/kdrag0n/monet/colors/CieXyz;->Companion:Ldev/kdrag0n/monet/colors/CieXyz$Companion;

    invoke-interface {v1}, Ldev/kdrag0n/monet/colors/Color;->toLinearSrgb()Ldev/kdrag0n/monet/colors/LinearSrgb;

    move-result-object v1

    invoke-virtual {v5, v1}, Ldev/kdrag0n/monet/colors/CieXyz$Companion;->toCieXyz(Ldev/kdrag0n/monet/colors/LinearSrgb;)Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v1

    iget-object v5, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->cond:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    invoke-virtual {v4, v1, v5}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->toAbs(Ldev/kdrag0n/monet/colors/CieXyz;Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;)Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v1

    iget-object v5, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->cond:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    invoke-virtual {v4, v1, v5}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->toZcam(Ldev/kdrag0n/monet/colors/CieXyz;Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;)Ldev/kdrag0n/monet/colors/Zcam;

    move-result-object v4

    .line 62
    :goto_4
    invoke-direct {p0, v3, p2, v4}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->transformColor(Ldev/kdrag0n/monet/colors/Zcam;Ldev/kdrag0n/monet/colors/Zcam;Ldev/kdrag0n/monet/colors/Zcam;)Ldev/kdrag0n/monet/colors/Color;

    move-result-object v1

    .line 63
    invoke-interface {v1}, Ldev/kdrag0n/monet/colors/Color;->toLinearSrgb()Ldev/kdrag0n/monet/colors/LinearSrgb;

    move-result-object v1

    invoke-virtual {v1}, Ldev/kdrag0n/monet/colors/LinearSrgb;->toSrgb()Ldev/kdrag0n/monet/colors/Srgb;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ldev/kdrag0n/monet/colors/Srgb;->quantize8()I

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 67
    :cond_4
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final zcamJchToLinearSrgb(DDD)Ldev/kdrag0n/monet/colors/LinearSrgb;
    .locals 25

    move-object/from16 v0, p0

    move-wide/from16 v4, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    .line 102
    sget-object v14, Ldev/kdrag0n/monet/colors/Zcam;->Companion:Ldev/kdrag0n/monet/colors/Zcam$Companion;

    .line 97
    new-instance v15, Ldev/kdrag0n/monet/colors/Zcam;

    move-object v1, v15

    .line 101
    iget-object v2, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->cond:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    move-object/from16 v20, v2

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-wide/from16 v14, v16

    const-wide/16 v18, 0x0

    const/16 v21, 0x1e5

    const/16 v22, 0x0

    .line 97
    invoke-direct/range {v1 .. v22}, Ldev/kdrag0n/monet/colors/Zcam;-><init>(DDDDDDDDDLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 103
    sget-object v1, Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;->LIGHTNESS:Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;

    .line 104
    sget-object v2, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->CHROMA:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    move-object/from16 v3, v24

    .line 102
    invoke-virtual {v3, v1, v2}, Ldev/kdrag0n/monet/colors/Zcam;->toCieXyz(Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;)Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v1

    .line 105
    iget-object v0, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->cond:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    move-object/from16 v2, v23

    invoke-virtual {v2, v1, v0}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->toRel(Ldev/kdrag0n/monet/colors/CieXyz;Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;)Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v0

    invoke-virtual {v0}, Ldev/kdrag0n/monet/colors/CieXyz;->toLinearSrgb()Ldev/kdrag0n/monet/colors/LinearSrgb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccent1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldev/kdrag0n/monet/colors/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->accent1$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public getAccent2()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldev/kdrag0n/monet/colors/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->accent2$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public getAccent3()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldev/kdrag0n/monet/colors/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->accent3$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public getNeutral1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldev/kdrag0n/monet/colors/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->neutral1$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public getNeutral2()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldev/kdrag0n/monet/colors/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->neutral2$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method
