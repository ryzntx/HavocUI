.class public Landroid/content/res/ThemeConfig$JsonSerializer;
.super Ljava/lang/Object;
.source "ThemeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ThemeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonSerializer"
.end annotation


# static fields
.field private static final NAME_FONT_PKG:Ljava/lang/String; = "mFontPkgName"

.field private static final NAME_ICON_PKG:Ljava/lang/String; = "mIconPkgName"

.field private static final NAME_OVERLAY_PKG:Ljava/lang/String; = "mOverlayPkgName"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeQuietly(Landroid/util/JsonReader;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static closeQuietly(Landroid/util/JsonWriter;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static closeQuietly(Ljava/io/Reader;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static closeQuietly(Ljava/io/Writer;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static fromJson(Ljava/lang/String;)Landroid/content/res/ThemeConfig;
    .locals 11

    const/4 v8, 0x0

    if-nez p0, :cond_0

    return-object v8

    :cond_0
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Landroid/util/JsonReader;

    invoke-direct {v4, v7}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Landroid/content/res/ThemeConfig$JsonSerializer;->readAppTheme(Landroid/util/JsonReader;)Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v4

    move-object v6, v7

    :goto_1
    :try_start_3
    sget-object v8, Landroid/content/res/ThemeConfig;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not parse ThemeConfig from: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v6}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Ljava/io/Reader;)V

    invoke-static {v3}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Landroid/util/JsonReader;)V

    :goto_2
    new-instance v8, Landroid/content/res/ThemeConfig;

    invoke-direct {v8, v5}, Landroid/content/res/ThemeConfig;-><init>(Ljava/util/Map;)V

    return-object v8

    :cond_1
    :try_start_4
    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v7}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Ljava/io/Reader;)V

    invoke-static {v4}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Landroid/util/JsonReader;)V

    move-object v3, v4

    move-object v6, v7

    goto :goto_2

    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v6}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Ljava/io/Reader;)V

    invoke-static {v3}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Landroid/util/JsonReader;)V

    throw v8

    :catchall_1
    move-exception v8

    move-object v6, v7

    goto :goto_3

    :catchall_2
    move-exception v8

    move-object v3, v4

    move-object v6, v7

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v6, v7

    goto :goto_1
.end method

.method private static readAppTheme(Landroid/util/JsonReader;)Landroid/content/res/ThemeConfig$AppTheme;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "mOverlayPkgName"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "mIconPkgName"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_1

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "mFontPkgName"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_2

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    new-instance v4, Landroid/content/res/ThemeConfig$AppTheme;

    invoke-direct {v4, v3, v1, v0}, Landroid/content/res/ThemeConfig$AppTheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static toJson(Landroid/content/res/ThemeConfig;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Landroid/util/JsonWriter;

    invoke-direct {v3, v5}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3, p0}, Landroid/content/res/ThemeConfig$JsonSerializer;->writeTheme(Landroid/util/JsonWriter;Landroid/content/res/ThemeConfig;)V

    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    invoke-static {v5}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Ljava/io/Writer;)V

    invoke-static {v3}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Landroid/util/JsonWriter;)V

    move-object v2, v3

    move-object v4, v5

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :goto_1
    :try_start_3
    sget-object v6, Landroid/content/res/ThemeConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Could not write theme mapping"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v4}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Ljava/io/Writer;)V

    invoke-static {v2}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Landroid/util/JsonWriter;)V

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v4}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Ljava/io/Writer;)V

    invoke-static {v2}, Landroid/content/res/ThemeConfig$JsonSerializer;->closeQuietly(Landroid/util/JsonWriter;)V

    throw v6

    :catchall_1
    move-exception v6

    move-object v4, v5

    goto :goto_2

    :catchall_2
    move-exception v6

    move-object v2, v3

    move-object v4, v5

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v5

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    goto :goto_1
.end method

.method private static writeAppTheme(Landroid/util/JsonWriter;Landroid/content/res/ThemeConfig$AppTheme;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string/jumbo v0, "mOverlayPkgName"

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string/jumbo v0, "mIconPkgName"

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string/jumbo v0, "mFontPkgName"

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method private static writeTheme(Landroid/util/JsonWriter;Landroid/content/res/ThemeConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-object v4, p1, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ThemeConfig$AppTheme;

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-static {p0, v1}, Landroid/content/res/ThemeConfig$JsonSerializer;->writeAppTheme(Landroid/util/JsonWriter;Landroid/content/res/ThemeConfig$AppTheme;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method
