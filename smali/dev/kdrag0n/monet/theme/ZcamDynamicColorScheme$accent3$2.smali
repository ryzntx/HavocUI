.class final Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$accent3$2;
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

    iput-object p1, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$accent3$2;->this$0:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    iput-object p2, p0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$accent3$2;->$targets:Ldev/kdrag0n/monet/theme/ColorScheme;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$accent3$2;->invoke()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 24
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

    move-object/from16 v0, p0

    .line 38
    iget-object v1, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$accent3$2;->this$0:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    invoke-static {v1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->access$getSeedAccent$p(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;)Ldev/kdrag0n/monet/colors/Zcam;

    move-result-object v2

    iget-object v1, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$accent3$2;->this$0:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    invoke-static {v1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->access$getSeedAccent$p(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;)Ldev/kdrag0n/monet/colors/Zcam;

    move-result-object v1

    invoke-virtual {v1}, Ldev/kdrag0n/monet/colors/Zcam;->getHueAngle()D

    move-result-wide v3

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    add-double v11, v3, v5

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3ef

    const/16 v23, 0x0

    invoke-static/range {v2 .. v23}, Ldev/kdrag0n/monet/colors/Zcam;->copy$default(Ldev/kdrag0n/monet/colors/Zcam;DDDDDDDDDLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;ILjava/lang/Object;)Ldev/kdrag0n/monet/colors/Zcam;

    move-result-object v1

    .line 39
    iget-object v2, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$accent3$2;->this$0:Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;

    iget-object v3, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$accent3$2;->$targets:Ldev/kdrag0n/monet/theme/ColorScheme;

    invoke-virtual {v3}, Ldev/kdrag0n/monet/theme/ColorScheme;->getAccent3()Ljava/util/Map;

    move-result-object v3

    iget-object v0, v0, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$accent3$2;->$targets:Ldev/kdrag0n/monet/theme/ColorScheme;

    invoke-virtual {v0}, Ldev/kdrag0n/monet/theme/ColorScheme;->getAccent1()Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v3, v1, v0}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;->access$transformSwatch(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;Ljava/util/Map;Ldev/kdrag0n/monet/colors/Zcam;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
