.class public final Lcom/android/systemui/custom/MonetWatcher;
.super Ljava/lang/Object;
.source "MonetWatcher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMonetWatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MonetWatcher.kt\ncom/android/systemui/custom/MonetWatcher\n*L\n1#1,181:1\n*E\n"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private monetSystem:Lcom/kieronquinn/monetcompat/core/MonetCompat;

.field private wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    .line 27
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    const-string v0, "WallpaperManager.getInstance(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/custom/MonetWatcher;->wallpaperManager:Landroid/app/WallpaperManager;

    .line 30
    invoke-direct {p0}, Lcom/android/systemui/custom/MonetWatcher;->getMonetCompat()Lcom/kieronquinn/monetcompat/core/MonetCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/custom/MonetWatcher;->monetSystem:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    .line 31
    new-instance v0, Lcom/android/systemui/custom/MonetWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/custom/MonetWatcher$1;-><init>(Lcom/android/systemui/custom/MonetWatcher;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->addMonetColorsChangedListener(Lcom/kieronquinn/monetcompat/interfaces/MonetColorsChangedListener;Z)V

    .line 40
    iget-object p1, p0, Lcom/android/systemui/custom/MonetWatcher;->wallpaperManager:Landroid/app/WallpaperManager;

    new-instance v0, Lcom/android/systemui/custom/MonetWatcher$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/custom/MonetWatcher$2;-><init>(Lcom/android/systemui/custom/MonetWatcher;)V

    .line 44
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    .line 45
    iget-object p1, p0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/content/res/MonetWannabe;->shouldForceLoad(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/custom/MonetWatcher;->update()V

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/custom/MonetWatcher;->updateKeyguard()V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/custom/MonetWatcher;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$update(Lcom/android/systemui/custom/MonetWatcher;Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/systemui/custom/MonetWatcher;->update(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;)V

    return-void
.end method

.method public static final synthetic access$updateKeyguard(Lcom/android/systemui/custom/MonetWatcher;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/systemui/custom/MonetWatcher;->updateKeyguard()V

    return-void
.end method

.method private final createZcamViewingConditions(D)Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;
    .locals 12

    .line 169
    new-instance p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    const-wide v0, 0x3fd999999999999aL    # 0.4

    mul-double v3, p1, v0

    .line 172
    new-instance v0, Ldev/kdrag0n/monet/colors/CieLab;

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Ldev/kdrag0n/monet/colors/CieLab;-><init>(DDD)V

    invoke-virtual {v0}, Ldev/kdrag0n/monet/colors/CieLab;->toCieXyz()Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v0

    invoke-virtual {v0}, Ldev/kdrag0n/monet/colors/CieXyz;->getY()D

    move-result-wide v0

    mul-double v5, v0, p1

    .line 173
    sget-object v0, Ldev/kdrag0n/monet/colors/Illuminants;->INSTANCE:Ldev/kdrag0n/monet/colors/Illuminants;

    invoke-virtual {v0}, Ldev/kdrag0n/monet/colors/Illuminants;->getD65()Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldev/kdrag0n/monet/colors/CieXyz;->times(D)Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v7

    const-wide v1, 0x3fe6147ae147ae14L    # 0.69

    move-object v0, p0

    move-wide v8, p1

    .line 169
    invoke-direct/range {v0 .. v9}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;-><init>(DDDLdev/kdrag0n/monet/colors/CieXyz;D)V

    return-object p0
.end method

.method private final getMonetCompat()Lcom/kieronquinn/monetcompat/core/MonetCompat;
    .locals 4

    .line 58
    sget-object v0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->Companion:Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;->setWallpaperSource(I)V

    .line 59
    sget-object v0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->Companion:Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;

    new-instance v1, Lcom/android/systemui/custom/MonetWatcher$getMonetCompat$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/custom/MonetWatcher$getMonetCompat$1;-><init>(Lcom/android/systemui/custom/MonetWatcher;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v1}, Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;->setWallpaperColorPicker(Lkotlin/jvm/functions/Function2;)V

    .line 67
    sget-object v0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->Companion:Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;

    iget-object v1, p0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;->setup(Landroid/content/Context;)Lcom/kieronquinn/monetcompat/core/MonetCompat;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monet_chroma"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "monet_lightness"

    const v3, 0x43d48000    # 425.0f

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    float-to-double v2, p0

    .line 70
    sget-object p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->Companion:Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;->getInstance(DD)Lcom/kieronquinn/monetcompat/core/MonetCompat;

    move-result-object p0

    return-object p0
.end method

.method private final parseWhiteLuminanceUser(I)D
    .locals 4

    int-to-double p0, p1

    const/16 v0, 0x3e8

    int-to-double v0, v0

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double p0, v0, p0

    const-wide v2, 0x40c3880000000000L    # 10000.0

    .line 165
    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double/2addr p0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    .line 166
    invoke-static {p0, p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private final update()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/systemui/custom/MonetWatcher;->monetSystem:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-virtual {v0}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->updateMonetColors()V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/custom/MonetWatcher;->monetSystem:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-virtual {v0}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->getMonetColors()Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/custom/MonetWatcher;->update(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;)V

    return-void
.end method

.method private final update(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;)V
    .locals 16

    move-object/from16 v0, p0

    .line 79
    invoke-virtual/range {p1 .. p1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getAccent1()Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/kdrag0n/monet/colors/Color;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ColorKt;->toArgb(Ldev/kdrag0n/monet/colors/Color;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 80
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getAccent1()Ljava/util/Map;

    move-result-object v4

    const/16 v5, 0x1f4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/kdrag0n/monet/colors/Color;

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ColorKt;->toArgb(Ldev/kdrag0n/monet/colors/Color;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 82
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getNeutral1()Ljava/util/Map;

    move-result-object v6

    const/16 v7, 0x384

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldev/kdrag0n/monet/colors/Color;

    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ColorKt;->toArgb(Ldev/kdrag0n/monet/colors/Color;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v3

    .line 83
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getNeutral1()Ljava/util/Map;

    move-result-object v7

    const/16 v8, 0x32

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldev/kdrag0n/monet/colors/Color;

    if-eqz v7, :cond_3

    invoke-static {v7}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ColorKt;->toArgb(Ldev/kdrag0n/monet/colors/Color;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v3

    .line 85
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getNeutral1()Ljava/util/Map;

    move-result-object v8

    const/16 v9, 0x2bc

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldev/kdrag0n/monet/colors/Color;

    if-eqz v8, :cond_4

    invoke-static {v8}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ColorKt;->toArgb(Ldev/kdrag0n/monet/colors/Color;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object v8, v3

    .line 86
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getNeutral1()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldev/kdrag0n/monet/colors/Color;

    if-eqz v9, :cond_5

    invoke-static {v9}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ColorKt;->toArgb(Ldev/kdrag0n/monet/colors/Color;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_5

    :cond_5
    move-object v9, v3

    .line 88
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getAccent2()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "monet_base_accent_secondary_light"

    const-string v12, "monet_base_accent_secondary"

    const-string v13, "-1"

    if-eqz v10, :cond_8

    invoke-virtual/range {p1 .. p1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getAccent2()Ljava/util/Map;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 89
    invoke-virtual/range {p1 .. p1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getAccent2()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/kdrag0n/monet/colors/Color;

    if-eqz v10, :cond_6

    invoke-static {v10}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ColorKt;->toArgb(Ldev/kdrag0n/monet/colors/Color;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_6

    :cond_6
    move-object v10, v3

    .line 90
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getAccent2()Ljava/util/Map;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ldev/kdrag0n/monet/colors/Color;

    if-eqz v14, :cond_7

    invoke-static {v14}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ColorKt;->toArgb(Ldev/kdrag0n/monet/colors/Color;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_7

    :cond_7
    move-object v14, v3

    .line 91
    :goto_7
    iget-object v15, v0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 92
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 91
    invoke-static {v15, v12, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    iget-object v10, v0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 94
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 93
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    .line 96
    :cond_8
    iget-object v10, v0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    iget-object v10, v0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getAccent3()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "monet_base_accent_tertiary_light"

    const-string v12, "monet_base_accent_tertiary"

    if-eqz v10, :cond_b

    invoke-virtual/range {p1 .. p1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getAccent3()Ljava/util/Map;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 103
    invoke-virtual/range {p1 .. p1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getAccent3()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/kdrag0n/monet/colors/Color;

    if-eqz v2, :cond_9

    invoke-static {v2}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ColorKt;->toArgb(Ldev/kdrag0n/monet/colors/Color;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_9

    :cond_9
    move-object v2, v3

    .line 104
    :goto_9
    invoke-virtual/range {p1 .. p1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getAccent3()Ljava/util/Map;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldev/kdrag0n/monet/colors/Color;

    if-eqz v5, :cond_a

    invoke-static {v5}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ColorKt;->toArgb(Ldev/kdrag0n/monet/colors/Color;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 105
    :cond_a
    iget-object v5, v0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 106
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v5, v12, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    iget-object v2, v0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 108
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-static {v2, v11, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a

    .line 110
    :cond_b
    iget-object v2, v0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v12, v13}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    iget-object v2, v0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v11, v13}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    :goto_a
    iget-object v2, v0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 117
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "monet_base_accent"

    .line 116
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    iget-object v1, v0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 119
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "monet_base_accent_light"

    .line 118
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    iget-object v1, v0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 121
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "monet_background"

    .line 120
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 122
    iget-object v1, v0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 123
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "monet_background_light"

    .line 122
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 124
    iget-object v1, v0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 125
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "monet_background_secondary"

    .line 124
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    iget-object v0, v0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "monet_background_secondary_light"

    .line 126
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private final updateKeyguard()V
    .locals 12

    .line 131
    iget-object v0, p0, Lcom/android/systemui/custom/MonetWatcher;->wallpaperManager:Landroid/app/WallpaperManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "monet_chroma"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    float-to-double v5, v1

    .line 133
    iget-object v1, p0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "monet_lightness"

    const/16 v3, 0x1a9

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 134
    invoke-direct {p0, v1}, Lcom/android/systemui/custom/MonetWatcher;->parseWhiteLuminanceUser(I)D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/custom/MonetWatcher;->createZcamViewingConditions(D)Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    move-result-object v7

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 136
    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getPrimaryColor()Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    .line 137
    new-instance v11, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    new-instance v3, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;

    const/4 v2, 0x1

    invoke-direct {v3, v5, v6, v2, v7}, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;-><init>(DZLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;)V

    new-instance v4, Ldev/kdrag0n/monet/colors/Srgb;

    invoke-direct {v4, v0}, Ldev/kdrag0n/monet/colors/Srgb;-><init>(I)V

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;-><init>(Ldev/kdrag0n/monet/theme/ColorScheme;Ldev/kdrag0n/monet/colors/Color;DLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 138
    invoke-virtual {v11}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getAccent1()Ljava/util/Map;

    move-result-object v0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/kdrag0n/monet/colors/Color;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ColorKt;->toArgb(Ldev/kdrag0n/monet/colors/Color;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 139
    :goto_0
    invoke-virtual {v11}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getAccent1()Ljava/util/Map;

    move-result-object v3

    const/16 v4, 0x1f4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/kdrag0n/monet/colors/Color;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ColorKt;->toArgb(Ldev/kdrag0n/monet/colors/Color;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 141
    :goto_1
    invoke-virtual {v11}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getNeutral1()Ljava/util/Map;

    move-result-object v4

    const/16 v5, 0x384

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/kdrag0n/monet/colors/Color;

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ColorKt;->toArgb(Ldev/kdrag0n/monet/colors/Color;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    .line 142
    :goto_2
    invoke-virtual {v11}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getNeutral1()Ljava/util/Map;

    move-result-object v5

    const/16 v6, 0x32

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldev/kdrag0n/monet/colors/Color;

    if-eqz v5, :cond_3

    invoke-static {v5}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ColorKt;->toArgb(Ldev/kdrag0n/monet/colors/Color;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v1

    .line 144
    :goto_3
    invoke-virtual {v11}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getNeutral1()Ljava/util/Map;

    move-result-object v6

    const/16 v7, 0x2bc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldev/kdrag0n/monet/colors/Color;

    if-eqz v6, :cond_4

    invoke-static {v6}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ColorKt;->toArgb(Ldev/kdrag0n/monet/colors/Color;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object v6, v1

    .line 145
    :goto_4
    invoke-virtual {v11}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->getNeutral1()Ljava/util/Map;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/kdrag0n/monet/colors/Color;

    if-eqz v2, :cond_5

    invoke-static {v2}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ColorKt;->toArgb(Ldev/kdrag0n/monet/colors/Color;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 147
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 148
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "monet_base_keyguard_accent"

    .line 147
    invoke-static {v2, v7, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    iget-object v0, p0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "monet_base_keyguard_accent_light"

    .line 149
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 151
    iget-object v0, p0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 152
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "monet_keyguard_background"

    .line 151
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 153
    iget-object v0, p0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "monet_keyguard_background_light"

    .line 153
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    iget-object v0, p0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "monet_keyguard_background_secondary"

    .line 155
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    iget-object p0, p0, Lcom/android/systemui/custom/MonetWatcher;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 158
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "monet_keyguard_background_secondary_light"

    .line 157
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 136
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method public final forceUpdate()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/custom/MonetWatcher;->getMonetCompat()Lcom/kieronquinn/monetcompat/core/MonetCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/custom/MonetWatcher;->monetSystem:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/custom/MonetWatcher;->update()V

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/custom/MonetWatcher;->updateKeyguard()V

    return-void
.end method
