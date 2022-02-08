.class public final Lcom/android/systemui/bubbles/BubbleDataRepository;
.super Ljava/lang/Object;
.source "BubbleDataRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBubbleDataRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BubbleDataRepository.kt\ncom/android/systemui/bubbles/BubbleDataRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,182:1\n1365#2,9:183\n1591#2,2:192\n1374#2:194\n*E\n*S KotlinDebug\n*F\n+ 1 BubbleDataRepository.kt\ncom/android/systemui/bubbles/BubbleDataRepository\n*L\n75#1,9:183\n75#1,2:192\n75#1:194\n*E\n"
.end annotation


# instance fields
.field private final ioScope:Lkotlinx/coroutines/CoroutineScope;

.field private job:Lkotlinx/coroutines/Job;

.field private final launcherApps:Landroid/content/pm/LauncherApps;

.field private final persistentRepository:Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;

.field private final uiScope:Lkotlinx/coroutines/CoroutineScope;

.field private final volatileRepository:Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;Landroid/content/pm/LauncherApps;)V
    .locals 1
    .param p1    # Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/pm/LauncherApps;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "volatileRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "persistentRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcherApps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleDataRepository;->persistentRepository:Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;

    iput-object p3, p0, Lcom/android/systemui/bubbles/BubbleDataRepository;->launcherApps:Landroid/content/pm/LauncherApps;

    .line 45
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    .line 46
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository;->uiScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic access$getLauncherApps$p(Lcom/android/systemui/bubbles/BubbleDataRepository;)Landroid/content/pm/LauncherApps;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository;->launcherApps:Landroid/content/pm/LauncherApps;

    return-object p0
.end method

.method public static final synthetic access$getPersistentRepository$p(Lcom/android/systemui/bubbles/BubbleDataRepository;)Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository;->persistentRepository:Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;

    return-object p0
.end method

.method public static final synthetic access$getUiScope$p(Lcom/android/systemui/bubbles/BubbleDataRepository;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository;->uiScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getVolatileRepository$p(Lcom/android/systemui/bubbles/BubbleDataRepository;)Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;

    return-object p0
.end method

.method private final persistToDisk()V
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository;->job:Lkotlinx/coroutines/Job;

    .line 104
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v0, v2}, Lcom/android/systemui/bubbles/BubbleDataRepository$persistToDisk$1;-><init>(Lcom/android/systemui/bubbles/BubbleDataRepository;Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final transform(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/storage/BubbleEntity;",
            ">;"
        }
    .end annotation

    .line 1365
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1591
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1373
    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 77
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "b.user"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 78
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v1, "b.packageName"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getMetadataShortcutId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 80
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v1, "b.key"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getRawDesiredHeight()I

    move-result v8

    .line 82
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getRawDesiredHeightResId()I

    move-result v9

    .line 83
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 76
    new-instance v0, Lcom/android/systemui/bubbles/storage/BubbleEntity;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/bubbles/storage/BubbleEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    .line 1373
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public final addBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 1
    .param p1    # Lcom/android/systemui/bubbles/Bubble;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bubble"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleDataRepository;->addBubbles(Ljava/util/List;)V

    return-void
.end method

.method public final addBubbles(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bubbles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleDataRepository;->transform(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->addBubbles(Ljava/util/List;)V

    .line 62
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleDataRepository;->persistToDisk()V

    :cond_0
    return-void
.end method

.method public final loadBubbles(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Job;
    .locals 7
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository;->ioScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleDataRepository$loadBubbles$1;-><init>(Lcom/android/systemui/bubbles/BubbleDataRepository;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final removeBubbles(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bubbles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleDataRepository;->transform(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;->removeBubbles(Ljava/util/List;)V

    .line 71
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleDataRepository;->persistToDisk()V

    :cond_0
    return-void
.end method
