.class final Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MonetCompat.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMonetCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MonetCompat.kt\ncom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,596:1\n1849#2,2:597\n*E\n*S KotlinDebug\n*F\n+ 1 MonetCompat.kt\ncom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1\n*L\n264#1,2:597\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.kieronquinn.monetcompat.core.MonetCompat$updateMonetColorsInternal$1$1"
    f = "MonetCompat.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isInitialChange:Z

.field final synthetic $newMonetColors:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

.field label:I

.field final synthetic this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;


# direct methods
.method constructor <init>(Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;

    iput-object p2, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;->$newMonetColors:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    iput-boolean p3, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;->$isInitialChange:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;

    iget-object v0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;

    iget-object v1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;->$newMonetColors:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    iget-boolean p0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;->$isInitialChange:Z

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;-><init>(Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 263
    iget v0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 264
    iget-object p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;

    iget-object p1, p1, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-static {p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$getMonetColorsChangedListeners$p(Lcom/kieronquinn/monetcompat/core/MonetCompat;)Ljava/util/List;

    move-result-object p1

    .line 597
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kieronquinn/monetcompat/interfaces/MonetColorsChangedListener;

    .line 265
    iget-object v1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;

    iget-object v1, v1, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    iget-object v2, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;->$newMonetColors:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    iget-boolean v3, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;->$isInitialChange:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/kieronquinn/monetcompat/interfaces/MonetColorsChangedListener;->onMonetColorsChanged(Lcom/kieronquinn/monetcompat/core/MonetCompat;Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;Z)V

    goto :goto_0

    .line 267
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
