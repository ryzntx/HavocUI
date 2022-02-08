.class public final Ldev/kdrag0n/monet/colors/Srgb;
.super Ljava/lang/Object;
.source "Srgb.kt"

# interfaces
.implements Ldev/kdrag0n/monet/colors/Color;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/kdrag0n/monet/colors/Srgb$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Ldev/kdrag0n/monet/colors/Srgb$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final b:D

.field private final g:D

.field private final r:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/kdrag0n/monet/colors/Srgb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/kdrag0n/monet/colors/Srgb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/kdrag0n/monet/colors/Srgb;->Companion:Ldev/kdrag0n/monet/colors/Srgb$Companion;

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ldev/kdrag0n/monet/colors/Srgb;->r:D

    iput-wide p3, p0, Ldev/kdrag0n/monet/colors/Srgb;->g:D

    iput-wide p5, p0, Ldev/kdrag0n/monet/colors/Srgb;->b:D

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 18
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 19
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 17
    invoke-direct {p0, v0, v1, p1}, Ldev/kdrag0n/monet/colors/Srgb;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 11

    int-to-double v0, p1

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double v5, v0, v2

    int-to-double p1, p2

    div-double v7, p1, v2

    int-to-double p1, p3

    div-double v9, p1, v2

    move-object v4, p0

    .line 12
    invoke-direct/range {v4 .. v10}, Ldev/kdrag0n/monet/colors/Srgb;-><init>(DDD)V

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

    instance-of v0, p1, Ldev/kdrag0n/monet/colors/Srgb;

    if-eqz v0, :cond_0

    check-cast p1, Ldev/kdrag0n/monet/colors/Srgb;

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Srgb;->r:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/Srgb;->r:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Srgb;->g:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/Srgb;->g:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Srgb;->b:D

    iget-wide p0, p1, Ldev/kdrag0n/monet/colors/Srgb;->b:D

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

.method public final getB()D
    .locals 2

    .line 9
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Srgb;->b:D

    return-wide v0
.end method

.method public final getG()D
    .locals 2

    .line 8
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Srgb;->g:D

    return-wide v0
.end method

.method public final getR()D
    .locals 2

    .line 7
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Srgb;->r:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Srgb;->r:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Srgb;->g:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Srgb;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final quantize8()I
    .locals 5

    .line 27
    sget-object v0, Ldev/kdrag0n/monet/colors/Srgb;->Companion:Ldev/kdrag0n/monet/colors/Srgb$Companion;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Srgb;->r:D

    invoke-static {v0, v1, v2}, Ldev/kdrag0n/monet/colors/Srgb$Companion;->access$quantize8(Ldev/kdrag0n/monet/colors/Srgb$Companion;D)I

    move-result v1

    .line 28
    iget-wide v2, p0, Ldev/kdrag0n/monet/colors/Srgb;->g:D

    invoke-static {v0, v2, v3}, Ldev/kdrag0n/monet/colors/Srgb$Companion;->access$quantize8(Ldev/kdrag0n/monet/colors/Srgb$Companion;D)I

    move-result v2

    .line 29
    iget-wide v3, p0, Ldev/kdrag0n/monet/colors/Srgb;->b:D

    invoke-static {v0, v3, v4}, Ldev/kdrag0n/monet/colors/Srgb$Companion;->access$quantize8(Ldev/kdrag0n/monet/colors/Srgb$Companion;D)I

    move-result p0

    .line 26
    invoke-static {v1, v2, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public toLinearSrgb()Ldev/kdrag0n/monet/colors/LinearSrgb;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    sget-object v0, Ldev/kdrag0n/monet/colors/LinearSrgb;->Companion:Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;

    invoke-virtual {v0, p0}, Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;->toLinearSrgb(Ldev/kdrag0n/monet/colors/Srgb;)Ldev/kdrag0n/monet/colors/LinearSrgb;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Srgb(r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Srgb;->r:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Srgb;->g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Srgb;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
