.class public final Ldev/kdrag0n/monet/colors/CieXyz$Companion;
.super Ljava/lang/Object;
.source "CieXyz.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/kdrag0n/monet/colors/CieXyz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ldev/kdrag0n/monet/colors/CieXyz$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toCieXyz(Ldev/kdrag0n/monet/colors/LinearSrgb;)Ldev/kdrag0n/monet/colors/CieXyz;
    .locals 11
    .param p1    # Ldev/kdrag0n/monet/colors/LinearSrgb;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "$this$toCieXyz"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance p0, Ldev/kdrag0n/monet/colors/CieXyz;

    .line 22
    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/LinearSrgb;->getR()D

    move-result-wide v0

    const-wide v2, 0x3fda65af8741a841L    # 0.4124564

    mul-double/2addr v0, v2

    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/LinearSrgb;->getG()D

    move-result-wide v2

    const-wide v4, 0x3fd6e286ddd532cdL    # 0.3575761

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/LinearSrgb;->getB()D

    move-result-wide v2

    const-wide v4, 0x3fc7189374bc6a7fL    # 0.1804375

    mul-double/2addr v2, v4

    add-double v1, v0, v2

    .line 23
    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/LinearSrgb;->getR()D

    move-result-wide v3

    const-wide v5, 0x3fcb38dd971f6bd6L    # 0.2126729

    mul-double/2addr v3, v5

    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/LinearSrgb;->getG()D

    move-result-wide v5

    const-wide v7, 0x3fe6e286ddd532cdL    # 0.7151522

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/LinearSrgb;->getB()D

    move-result-wide v5

    const-wide v7, 0x3fb27a0f9096bb99L    # 0.072175

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    .line 24
    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/LinearSrgb;->getR()D

    move-result-wide v5

    const-wide v7, 0x3f93cc4410d1089cL    # 0.0193339

    mul-double/2addr v5, v7

    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/LinearSrgb;->getG()D

    move-result-wide v7

    const-wide v9, 0x3fbe835dedf1e083L    # 0.119192

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/LinearSrgb;->getB()D

    move-result-wide v7

    const-wide v9, 0x3fee68e424d8269dL    # 0.9503041

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    move-object v0, p0

    .line 21
    invoke-direct/range {v0 .. v6}, Ldev/kdrag0n/monet/colors/CieXyz;-><init>(DDD)V

    return-object p0
.end method
