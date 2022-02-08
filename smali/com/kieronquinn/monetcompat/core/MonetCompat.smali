.class public final Lcom/kieronquinn/monetcompat/core/MonetCompat;
.super Ljava/lang/Object;
.source "MonetCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMonetCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MonetCompat.kt\ncom/kieronquinn/monetcompat/core/MonetCompat\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,596:1\n310#2,11:597\n4110#3:608\n4210#3,2:609\n4110#3:615\n4210#3,2:616\n1547#4:611\n1618#4,3:612\n*E\n*S KotlinDebug\n*F\n+ 1 MonetCompat.kt\ncom/kieronquinn/monetcompat/core/MonetCompat\n*L\n448#1,11:597\n579#1:608\n579#1,2:609\n591#1:615\n591#1,2:616\n580#1:611\n580#1,3:612\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static INSTANCE:Lcom/kieronquinn/monetcompat/core/MonetCompat; = null

.field private static debugLog:Z = false

.field private static paletteCompatEnabled:Z = false

.field private static wallpaperColorPicker:Lkotlin/jvm/functions/Function2; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static wallpaperSource:I = 0x1


# instance fields
.field private chromaMultiplier:D

.field private darkTheme:Ljava/lang/Boolean;

.field private final defaultColorScheme$delegate:Lkotlin/Lazy;

.field private defaultPrimaryColor:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private monetColors:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

.field private monetColorsChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kieronquinn/monetcompat/interfaces/MonetColorsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private theme:Landroid/content/res/Resources$Theme;

.field private final wallpaperChangedReceiver:Lcom/kieronquinn/monetcompat/core/MonetCompat$wallpaperChangedReceiver$1;

.field private final wallpaperManager$delegate:Lkotlin/Lazy;

