.class public final Ldev/kdrag0n/monet/colors/CieLab;
.super Ljava/lang/Object;
.source "CieLab.kt"

# interfaces
.implements Ldev/kdrag0n/monet/colors/Color;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/kdrag0n/monet/colors/CieLab$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Ldev/kdrag0n/monet/colors/CieLab$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final L:D

.field private final a:D

.field private final b:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/kdrag0n/monet/colors/CieLab$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/kdrag0n/monet/colors/CieLab$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/kdrag0n/monet/colors/CieLab;->Companion:Ldev/kdrag0n/monet/colors/CieLab$Companion;

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ldev/kdrag0n/monet/colors/CieLab;->L:D

    iput-wide p3, p0, Ldev/kdrag0n/monet/colors/CieLab;->a:D

    iput-wide p5, p0, Ldev/kdrag0n/monet/colors/CieLab;->b:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ldev/kdrag0n/monet/colors/CieLab;

    if-eqz v0, :cond_0

    check-cast p1, Ldev/kdrag0n/monet/colors/CieLab;

    invoke-virtual {p0}, Ldev/kdrag0n/monet/colors/CieLab;->getL()D

    move-result-wide v0

    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/CieLab;->getL()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldev/kdrag0n/monet/colors/CieLab;->getA()D

    move-result-wide v0

    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/CieLab;->getA()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldev/kdrag0n/monet/colors/CieLab;->getB()D

    move-result-wide v0

    invoke-virtual {p1}, Ldev/kdrag0n/monet/colors/CieLab;->getB()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getA()D
    .locals 2

    .line 5
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/CieLab;->a:D

    return-wide v0
.end method

.method public getB()D
    .locals 2

    .line 6
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/CieLab;->b:D

    return-wide v0
.end method

.method public getL()D
    .locals 2

    .line 4
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/CieLab;->L:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Ldev/kdrag0n/monet/colors/CieLab;->getL()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Ldev/kdrag0n/monet/colors/CieLab;->getA()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Ldev/kdrag0n/monet/colors/CieLab;->getB()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toCieXyz()Ldev/kdrag0n/monet/colors/CieXyz;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 11
    sget-object v0, Ldev/kdrag0n/monet/colors/CieLab;->Companion:Ldev/kdrag0n/monet/colors/CieLab$Companion;

    invoke-virtual {p0}, Ldev/kdrag0n/monet/colors/CieLab;->getL()D

    move-result-wide v1

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x405d000000000000L    # 116.0

    div-double/2addr v1, v3

    .line 13
    new-instance v10, Ldev/kdrag0n/monet/colors/CieXyz;

    .line 14
    sget-object v3, Ldev/kdrag0n/monet/colors/Illuminants;->INSTANCE:Ldev/kdrag0n/monet/colors/Illuminants;

    invoke-virtual {v3}, Ldev/kdrag0n/monet/colors/Illuminants;->getD65()Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v3

    invoke-virtual {v3}, Ldev/kdrag0n/monet/colors/CieXyz;->getX()D

    move-result-wide v3

    invoke-virtual {p0}, Ldev/kdrag0n/monet/colors/CieLab;->getA()D

    move-result-wide v5

    const-wide v7, 0x407f400000000000L    # 500.0

    div-double/2addr v5, v7

    add-double/2addr v5, v1

    invoke-static {v0, v5, v6}, Ldev/kdrag0n/monet/colors/CieLab$Companion;->access$fInv(Ldev/kdrag0n/monet/colors/CieLab$Companion;D)D

    move-result-wide v5

    mul-double v4, v3, v5

    .line 15
    sget-object v3, Ldev/kdrag0n/monet/colors/Illuminants;->INSTANCE:Ldev/kdrag0n/monet/colors/Illuminants;

    invoke-virtual {v3}, Ldev/kdrag0n/monet/colors/Illuminants;->getD65()Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v3

    invoke-virtual {v3}, Ldev/kdrag0n/monet/colors/CieXyz;->getY()D

    move-result-wide v6

    invoke-static {v0, v1, v2}, Ldev/kdrag0n/monet/colors/CieLab$Companion;->access$fInv(Ldev/kdrag0n/monet/colors/CieLab$Companion;D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    .line 16
    sget-object v3, Ldev/kdrag0n/monet/colors/Illuminants;->INSTANCE:Ldev/kdrag0n/monet/colors/Illuminants;

    invoke-virtual {v3}, Ldev/kdrag0n/monet/colors/Illuminants;->getD65()Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object v3

    invoke-virtual {v3}, Ldev/kdrag0n/monet/colors/CieXyz;->getZ()D

    move-result-wide v8

    invoke-virtual {p0}, Ldev/kdrag0n/monet/colors/CieLab;->getB()D

    move-result-wide v11

    const-wide/high16 v13, 0x4069000000000000L    # 200.0

    div-double/2addr v11, v13

    sub-double/2addr v1, v11

    invoke-static {v0, v1, v2}, Ldev/kdrag0n/monet/colors/CieLab$Companion;->access$fInv(Ldev/kdrag0n/monet/colors/CieLab$Companion;D)D

    move-result-wide v0

    mul-double/2addr v8, v0

    move-object v3, v10

    .line 13
    invoke-direct/range {v3 .. v9}, Ldev/kdrag0n/monet/colors/CieXyz;-><init>(DDD)V

    return-object v10
.end method

.method public toLinearSrgb()Ldev/kdrag0n/monet/colors/LinearSrgb;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 8
    invoke-virtual {p0}, Ldev/kdrag0n/monet/colors/CieLab;->toCieXyz()Ldev/kdrag0n/monet/colors/CieXyz;

    move-result-object p0

    invoke-virtual {p0}, Ldev/kdrag0n/monet/colors/CieXyz;->toLinearSrgb()Ldev/kdrag0n/monet/colors/LinearSrgb;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CieLab(L="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldev/kdrag0n/monet/colors/CieLab;->getL()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldev/kdrag0n/monet/colors/CieLab;->getA()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldev/kdrag0n/monet/colors/CieLab;->getB()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
