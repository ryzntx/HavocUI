.class final Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/MediaPlayerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSortKey"
.end annotation


# instance fields
.field private final data:Lcom/android/systemui/media/MediaData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final updateTime:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaData;J)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/MediaData;

    iput-wide p2, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->updateTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    iget-object v0, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/MediaData;

    iget-object v1, p1, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/MediaData;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->updateTime:J

    iget-wide p0, p1, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->updateTime:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getData()Lcom/android/systemui/media/MediaData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 497
    iget-object p0, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/MediaData;

    return-object p0
.end method

.method public final getUpdateTime()J
    .locals 2

    .line 498
    iget-wide v0, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->updateTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/MediaData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->updateTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaSortKey(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/MediaData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->updateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
