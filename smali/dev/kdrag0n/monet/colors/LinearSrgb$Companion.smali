.class public final Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;
.super Ljava/lang/Object;
.source "LinearSrgb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/kdrag0n/monet/colors/LinearSrgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$f(Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;D)D
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;->f(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private final f(D)D
    .locals 4

    const-wide v0, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double p0, p1, v0

    if-ltz p0, :cond_0

    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v2, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    .line 23
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr p0, v0

    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr p0, v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    mul-double p0, p1, v0

    :goto_0
    return-wide p0
.end method

.method private final fInv(D)D
    .locals 2

    const-wide v0, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpl-double p0, p1, v0

    if-ltz p0, :cond_0

    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr p1, v0

    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr p1, v0

    const-wide v0, 0x4003333333333333L    # 2.4

    .line 30
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    div-double p0, p1, v0

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public final toLinearSrgb(Ldev/kdrag0n/monet/colors/Srgb;)Ldev/kdrag0n/monet/colors/LinearSrgb;
    .locals 8
    .param p1    # Ldev/kdrag0n/monet/colors/Srgb;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$toLinearSrgb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ldev/kdrag0n/monet/colors/LinearSrgb;

    .line 37
    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/Srgb;->getR()D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;->fInv(D)D

    move-result-wide v2

    .line 38
    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/Srgb;->getG()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;->fInv(D)D

    move-result-wide v4

    .line 39
    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/Srgb;->getB()D

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;->fInv(D)D

    move-result-wide v6

    move-object v1, v0

    .line 36
    invoke-direct/range {v1 .. v7}, Ldev/kdrag0n/monet/colors/LinearSrgb;-><init>(DDD)V

    return-object v0
.end method
