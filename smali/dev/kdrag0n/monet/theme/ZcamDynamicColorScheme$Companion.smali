.class public final Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$Companion;
.super Ljava/lang/Object;
.source "ZcamDynamicColorScheme.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isInGamut(Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$Companion;Ldev/kdrag0n/monet/colors/LinearSrgb;)Z
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Ldev/kdrag0n/monet/theme/ZcamDynamicColorScheme$Companion;->isInGamut(Ldev/kdrag0n/monet/colors/LinearSrgb;)Z

    move-result p0

    return p0
.end method

.method private final isInGamut(Ldev/kdrag0n/monet/colors/LinearSrgb;)Z
    .locals 6

    .line 198
    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/LinearSrgb;->getR()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/LinearSrgb;->getG()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/LinearSrgb;->getB()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    .line 199
    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/LinearSrgb;->getR()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, v4

    if-gtz p0, :cond_0

    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/LinearSrgb;->getG()D

    move-result-wide v0

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_0

    cmpg-double p0, v0, v4

    if-gtz p0, :cond_0

    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/LinearSrgb;->getB()D

    move-result-wide p0

    cmpl-double v0, p0, v2

    if-ltz v0, :cond_0

    cmpg-double p0, p0, v4

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
