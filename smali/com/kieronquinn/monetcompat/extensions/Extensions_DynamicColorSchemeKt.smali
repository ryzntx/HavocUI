.class public final Lcom/kieronquinn/monetcompat/extensions/Extensions_DynamicColorSchemeKt;
.super Ljava/lang/Object;
.source "Extensions+DynamicColorScheme.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensions+DynamicColorScheme.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions+DynamicColorScheme.kt\ncom/kieronquinn/monetcompat/extensions/Extensions_DynamicColorSchemeKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,17:1\n1858#2,3:18\n1858#2,3:21\n*E\n*S KotlinDebug\n*F\n+ 1 Extensions+DynamicColorScheme.kt\ncom/kieronquinn/monetcompat/extensions/Extensions_DynamicColorSchemeKt\n*L\n10#1,3:18\n13#1,3:21\n*E\n"
.end annotation


# direct methods
.method public static final isSameAs(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;Ljava/lang/Object;)Z
    .locals 6
    .param p0    # Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "$this$isSameAs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    instance-of v0, p1, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 10
    :cond_0
    invoke-virtual {p0}, Ldev/kdrag0n/monet/theme/ColorScheme;->getAccentColors()Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    if-ltz v2, :cond_2

    check-cast v3, Ljava/util/Map;

    .line 11
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    invoke-virtual {v4}, Ldev/kdrag0n/monet/theme/ColorScheme;->getAccentColors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ListKt;->deepEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    move v2, v5

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    throw v4

    .line 13
    :cond_3
    invoke-virtual {p0}, Ldev/kdrag0n/monet/theme/ColorScheme;->getNeutralColors()Ljava/util/List;

    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    if-ltz v0, :cond_5

    check-cast v2, Ljava/util/Map;

    .line 14
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    move-object v5, p1

    check-cast v5, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    invoke-virtual {v5}, Ldev/kdrag0n/monet/theme/ColorScheme;->getNeutralColors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kieronquinn/monetcompat/extensions/Extensions_ListKt;->deepEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    move v0, v3

    goto :goto_1

    .line 22
    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    throw v4

    :cond_6
    const/4 p0, 0x1

    return p0
.end method
