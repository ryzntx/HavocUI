.class final Lcom/kieronquinn/monetcompat/core/MonetCompat$getWallpaperPrimaryColorCompat$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "MonetCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kieronquinn/monetcompat/core/MonetCompat;->getWallpaperPrimaryColorCompat(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.kieronquinn.monetcompat.core.MonetCompat"
    f = "MonetCompat.kt"
    l = {
        0x21a,
        0x21b
    }
    m = "getWallpaperPrimaryColorCompat"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;


# direct methods
.method constructor <init>(Lcom/kieronquinn/monetcompat/core/MonetCompat;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getWallpaperPrimaryColorCompat$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getWallpaperPrimaryColorCompat$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getWallpaperPrimaryColorCompat$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getWallpaperPrimaryColorCompat$1;->label:I

    iget-object p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$getWallpaperPrimaryColorCompat$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-virtual {p1, p0}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->getWallpaperPrimaryColorCompat(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
