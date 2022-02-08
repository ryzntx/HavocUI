.class public final Lcom/kieronquinn/monetcompat/extensions/Extensions_ColorKt;
.super Ljava/lang/Object;
.source "Extensions+Color.kt"


# direct methods
.method public static final toArgb(Ldev/kdrag0n/monet/colors/Color;)I
    .locals 1
    .param p0    # Ldev/kdrag0n/monet/colors/Color;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$toArgb"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Ldev/kdrag0n/monet/colors/Color;->toLinearSrgb()Ldev/kdrag0n/monet/colors/LinearSrgb;

    move-result-object p0

    invoke-virtual {p0}, Ldev/kdrag0n/monet/colors/LinearSrgb;->toSrgb()Ldev/kdrag0n/monet/colors/Srgb;

    move-result-object p0

    invoke-virtual {p0}, Ldev/kdrag0n/monet/colors/Srgb;->quantize8()I

    move-result p0

    return p0
.end method
