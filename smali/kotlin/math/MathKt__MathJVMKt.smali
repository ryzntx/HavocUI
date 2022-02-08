.class Lkotlin/math/MathKt__MathJVMKt;
.super Lkotlin/math/MathKt__MathHKt;
.source "MathJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMathJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MathJVM.kt\nkotlin/math/MathKt__MathJVMKt\n*L\n1#1,1259:1\n*E\n"
.end annotation


# direct methods
.method public static roundToInt(D)I
    .locals 3

    .line 602
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7fffffff

    int-to-double v1, v0

    cmpl-double v1, p0, v1

    const/high16 v2, -0x80000000

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v0, v2

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 605
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int v0, p0

    :goto_0
    return v0

    .line 602
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot round NaN value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static roundToInt(F)I
    .locals 1

    .line 1132
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot round NaN value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
