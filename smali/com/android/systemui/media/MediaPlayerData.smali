.class public final Lcom/android/systemui/media/MediaPlayerData;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCarouselController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaPlayerData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,539:1\n1313#2:540\n1382#2,3:541\n*E\n*S KotlinDebug\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaPlayerData\n*L\n529#1:540\n529#1,3:541\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

.field private static final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final mediaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final mediaPlayers:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;",
            "Lcom/android/systemui/media/MediaControlPanel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 495
    new-instance v0, Lcom/android/systemui/media/MediaPlayerData;

    invoke-direct {v0}, Lcom/android/systemui/media/MediaPlayerData;-><init>()V

    sput-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    .line 502
    new-instance v0, Lcom/android/systemui/media/MediaPlayerData$$special$$inlined$compareByDescending$1;

    invoke-direct {v0}, Lcom/android/systemui/media/MediaPlayerData$$special$$inlined$compareByDescending$1;-><init>()V

    .line 503
    new-instance v1, Lcom/android/systemui/media/MediaPlayerData$$special$$inlined$thenByDescending$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaPlayerData$$special$$inlined$thenByDescending$1;-><init>(Ljava/util/Comparator;)V

    .line 504
    new-instance v0, Lcom/android/systemui/media/MediaPlayerData$$special$$inlined$thenByDescending$2;

    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaPlayerData$$special$$inlined$thenByDescending$2;-><init>(Ljava/util/Comparator;)V

    .line 505
    new-instance v1, Lcom/android/systemui/media/MediaPlayerData$$special$$inlined$thenByDescending$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaPlayerData$$special$$inlined$thenByDescending$3;-><init>(Ljava/util/Comparator;)V

    sput-object v1, Lcom/android/systemui/media/MediaPlayerData;->comparator:Ljava/util/Comparator;

    .line 507
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lcom/android/systemui/media/MediaPlayerData;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    .line 508
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/MediaData;Lcom/android/systemui/media/MediaControlPanel;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/media/MediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/media/MediaControlPanel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "player"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    .line 512
    new-instance p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;-><init>(Lcom/android/systemui/media/MediaData;J)V

    .line 513
    sget-object p2, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object p1, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p1, p0, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clear()V
    .locals 0

    .line 535
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 536
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public final getMediaPlayer(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 520
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    .line 521
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    if-eqz p0, :cond_0

    sget-object p2, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    .line 524
    :cond_0
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    if-eqz p0, :cond_1

    sget-object p1, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaControlPanel;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final mediaData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 529
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 1313
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1382
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1383
    check-cast v1, Ljava/util/Map$Entry;

    .line 529
    new-instance v2, Lkotlin/Pair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->getData()Lcom/android/systemui/media/MediaData;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final players()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/media/MediaControlPanel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 531
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "mediaPlayers.values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    if-eqz p0, :cond_0

    sget-object p1, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaControlPanel;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
