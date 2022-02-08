.class public final Lcom/android/systemui/media/MediaDeviceManager;
.super Ljava/lang/Object;
.source "MediaDeviceManager.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaDeviceManager$Listener;,
        Lcom/android/systemui/media/MediaDeviceManager$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaDeviceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaDeviceManager.kt\ncom/android/systemui/media/MediaDeviceManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,210:1\n1591#2,2:211\n1591#2,2:213\n*E\n*S KotlinDebug\n*F\n+ 1 MediaDeviceManager.kt\ncom/android/systemui/media/MediaDeviceManager\n*L\n87#1,2:211\n109#1,2:213\n*E\n"
.end annotation


# instance fields
.field private final bgExecutor:Ljava/util/concurrent/Executor;

.field private final controllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaDeviceManager$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final fgExecutor:Ljava/util/concurrent/Executor;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/media/MediaDeviceManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final localMediaManagerFactory:Lcom/android/systemui/media/LocalMediaManagerFactory;

.field private final mr2manager:Landroid/media/MediaRouter2Manager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaControllerFactory;Lcom/android/systemui/media/LocalMediaManagerFactory;Landroid/media/MediaRouter2Manager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaControllerFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/media/LocalMediaManagerFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/media/MediaRouter2Manager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controllerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localMediaManagerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mr2manager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fgExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager;->controllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDeviceManager;->localMediaManagerFactory:Lcom/android/systemui/media/LocalMediaManagerFactory;

    iput-object p3, p0, Lcom/android/systemui/media/MediaDeviceManager;->mr2manager:Landroid/media/MediaRouter2Manager;

    iput-object p4, p0, Lcom/android/systemui/media/MediaDeviceManager;->fgExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/media/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 49
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager;->listeners:Ljava/util/Set;

    .line 50
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    .line 53
    const-class p1, Lcom/android/systemui/media/MediaDeviceManager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "javaClass.name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p6, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public static final synthetic access$getBgExecutor$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic access$getFgExecutor$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->fgExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic access$getMr2manager$p(Lcom/android/systemui/media/MediaDeviceManager;)Landroid/media/MediaRouter2Manager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->mr2manager:Landroid/media/MediaRouter2Manager;

    return-object p0
.end method

.method public static final synthetic access$processDevice(Lcom/android/systemui/media/MediaDeviceManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/settingslib/media/MediaDevice;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaDeviceManager;->processDevice(Ljava/lang/String;Ljava/lang/String;Lcom/android/settingslib/media/MediaDevice;)V

    return-void
.end method

.method private final processDevice(Ljava/lang/String;Ljava/lang/String;Lcom/android/settingslib/media/MediaDevice;)V
    .locals 4

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    new-instance v1, Lcom/android/systemui/media/MediaDeviceData;

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/settingslib/media/MediaDevice;->getIconWithoutBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-direct {v1, v0, v3, v2}, Lcom/android/systemui/media/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->listeners:Ljava/util/Set;

    .line 1591
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/media/MediaDeviceManager$Listener;

    .line 110
    invoke-interface {p3, p1, p2, v1}, Lcom/android/systemui/media/MediaDeviceManager$Listener;->onMediaDeviceChanged(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaDeviceData;)V

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/media/MediaDeviceManager$Listener;)Z
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaDeviceManager$Listener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MediaDeviceManager state:"

    .line 96
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    new-instance v7, Lcom/android/systemui/media/MediaDeviceManager$dump$$inlined$with$lambda$1;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/media/MediaDeviceManager$dump$$inlined$with$lambda$1;-><init>(Ljava/io/PrintWriter;Lcom/android/systemui/media/MediaDeviceManager;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/media/MediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 67
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDeviceManager$Entry;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->stop()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDeviceManager$Entry;

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    :cond_1
    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->stop()V

    .line 74
    :cond_2
    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v1, p0, Lcom/android/systemui/media/MediaDeviceManager;->controllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaControllerFactory;->create(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 77
    new-instance v0, Lcom/android/systemui/media/MediaDeviceManager$Entry;

    .line 78
    iget-object v1, p0, Lcom/android/systemui/media/MediaDeviceManager;->localMediaManagerFactory:Lcom/android/systemui/media/LocalMediaManagerFactory;

    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/android/systemui/media/LocalMediaManagerFactory;->create(Ljava/lang/String;)Lcom/android/settingslib/media/LocalMediaManager;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 77
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/media/MediaDeviceManager$Entry;-><init>(Lcom/android/systemui/media/MediaDeviceManager;Ljava/lang/String;Ljava/lang/String;Landroid/media/session/MediaController;Lcom/android/settingslib/media/LocalMediaManager;)V

    .line 79
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->start()V

    :cond_4
    return-void
.end method

.method public onMediaDataRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDeviceManager$Entry;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->stop()V

    :cond_0
    if-eqz v0, :cond_1

    .line 88
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->listeners:Ljava/util/Set;

    .line 1591
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDeviceManager$Listener;

    .line 89
    invoke-interface {v0, p1}, Lcom/android/systemui/media/MediaDeviceManager$Listener;->onKeyRemoved(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
