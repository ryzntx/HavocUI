.class final Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;
.super Ljava/lang/Object;
.source "MediaSessionBasedFilter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaSessionBasedFilter;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaSessionBasedFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaSessionBasedFilter.kt\ncom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,172:1\n673#2:173\n746#2,2:174\n*E\n*S KotlinDebug\n*F\n+ 1 MediaSessionBasedFilter.kt\ncom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1\n*L\n114#1:173\n114#1,2:174\n*E\n"
.end annotation


# instance fields
.field final synthetic $info:Lcom/android/systemui/media/MediaData;

.field final synthetic $key:Ljava/lang/String;

.field final synthetic $oldKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaSessionBasedFilter;Lcom/android/systemui/media/MediaData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    iput-object p2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$info:Lcom/android/systemui/media/MediaData;

    iput-object p3, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 96
    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$info:Lcom/android/systemui/media/MediaData;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    invoke-static {v1}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$getTokensWithNotifications$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 101
    iget-object v3, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    invoke-static {v3}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$getKeyedTokens$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    invoke-static {v4}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$getKeyedTokens$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    goto :goto_1

    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$info:Lcom/android/systemui/media/MediaData;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 104
    iget-object v3, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    invoke-static {v3}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$getKeyedTokens$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_4

    .line 106
    iget-object v4, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$info:Lcom/android/systemui/media/MediaData;

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 107
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    new-array v4, v2, [Landroid/media/session/MediaSession$Token;

    .line 108
    iget-object v5, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$info:Lcom/android/systemui/media/MediaData;

    invoke-virtual {v5}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 109
    invoke-static {v3}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$getKeyedTokens$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 114
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    invoke-static {v3}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$getPackageControllers$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$info:Lcom/android/systemui/media/MediaData;

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 673
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 746
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/media/session/MediaController;

    .line 115
    invoke-virtual {v7}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    move v7, v2

    goto :goto_4

    :cond_7
    move v7, v1

    :goto_4
    if-eqz v7, :cond_6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move-object v5, v4

    :cond_9
    if-eqz v5, :cond_a

    .line 118
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_a

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    goto :goto_5

    :cond_a
    move-object v1, v4

    :goto_5
    if-nez v0, :cond_d

    if-eqz v1, :cond_d

    .line 120
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$info:Lcom/android/systemui/media/MediaData;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    invoke-static {v0}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$getTokensWithNotifications$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_6

    .line 126
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filtering key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " local="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$info:Lcom/android/systemui/media/MediaData;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " remote="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaSessionBasedFilter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    invoke-static {v0}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$getKeyedTokens$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, Ljava/util/Set;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 131
    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    iget-object p0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$dispatchMediaDataRemoved(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/lang/String;)V

    goto :goto_7

    .line 130
    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 122
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    iget-object v1, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;->$info:Lcom/android/systemui/media/MediaData;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$dispatchMediaDataLoaded(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    :cond_e
    :goto_7
    return-void
.end method
