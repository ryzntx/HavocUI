.class public final Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;
.super Ldev/kdrag0n/monet/theme/ColorScheme;
.source "ZcamMaterialYouTargets.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZcamMaterialYouTargets.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZcamMaterialYouTargets.kt\ndev/kdrag0n/monet/theme/ZcamMaterialYouTargets\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,126:1\n1547#2:127\n1618#2,3:128\n125#3:131\n152#3,3:132\n125#3:135\n152#3,3:136\n125#3:139\n152#3,3:140\n*E\n*S KotlinDebug\n*F\n+ 1 ZcamMaterialYouTargets.kt\ndev/kdrag0n/monet/theme/ZcamMaterialYouTargets\n*L\n106#1:127\n106#1,3:128\n116#1:131\n116#1,3:132\n74#1:135\n74#1,3:136\n43#1:139\n43#1,3:140\n*E\n"
.end annotation


# static fields
.field private static final CIELAB_LIGHTNESS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final LINEAR_LIGHTNESS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final REF_ACCENT1_COLORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accent1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldev/kdrag0n/monet/colors/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final accent2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldev/kdrag0n/monet/colors/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final accent3:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldev/kdrag0n/monet/colors/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final chromaFactor:D

.field private final cond:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final neutral1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldev/kdrag0n/monet/colors/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final neutral2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldev/kdrag0n/monet/colors/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0xf

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v2, 0xa

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide v4, 0x4058c00000000000L    # 99.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/16 v3, 0x14

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide v5, 0x4058800000000000L    # 98.0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v0, v5

    const/16 v3, 0x32

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide v6, 0x4057c00000000000L    # 95.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v0, v6

    const/16 v3, 0x64

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide v7, 0x4056800000000000L    # 90.0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v3, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v7, 0x4

    aput-object v3, v0, v7

    const/16 v3, 0xc8

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v3, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v8, 0x5

    aput-object v3, v0, v8

    const/16 v3, 0x12c

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide v9, 0x4051800000000000L    # 70.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-static {v3, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v9, 0x6

    aput-object v3, v0, v9

    const/16 v3, 0x190

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-static {v3, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v10, 0x7

    aput-object v3, v0, v10

    const/16 v3, 0x1f4

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/high16 v11, 0x4049000000000000L    # 50.0

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-static {v3, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v13, 0x8

    aput-object v3, v0, v13

    const/16 v3, 0x258

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-static {v3, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v14, 0x9

    aput-object v3, v0, v14

    const/16 v3, 0x28a

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide v15, 0x4041800000000000L    # 35.0

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-static {v3, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x2bc

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/high16 v15, 0x403e000000000000L    # 30.0

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v0, v3

    const/16 v2, 0x320

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/high16 v15, 0x4034000000000000L    # 20.0

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v0, v3

    const/16 v2, 0x384

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/high16 v15, 0x4024000000000000L    # 10.0

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v0, v3

    const/16 v2, 0x3e8

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v15, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v0, v3

    .line 23
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->LINEAR_LIGHTNESS_MAP:Ljava/util/Map;

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    cmpg-double v16, v16, v11

    if-nez v16, :cond_0

    const-wide v16, 0x4048cccccccccccdL    # 49.6

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    :goto_1
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v15, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->CIELAB_LIGHTNESS_MAP:Ljava/util/Map;

    new-array v0, v14, [Ljava/lang/Integer;

    const v2, 0xd3e3fd

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0xa8c7fa

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7cacf8

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x4c8df6

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x1b6ef3

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0xb57d0

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    const v1, 0x842a0

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    const v1, 0x62e6f

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    const v1, 0x41e49

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v13

    .line 47
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->REF_ACCENT1_COLORS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(DZLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;)V
    .locals 8
    .param p4    # Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cond"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ldev/kdrag0n/monet/theme/ColorScheme;-><init>()V

    iput-wide p1, p0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->chromaFactor:D

    iput-object p4, p0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->cond:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    if-eqz p3, :cond_0

    .line 71
    sget-object p1, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->LINEAR_LIGHTNESS_MAP:Ljava/util/Map;

    goto :goto_1

    .line 73
    :cond_0
    sget-object p1, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->CIELAB_LIGHTNESS_MAP:Ljava/util/Map;

    .line 135
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->cielabL(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {p4, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {p2}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    .line 83
    :goto_1
    invoke-direct {p0}, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->calcAccent1Chroma()D

    move-result-wide p2

    const-wide v0, 0x3ff3333333333333L    # 1.2

    mul-double/2addr p2, v0

    const/4 p4, 0x3

    int-to-double v0, p4

    div-double v0, p2, v0

    const/4 p4, 0x2

    int-to-double v2, p4

    mul-double/2addr v2, v0

    const/16 p4, 0x8

    int-to-double v4, p4

    div-double v4, p2, v4

    const/4 p4, 0x5

    int-to-double v6, p4

    div-double v6, p2, v6

    .line 91
    invoke-direct {p0, v4, v5, p1}, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->shadesWithChroma(DLjava/util/Map;)Ljava/util/Map;

    move-result-object p4

    iput-object p4, p0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->neutral1:Ljava/util/Map;

    .line 92
    invoke-direct {p0, v6, v7, p1}, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->shadesWithChroma(DLjava/util/Map;)Ljava/util/Map;

    move-result-object p4

    iput-object p4, p0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->neutral2:Ljava/util/Map;

    .line 94
    invoke-direct {p0, p2, p3, p1}, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->shadesWithChroma(DLjava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->accent1:Ljava/util/Map;

    .line 95
    invoke-direct {p0, v0, v1, p1}, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->shadesWithChroma(DLjava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->accent2:Ljava/util/Map;

    .line 96
    invoke-direct {p0, v2, v3, p1}, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->shadesWithChroma(DLjava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->accent3:Ljava/util/Map;

    return-void
.end method

.method private final calcAccent1Chroma()D
    .locals 6

    .line 105
    sget-object v0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->REF_ACCENT1_COLORS:Ljava/util/List;

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 129
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 106
    sget-object v3, Ldev/kdrag0n/monet/colors/Zcam;->Companion:Ldev/kdrag0n/monet/colors/Zcam$Companion;

    sget-object v4, Ldev/kdrag0n/monet/colors/CieXyz;->Companion:Ldev/kdrag0n/monet/colors/CieXyz$Companion;

    new-instance v5, Ldev/kdrag0n/monet/colors/Srgb;

    invoke-direct {v5, v2}, Ldev/kdrag0n/monet/colors/Srgb;-><init>(I)V

    invoke-virtual {v5}, Ldev/kdrag0n/monet/colors/Srgb;->toLinearSrgb()Ldev/kdrag0n/monet/colors/LinearSrgb;

    move-result-object v2

    invoke-virtual {v4, v2}, Ldev/kdrag0n/monet/colors/CieXyz$Companion;->toCieXyz(Ldev/kdrag0n/monet/colors/LinearSrgb;)Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v2

    iget-object v4, p0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->cond:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    invoke-virtual {v3, v2, v4}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->toAbs(Ldev/kdrag0n/monet/colors/CieXyz;Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;)Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v2

    iget-object v4, p0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->cond:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    invoke-virtual {v3, v2, v4}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->toZcam(Ldev/kdrag0n/monet/colors/CieXyz;Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;)Ldev/kdrag0n/monet/colors/Zcam;

    move-result-object v2

    invoke-virtual {v2}, Ldev/kdrag0n/monet/colors/Zcam;->getChroma()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->averageOfDouble(Ljava/lang/Iterable;)D

    move-result-wide v0

    return-wide v0
.end method

.method private final cielabL(D)D
    .locals 9

    .line 103
    sget-object v0, Ldev/kdrag0n/monet/colors/Zcam;->Companion:Ldev/kdrag0n/monet/colors/Zcam$Companion;

    .line 99
    new-instance v8, Ldev/kdrag0n/monet/colors/CieLab;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v8

    move-wide v2, p1

    invoke-direct/range {v1 .. v7}, Ldev/kdrag0n/monet/colors/CieLab;-><init>(DDD)V

    .line 103
    invoke-virtual {v8}, Ldev/kdrag0n/monet/colors/CieLab;->toCieXyz()Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object p1

    iget-object p2, p0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->cond:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    invoke-virtual {v0, p1, p2}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->toAbs(Ldev/kdrag0n/monet/colors/CieXyz;Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;)Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object p1

    iget-object p0, p0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->cond:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    invoke-virtual {v0, p1, p0}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->toZcam(Ldev/kdrag0n/monet/colors/CieXyz;Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;)Ldev/kdrag0n/monet/colors/Zcam;

    move-result-object p0

    invoke-virtual {p0}, Ldev/kdrag0n/monet/colors/Zcam;->getLightness()D

    move-result-wide p0

    return-wide p0
.end method

.method private final shadesWithChroma(DLjava/util/Map;)Ljava/util/Map;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldev/kdrag0n/monet/colors/Color;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 114
    iget-wide v1, v0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->chromaFactor:D

    mul-double v1, v1, p1

    .line 131
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    new-instance v14, Ldev/kdrag0n/monet/colors/Zcam;

    move-object v3, v14

    const-wide/16 v4, 0x0

    .line 118
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v26, v14

    move-wide v14, v15

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    .line 121
    iget-object v4, v0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->cond:Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    move-object/from16 v22, v4

    const/16 v23, 0x1e5

    const/16 v24, 0x0

    move-object v4, v10

    move-object v5, v11

    move-wide v10, v1

    move-wide/from16 p1, v1

    move-object v0, v4

    move-object v1, v5

    const-wide/16 v4, 0x0

    .line 117
    invoke-direct/range {v3 .. v24}, Ldev/kdrag0n/monet/colors/Zcam;-><init>(DDDDDDDDDLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v26

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-wide/from16 v1, p1

    move-object v10, v0

    move-object/from16 v0, p0

    goto :goto_0

    :cond_0
    move-object v0, v10

    .line 123
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

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

    .line 65
    iget-object p0, p0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->accent1:Ljava/util/Map;

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

    .line 66
    iget-object p0, p0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->accent2:Ljava/util/Map;

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

    .line 67
    iget-object p0, p0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->accent3:Ljava/util/Map;

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

    .line 62
    iget-object p0, p0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->neutral1:Ljava/util/Map;

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

    .line 63
    iget-object p0, p0, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;->neutral2:Ljava/util/Map;

    return-object p0
.end method
