.class final Lcom/kieronquinn/monetcompat/core/MonetCompat$getAvailableWallpaperColors$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MonetCompat.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kieronquinn/monetcompat/core/MonetCompat;->getAvailableWallpaperColors(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Integer;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.kieronquinn.monetcompat.core.MonetCompat$getAvailableWallpaperColors$2"
    f = "MonetCompat.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;


# direct methods
.method constructor <init>(Lcom/kieronquinn/monetcompat/core/MonetCompat;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getAvailableWallpaperColors$2;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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

    new-instance p1, Lcom/kieronquinn/monetcompat/core/MonetCompat$getAvailableWallpaperColors$2;

    iget-object p0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getAvailableWallpaperColors$2;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-direct {p1, p0, p2}, Lcom/kieronquinn/monetcompat/core/MonetCompat$getAvailableWallpaperColors$2;-><init>(Lcom/kieronquinn/monetcompat/core/MonetCompat;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kieronquinn/monetcompat/core/MonetCompat$getAvailableWallpaperColors$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getAvailableWallpaperColors$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat$getAvailableWallpaperColors$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 550
    iget v0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getAvailableWallpaperColors$2;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 552
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 553
    iget-object p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getAvailableWallpaperColors$2;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-static {p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$getWallpaperManager$p(Lcom/kieronquinn/monetcompat/core/MonetCompat;)Landroid/app/WallpaperManager;

    move-result-object p1

    sget-object v0, Lcom/kieronquinn/monetcompat/core/MonetCompat;->Companion:Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;

    invoke-virtual {v0}, Lcom/kieronquinn/monetcompat/core/MonetCompat$Companion;->getWallpaperSource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 554
    iget-object p0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getAvailableWallpaperColors$2;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-static {p0, p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$getColorOptions(Lcom/kieronquinn/monetcompat/core/MonetCompat;Landroid/app/WallpaperColors;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 556
    :cond_0
    invoke-static {}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$getPaletteCompatEnabled$cp()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 557
    iget-object p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getAvailableWallpaperColors$2;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-static {p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$getWallpaperManager$p(Lcom/kieronquinn/monetcompat/core/MonetCompat;)Landroid/app/WallpaperManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 558
    iget-object p0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getAvailableWallpaperColors$2;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    if-eqz p1, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object p1

    const-string v0, "Palette.from((wallpaper \u2026wable).bitmap).generate()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$getColorOptions(Lcom/kieronquinn/monetcompat/core/MonetCompat;Landroidx/palette/graphics/Palette;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object v1

    .line 551
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
