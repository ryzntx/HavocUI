.class public final Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;
.super Ljava/lang/Object;
.source "MonetCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kieronquinn/monetcompat/core/MonetCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDebugLog()Z
    .locals 0

    .line 51
    invoke-static {}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$getDebugLog$cp()Z

    move-result p0

    return p0
.end method

.method public final getInstance(DD)Lcom/kieronquinn/monetcompat/core/MonetCompat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 95
    invoke-static {}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$getINSTANCE$cp()Lcom/kieronquinn/monetcompat/core/MonetCompat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->setChromaMultiplier(D)V

    .line 97
    invoke-virtual {p0, p3, p4}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->setWhiteLuminance(D)V

    return-object p0

    .line 95
    :cond_0
    new-instance p0, Lcom/kieronquinn/monetcompat/core/MonetInstanceException;

    invoke-direct {p0}, Lcom/kieronquinn/monetcompat/core/MonetInstanceException;-><init>()V

    throw p0
.end method

.method public final getWallpaperSource()I
    .locals 0

    .line 61
    invoke-static {}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$getWallpaperSource$cp()I

    move-result p0

    return p0
.end method

.method public final setWallpaperColorPicker(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-static {p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$setWallpaperColorPicker$cp(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final setWallpaperSource(I)V
    .locals 0

    .line 61
    invoke-static {p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$setWallpaperSource$cp(I)V

    return-void
.end method

.method public final setup(Landroid/content/Context;)Lcom/kieronquinn/monetcompat/core/MonetCompat;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$getINSTANCE$cp()Lcom/kieronquinn/monetcompat/core/MonetCompat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 72
    invoke-static {}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$getINSTANCE$cp()Lcom/kieronquinn/monetcompat/core/MonetCompat;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->updateConfiguration(Landroid/content/Context;)V

    .line 73
    invoke-static {}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$getINSTANCE$cp()Lcom/kieronquinn/monetcompat/core/MonetCompat;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    .line 75
    :cond_0
    new-instance p0, Lcom/kieronquinn/monetcompat/core/MonetCompat;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kieronquinn/monetcompat/core/MonetCompat;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->updateConfiguration(Landroid/content/Context;)V

    .line 77
    invoke-static {p0, p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$registerWallpaperChangedReceiver(Lcom/kieronquinn/monetcompat/core/MonetCompat;Landroid/content/Context;)V

    .line 75
    invoke-static {p0}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$setINSTANCE$cp(Lcom/kieronquinn/monetcompat/core/MonetCompat;)V

    .line 79
    invoke-static {}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$getINSTANCE$cp()Lcom/kieronquinn/monetcompat/core/MonetCompat;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
