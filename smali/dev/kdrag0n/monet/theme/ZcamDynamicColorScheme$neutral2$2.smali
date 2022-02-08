.class final Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$neutral2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ZcamDynamicColorScheme.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;-><init>(Ldev/kdrag0n/monet/theme/ColorScheme;Ldev/kdrag0n/monet/colors/Color;DLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "+",
        "Ldev/kdrag0n/monet/colors/Color;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $targets:Ldev/kdrag0n/monet/theme/ColorScheme;

.field final synthetic this$0:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;


# direct methods
.method constructor <init>(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;Ldev/kdrag0n/monet/theme/ColorScheme;)V
    .locals 0

    iput-object p1, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$neutral2$2;->this$0:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    iput-object p2, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$neutral2$2;->$targets:Ldev/kdrag0n/monet/theme/ColorScheme;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$neutral2$2;->invoke()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldev/kdrag0n/monet/colors/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 49
    iget-object v0, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$neutral2$2;->this$0:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    iget-object v1, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$neutral2$2;->$targets:Ldev/kdrag0n/monet/theme/ColorScheme;

    invoke-virtual {v1}, Ldev/kdrag0n/monet/theme/ColorScheme;->getNeutral2()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$neutral2$2;->this$0:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    invoke-static {v2}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->access$getSeedNeutral$p(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;)Ldev/kdrag0n/monet/colors/Zcam;

    move-result-object v2

    iget-object p0, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$neutral2$2;->$targets:Ldev/kdrag0n/monet/theme/ColorScheme;

    invoke-virtual {p0}, Ldev/kdrag0n/monet/theme/ColorScheme;->getNeutral1()Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->access$transformSwatch(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;Ljava/util/Map;Ldev/kdrag0n/monet/colors/Zcam;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
