.class public final Lcom/android/systemui/custom/MonetWatcher$1;
.super Ljava/lang/Object;
.source "MonetWatcher.kt"

# interfaces
.implements Lcom/kieronquinn/monetcompat/interfaces/MonetColorsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/custom/MonetWatcher;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/custom/MonetWatcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/custom/MonetWatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/android/systemui/custom/MonetWatcher$1;->this$0:Lcom/android/systemui/custom/MonetWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMonetColorsChanged(Lcom/kieronquinn/monetcompat/core/MonetCompat;Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;Z)V
    .locals 0
    .param p1    # Lcom/kieronquinn/monetcompat/core/MonetCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p3, "monet"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "monetColors"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object p0, p0, Lcom/android/systemui/custom/MonetWatcher$1;->this$0:Lcom/android/systemui/custom/MonetWatcher;

    invoke-static {p0, p2}, Lcom/android/systemui/custom/MonetWatcher;->access$update(Lcom/android/systemui/custom/MonetWatcher;Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;)V

    return-void
.end method
