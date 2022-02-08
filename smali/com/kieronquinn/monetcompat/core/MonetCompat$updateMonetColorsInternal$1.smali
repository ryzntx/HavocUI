.class final Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MonetCompat.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kieronquinn/monetcompat/core/MonetCompat;->updateMonetColorsInternal(Z)Lkotlinx/coroutines/Job;
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.kieronquinn.monetcompat.core.MonetCompat$updateMonetColorsInternal$1"
    f = "MonetCompat.kt"
    l = {
        0xed,
        0x107
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isUiModeChange:Z

.field label:I

.field final synthetic this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;


# direct methods
.method constructor <init>(Lcom/kieronquinn/monetcompat/core/MonetCompat;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    iput-boolean p2, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->$isUiModeChange:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;

    iget-object v0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    iget-boolean p0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->$isUiModeChange:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;-><init>(Lcom/kieronquinn/monetcompat/core/MonetCompat;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 236
    iget v2, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 237
    iget-object v2, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    iput v4, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->label:I

    invoke-virtual {v2, v0}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->getWallpaperPrimaryColorCompat(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    .line 236
    :cond_3
    :goto_0
    check-cast v2, Ljava/lang/Integer;

    .line 238
    iget-object v5, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-virtual {v5, v2}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->setWallpaperPrimaryColor(Ljava/lang/Integer;)V

    .line 239
    iget-object v5, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-virtual {v5}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->getWhiteLuminance()D

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v6

    invoke-static {v5, v6}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$parseWhiteLuminanceUser(Lcom/kieronquinn/monetcompat/core/MonetCompat;I)D

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$createZcamViewingConditions(Lcom/kieronquinn/monetcompat/core/MonetCompat;D)Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    move-result-object v13

    const-string v5, "MonetCompat"

    if-eqz v2, :cond_5

    .line 241
    sget-object v6, Lcom/kieronquinn/monetcompat/core/MonetCompat;->Companion:Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;

    invoke-virtual {v6}, Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;->getDebugLog()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got wallpaper primary color #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_4
    new-instance v5, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    .line 245
    new-instance v9, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;

    iget-object v6, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-virtual {v6}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->getChromaMultiplier()D

    move-result-wide v6

    invoke-direct {v9, v6, v7, v4, v13}, Ldev/kdrag0n/monet/theme/ZcamMaterialYouTargets;-><init>(DZLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;)V

    .line 246
    new-instance v10, Ldev/kdrag0n/monet/colors/Srgb;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v10, v2}, Ldev/kdrag0n/monet/colors/Srgb;-><init>(I)V

    .line 247
    iget-object v2, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-virtual {v2}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->getChromaMultiplier()D

    move-result-wide v11

    const/4 v14, 0x0

    const/16 v15, 0x10

    const/16 v16, 0x0

    move-object v8, v5

    .line 244
    invoke-direct/range {v8 .. v16}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;-><init>(Ldev/kdrag0n/monet/theme/ColorScheme;Ldev/kdrag0n/monet/colors/Color;DLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    .line 251
    :cond_5
    sget-object v2, Lcom/kieronquinn/monetcompat/core/MonetCompat;->Companion:Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;

    invoke-virtual {v2}, Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;->getDebugLog()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Unable to get primary color from wallpaper, using default app colors"

    .line 252
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_6
    iget-object v2, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-static {v2}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$getDefaultColorScheme$p(Lcom/kieronquinn/monetcompat/core/MonetCompat;)Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    move-result-object v5

    .line 259
    :goto_1
    iget-boolean v2, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->$isUiModeChange:Z

    const/4 v6, 0x0

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-static {v2}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$getMonetColors$p(Lcom/kieronquinn/monetcompat/core/MonetCompat;)Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/kieronquinn/monetcompat/extensions/Extensions_DynamicColorSchemeKt;->isSameAs(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    move v2, v6

    goto :goto_3

    :cond_8
    :goto_2
    move v2, v4

    .line 260
    :goto_3
    iget-object v7, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-static {v7}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$getMonetColors$p(Lcom/kieronquinn/monetcompat/core/MonetCompat;)Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    move-result-object v7

    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    move v4, v6

    .line 261
    :goto_4
    iget-object v6, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-static {v6, v5}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$setMonetColors$p(Lcom/kieronquinn/monetcompat/core/MonetCompat;Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;)V

    if-eqz v2, :cond_a

    .line 263
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v6, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v5, v4, v7}, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1$1;-><init>(Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;ZLkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/kieronquinn/monetcompat/core/MonetCompat$updateMonetColorsInternal$1;->label:I

    invoke-static {v2, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_a

    return-object v1

    .line 269
    :cond_a
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