.field private whiteLuminance:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->Companion:Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;

    .line 134
    new-instance v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion$wallpaperColorPicker$1;

    invoke-direct {v0, v1}, Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion$wallpaperColorPicker$1;-><init>(Lkotlin/coroutines/Continuation;)V

    sput-object v0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->wallpaperColorPicker:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 142
    iput-wide v0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->chromaMultiplier:D

    const-wide v0, 0x407a900000000000L    # 425.0

    .line 144
    iput-wide v0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->whiteLuminance:D

    .line 146
    new-instance v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$wallpaperManager$2;

    invoke-direct {v0, p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat$wallpaperManager$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->wallpaperManager$delegate:Lkotlin/Lazy;

    .line 150
    new-instance p1, Lcom/kieronquinn/monetcompat/core/MonetCompat$wallpaperChangedReceiver$1;

    invoke-direct {p1, p0}, Lcom/kieronquinn/monetcompat/core/MonetCompat$wallpaperChangedReceiver$1;-><init>(Lcom/kieronquinn/monetcompat/core/MonetCompat;)V

    iput-object p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->wallpaperChangedReceiver:Lcom/kieronquinn/monetcompat/core/MonetCompat$wallpaperChangedReceiver$1;

    .line 156
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->monetColorsChangedListeners:Ljava/util/List;

    .line 219
    new-instance p1, Lcom/kieronquinn/monetcompat/core/MonetCompat$defaultColorScheme$2;

    invoke-direct {p1, p0}, Lcom/kieronquinn/monetcompat/core/MonetCompat$defaultColorScheme$2;-><init>(Lcom/kieronquinn/monetcompat/core/MonetCompat;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->defaultColorScheme$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$createZcamViewingConditions(Lcom/kieronquinn/monetcompat/core/MonetCompat;D)Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->createZcamViewingConditions(D)Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getColorOptions(Lcom/kieronquinn/monetcompat/core/MonetCompat;Landroid/app/WallpaperColors;)Ljava/util/List;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->getColorOptions(Landroid/app/WallpaperColors;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getColorOptions(Lcom/kieronquinn/monetcompat/core/MonetCompat;Landroidx/palette/graphics/Palette;)Ljava/util/List;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->getColorOptions(Landroidx/palette/graphics/Palette;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDebugLog$cp()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->debugLog:Z

    return v0
.end method

.method public static final synthetic access$getDefaultColorScheme$p(Lcom/kieronquinn/monetcompat/core/MonetCompat;)Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->getDefaultColorScheme()Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDefaultColors(Lcom/kieronquinn/monetcompat/core/MonetCompat;)Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->getDefaultColors()Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/kieronquinn/monetcompat/core/MonetCompat;
    .locals 1

    .line 36
    sget-object v0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->INSTANCE:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    return-object v0
.end method

.method public static final synthetic access$getMonetColors$p(Lcom/kieronquinn/monetcompat/core/MonetCompat;)Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->monetColors:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    return-object p0
.end method

.method public static final synthetic access$getMonetColorsChangedListeners$p(Lcom/kieronquinn/monetcompat/core/MonetCompat;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->monetColorsChangedListeners:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getPaletteCompatEnabled$cp()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->paletteCompatEnabled:Z

    return v0
.end method

.method public static final synthetic access$getWallpaperManager$p(Lcom/kieronquinn/monetcompat/core/MonetCompat;)Landroid/app/WallpaperManager;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWallpaperSource$cp()I
    .locals 1

    .line 36
    sget v0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->wallpaperSource:I

    return v0
.end method

.method public static final synthetic access$parseWhiteLuminanceUser(Lcom/kieronquinn/monetcompat/core/MonetCompat;I)D
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->parseWhiteLuminanceUser(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$registerWallpaperChangedReceiver(Lcom/kieronquinn/monetcompat/core/MonetCompat;Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->registerWallpaperChangedReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/kieronquinn/monetcompat/core/MonetCompat;)V
    .locals 0

    .line 36
    sput-object p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->INSTANCE:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    return-void
.end method

.method public static final synthetic access$setMonetColors$p(Lcom/kieronquinn/monetcompat/core/MonetCompat;Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->monetColors:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    return-void
.end method

.method public static final synthetic access$setWallpaperColorPicker$cp(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 36
    sput-object p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->wallpaperColorPicker:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$setWallpaperSource$cp(I)V
    .locals 0

    .line 36
    sput p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->wallpaperSource:I

    return-void
.end method

.method private final createZcamViewingConditions(D)Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;
    .locals 12

    .line 508
    new-instance p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    const-wide v0, 0x3fd999999999999aL    # 0.4

    mul-double v3, p1, v0

    .line 513
    new-instance v0, Ldev/kdrag0n/monet/colors/CieLab;

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Ldev/kdrag0n/monet/colors/CieLab;-><init>(DDD)V

    .line 517
    invoke-virtual {v0}, Ldev/kdrag0n/monet/colors/CieLab;->toCieXyz()Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v0

    invoke-virtual {v0}, Ldev/kdrag0n/monet/colors/CieXyz;->getY()D

    move-result-wide v0

    mul-double v5, v0, p1

    .line 518
    sget-object v0, Ldev/kdrag0n/monet/colors/Illuminants;->INSTANCE:Ldev/kdrag0n/monet/colors/Illuminants;

    invoke-virtual {v0}, Ldev/kdrag0n/monet/colors/Illuminants;->getD65()Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldev/kdrag0n/monet/colors/CieXyz;->times(D)Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v7

    const-wide v1, 0x3fe6147ae147ae14L    # 0.69

    move-object v0, p0

    move-wide v8, p1

    .line 508
    invoke-direct/range {v0 .. v9}, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;-><init>(DDDLdev/kdrag0n/monet/colors/CieXyz;D)V

    return-object p0
.end method

.method private final getColorOptions(Landroid/app/WallpaperColors;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperColors;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x3

    new-array v0, p0, [Landroid/graphics/Color;

    .line 579
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getPrimaryColor()Landroid/graphics/Color;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getSecondaryColor()Landroid/graphics/Color;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getTertiaryColor()Landroid/graphics/Color;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 608
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    if-ge v1, p0, :cond_2

    .line 4210
    aget-object v4, v0, v1

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-nez v5, :cond_1

    .line 579
    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 611
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 613
    check-cast v0, Landroid/graphics/Color;

    .line 580
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method private final getColorOptions(Landroidx/palette/graphics/Palette;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/palette/graphics/Palette;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x3

    new-array v0, p0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 588
    invoke-virtual {p1, v1}, Landroidx/palette/graphics/Palette;->getDominantColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 589
    invoke-virtual {p1, v1}, Landroidx/palette/graphics/Palette;->getVibrantColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 590
    invoke-virtual {p1, v1}, Landroidx/palette/graphics/Palette;->getMutedColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v0, v2

    .line 615
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_2

    .line 4210
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-nez v5, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    if-nez v5, :cond_1

    .line 591
    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 592
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method private final getDefaultColorScheme()Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;
    .locals 0

    iget-object p0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->defaultColorScheme$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    return-object p0
.end method

.method private final getDefaultColors()Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;
    .locals 10

    .line 489
    new-instance v9, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    .line 490
    new-instance v1, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;

    .line 491
    iget-wide v2, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->chromaMultiplier:D

    .line 493
    iget-wide v4, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->whiteLuminance:D

    invoke-static {v4, v5}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->parseWhiteLuminanceUser(I)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->createZcamViewingConditions(D)Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    move-result-object v0

    const/4 v4, 0x1

    .line 490
    invoke-direct {v1, v2, v3, v4, v0}, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;-><init>(DZLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;)V

    .line 495
    new-instance v2, Ldev/kdrag0n/monet/colors/Srgb;

    invoke-virtual {p0}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->getDefaultPrimaryColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0}, Ldev/kdrag0n/monet/colors/Srgb;-><init>(I)V

    .line 496
    iget-wide v3, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->chromaMultiplier:D

    .line 497
    iget-wide v5, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->whiteLuminance:D

    invoke-static {v5, v6}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->parseWhiteLuminanceUser(I)D

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->createZcamViewingConditions(D)Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, v9

    .line 489
    invoke-direct/range {v0 .. v8}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;-><init>(Ldev/kdrag0n/monet/theme/ColorScheme;Ldev/kdrag0n/monet/colors/Color;DLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method

.method private final getWallpaperManager()Landroid/app/WallpaperManager;
    .locals 0

    iget-object p0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->wallpaperManager$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    return-object p0
.end method

.method private final notifySelfListener(Lcom/kieronquinn/monetcompat/interfaces/MonetColorsChangedListener;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->monetColors:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 286
    invoke-interface {p1, p0, v0, v1}, Lcom/kieronquinn/monetcompat/interfaces/MonetColorsChangedListener;->onMonetColorsChanged(Lcom/kieronquinn/monetcompat/core/MonetCompat;Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;Z)V

    :cond_0
    return-void
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

    .line 504
    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double/2addr p0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    .line 505
    invoke-static {p0, p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private final registerWallpaperChangedReceiver(Landroid/content/Context;)V
    .locals 2

    .line 480
    iget-object p0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->wallpaperChangedReceiver:Lcom/kieronquinn/monetcompat/core/MonetCompat$wallpaperChangedReceiver$1;

    .line 481
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final updateMonetColorsInternal(Z)Lkotlinx/coroutines/Job;
    .locals 6

    .line 236
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;-><init>(Lcom/kieronquinn/monetcompat/core/MonetCompat;ZLkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method static synthetic updateMonetColorsInternal$default(Lcom/kieronquinn/monetcompat/core/MonetCompat;ZILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 235
    :cond_0
    invoke-direct {p0, p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->updateMonetColorsInternal(Z)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addMonetColorsChangedListener(Lcom/kieronquinn/monetcompat/interfaces/MonetColorsChangedListener;Z)V
    .locals 1
    .param p1    # Lcom/kieronquinn/monetcompat/interfaces/MonetColorsChangedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->monetColorsChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->monetColorsChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 428
    invoke-direct {p0, p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->notifySelfListener(Lcom/kieronquinn/monetcompat/interfaces/MonetColorsChangedListener;)V

    :cond_0
    return-void
.end method

.method public final getAvailableWallpaperColors(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 550
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/kieronquinn/monetcompat/core/MonetCompat$getAvailableWallpaperColors$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kieronquinn/monetcompat/core/MonetCompat$getAvailableWallpaperColors$2;-><init>(Lcom/kieronquinn/monetcompat/core/MonetCompat;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getChromaMultiplier()D
    .locals 2

    .line 142
    iget-wide v0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->chromaMultiplier:D

    return-wide v0
.end method

.method public final getDefaultPrimaryColor()Ljava/lang/Integer;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->defaultPrimaryColor:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 167
    iget-object p0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->theme:Landroid/content/res/Resources$Theme;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const v1, 0x1010433

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v0}, Lcom/kieronquinn/monetcompat/extensions/Extensions_Resources_ThemeKt;->getAttributeColor$default(Landroid/content/res/Resources$Theme;IIILjava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 168
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/kieronquinn/monetcompat/core/MonetAttributeNotFoundException;

    const-string v0, "android.R.attr.colorPrimary"

    invoke-direct {p0, v0}, Lcom/kieronquinn/monetcompat/core/MonetAttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "theme"

    .line 167
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final getMonetColors()Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->monetColors:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->getDefaultColorScheme()Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method final synthetic getWallpaperPrimaryColorCompat(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/kieronquinn/monetcompat/core/MonetCompat$getWallpaperPrimaryColorCompat$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getWallpaperPrimaryColorCompat$1;

    iget v1, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getWallpaperPrimaryColorCompat$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getWallpaperPrimaryColorCompat$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getWallpaperPrimaryColorCompat$1;

    invoke-direct {v0, p0, p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat$getWallpaperPrimaryColorCompat$1;-><init>(Lcom/kieronquinn/monetcompat/core/MonetCompat;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getWallpaperPrimaryColorCompat$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 537
    iget v2, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getWallpaperPrimaryColorCompat$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 539
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 537
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 538
    iput v4, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getWallpaperPrimaryColorCompat$1;->label:I

    invoke-virtual {p0, v0}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->getAvailableWallpaperColors(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_6

    .line 539
    sget-object p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->wallpaperColorPicker:Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getWallpaperPrimaryColorCompat$1;->label:I

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p1

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getWhiteLuminance()D
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->whiteLuminance:D

    return-wide v0
.end method

.method public final setChromaMultiplier(D)V
    .locals 0

    .line 142
    iput-wide p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->chromaMultiplier:D

    return-void
.end method

.method public final setWallpaperPrimaryColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final setWhiteLuminance(D)V
    .locals 0

    .line 144
    iput-wide p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->whiteLuminance:D

    return-void
.end method

.method public final updateConfiguration(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-static {p1}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ContextKt;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    .line 408
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const-string v2, "context.theme"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->theme:Landroid/content/res/Resources$Theme;

    .line 409
    iget-object v1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->darkTheme:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 410
    invoke-direct {p0, v1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->updateMonetColorsInternal(Z)Lkotlinx/coroutines/Job;

    .line 412
    :cond_0
    invoke-static {p1}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ContextKt;->isDarkMode(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->darkTheme:Ljava/lang/Boolean;

    return-void
.end method

.method public final updateMonetColors()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 276
    invoke-static {p0, v0, v1, v2}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->updateMonetColorsInternal$default(Lcom/kieronquinn/monetcompat/core/MonetCompat;ZILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
