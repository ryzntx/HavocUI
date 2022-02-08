.class final Lcom/kieronquinn/monetcompat/core/MonetCompat$defaultColorScheme$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MonetCompat.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kieronquinn/monetcompat/core/MonetCompat;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;


# direct methods
.method constructor <init>(Lcom/kieronquinn/monetcompat/core/MonetCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$defaultColorScheme$2;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 220
    iget-object p0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$defaultColorScheme$2;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-static {p0}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->access$getDefaultColors(Lcom/kieronquinn/monetcompat/core/MonetCompat;)Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/kieronquinn/monetcompat/core/MonetCompat$defaultColorScheme$2;->invoke()Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    move-result-object p0

    return-object p0
.end method
