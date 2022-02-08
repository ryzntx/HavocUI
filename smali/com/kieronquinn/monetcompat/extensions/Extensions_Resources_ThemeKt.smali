.class public final Lcom/kieronquinn/monetcompat/extensions/Extensions_Resources_ThemeKt;
.super Ljava/lang/Object;
.source "Extensions+Resources_Theme.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensions+Resources_Theme.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions+Resources_Theme.kt\ncom/kieronquinn/monetcompat/extensions/Extensions_Resources_ThemeKt\n+ 2 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n*L\n1#1,36:1\n232#2,3:37\n*E\n*S KotlinDebug\n*F\n+ 1 Extensions+Resources_Theme.kt\ncom/kieronquinn/monetcompat/extensions/Extensions_Resources_ThemeKt\n*L\n21#1,3:37\n*E\n"
.end annotation


# direct methods
.method public static final getAttributeColor(Landroid/content/res/Resources$Theme;II)Ljava/lang/Integer;
    .locals 2
    .param p0    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$this$getAttributeColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const-string p1, "obtainStyledAttributes(\n\u2026tArrayOf(attribute)\n    )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 38
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method public static synthetic getAttributeColor$default(Landroid/content/res/Resources$Theme;IIILjava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 18
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/kieronquinn/monetcompat/extensions/Extensions_Resources_ThemeKt;->getAttributeColor(Landroid/content/res/Resources$Theme;II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
