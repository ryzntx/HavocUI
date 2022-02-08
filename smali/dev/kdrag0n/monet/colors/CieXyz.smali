.class public final Ldev/kdrag0n/monet/colors/CieXyz;
.super Ljava/lang/Object;
.source "CieXyz.kt"

# interfaces
.implements Ldev/kdrag0n/monet/colors/Color;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/kdrag0n/monet/colors/CieXyz$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Ldev/kdrag0n/monet/colors/CieXyz$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final x:D

.field private final y:D

.field private final z:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/kdrag0n/monet/colors/CieXyz$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/kdrag0n/monet/colors/CieXyz$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/kdrag0n/monet/colors/CieXyz;->Companion:Ldev/kdrag0n/monet/colors/CieXyz$Companion;

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ldev/kdrag0n/monet/colors/CieXyz;->x:D

    iput-wide p3, p0, Ldev/kdrag0n/monet/colors/CieXyz;->y:D

    iput-wide p5, p0, Ldev/kdrag0n/monet/colors/CieXyz;->z:D

    return-void
.end method


# virtual methods
.method public final div(D)Ldev/kdrag0n/monet/colors/CieXyz;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 17
    new-instance v7, Ldev/kdrag0n/monet/colors/CieXyz;

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/CieXyz;->x:D

    div-double v1, v0, p1

    iget-wide v3, p0, Ldev/kdrag0n/monet/colors/CieXyz;->y:D

    div-double/2addr v3, p1

    iget-wide v5, p0, Ldev/kdrag0n/monet/colors/CieXyz;->z:D

    div-double/2addr v5, p1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ldev/kdrag0n/monet/colors/CieXyz;-><init>(DDD)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ldev/kdrag0n/monet/colors/CieXyz;

    if-eqz v0, :cond_0

    check-cast p1, Ldev/kdrag0n/monet/colors/CieXyz;

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/CieXyz;->x:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/CieXyz;->x:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/CieXyz;->y:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/CieXyz;->y:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/CieXyz;->z:D

    iget-wide p0, p1, Ldev/kdrag0n/monet/colors/CieXyz;->z:D

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

.method public final getX()D
    .locals 2

    .line 4
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/CieXyz;->x:D

    return-wide v0
.end method

.method public final getY()D
    .locals 2

    .line 5
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/CieXyz;->y:D

    return-wide v0
.end method

.method public final getZ()D
    .locals 2

    .line 6
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/CieXyz;->z:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/CieXyz;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/CieXyz;->y:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/CieXyz;->z:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final times(D)Ldev/kdrag0n/monet/colors/CieXyz;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    new-instance v7, Ldev/kdrag0n/monet/colors/CieXyz;

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/CieXyz;->x:D

    mul-double v1, v0, p1

    iget-wide v3, p0, Ldev/kdrag0n/monet/colors/CieXyz;->y:D

    mul-double/2addr v3, p1

    iget-wide v5, p0, Ldev/kdrag0n/monet/colors/CieXyz;->z:D

    mul-double/2addr v5, p1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ldev/kdrag0n/monet/colors/CieXyz;-><init>(DDD)V

    return-object v7
.end method

.method public toLinearSrgb()Ldev/kdrag0n/monet/colors/LinearSrgb;
    .locals 14
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 9
    new-instance v7, Ldev/kdrag0n/monet/colors/LinearSrgb;

    .line 10
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/CieXyz;->x:D

    const-wide v2, 0x4009ec7340697c9bL    # 3.2404542

    mul-double/2addr v2, v0

    iget-wide v4, p0, Ldev/kdrag0n/monet/colors/CieXyz;->y:D

    const-wide v8, -0x400767e175d13d75L    # -1.5371385

    mul-double/2addr v8, v4

    add-double/2addr v2, v8

    iget-wide v8, p0, Ldev/kdrag0n/monet/colors/CieXyz;->z:D

    const-wide v10, -0x4020180fc13e2351L    # -0.4985314

    mul-double/2addr v10, v8

    add-double/2addr v2, v10

    const-wide v10, -0x4010fbc5de9c022aL    # -0.969266

    mul-double/2addr v10, v0

    const-wide v12, 0x3ffe0423e68f15b2L    # 1.8760108

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    const-wide v12, 0x3fa546d3f9e7b80bL    # 0.041556

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    const-wide v12, 0x3fac7d4aae79fb6fL    # 0.0556434

    mul-double/2addr v0, v12

    const-wide v12, -0x4035e27ab3fb44afL    # -0.2040259

    mul-double/2addr v4, v12

    add-double/2addr v0, v4

    const-wide v4, 0x3ff0ea64f8a81ceaL    # 1.0572252

    mul-double/2addr v8, v4

    add-double v5, v0, v8

    move-object v0, v7

    move-wide v1, v2

    move-wide v3, v10

    .line 9
    invoke-direct/range {v0 .. v6}, Ldev/kdrag0n/monet/colors/LinearSrgb;-><init>(DDD)V

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CieXyz(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/CieXyz;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/CieXyz;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/CieXyz;->z:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
