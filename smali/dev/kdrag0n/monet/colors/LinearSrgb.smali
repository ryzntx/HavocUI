.class public final Ldev/kdrag0n/monet/colors/LinearSrgb;
.super Ljava/lang/Object;
.source "LinearSrgb.kt"

# interfaces
.implements Ldev/kdrag0n/monet/colors/Color;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;
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

    new-instance v0, Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/kdrag0n/monet/colors/LinearSrgb;->Companion:Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->r:D

    iput-wide p3, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->g:D

    iput-wide p5, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->b:D

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

    instance-of v0, p1, Ldev/kdrag0n/monet/colors/LinearSrgb;

    if-eqz v0, :cond_0

    check-cast p1, Ldev/kdrag0n/monet/colors/LinearSrgb;

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->r:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/LinearSrgb;->r:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->g:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/LinearSrgb;->g:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->b:D

    iget-wide p0, p1, Ldev/kdrag0n/monet/colors/LinearSrgb;->b:D

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

    .line 8
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->b:D

    return-wide v0
.end method

.method public final getG()D
    .locals 2

    .line 7
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->g:D

    return-wide v0
.end method

.method public final getR()D
    .locals 2

    .line 6
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->r:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->r:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->g:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toLinearSrgb()Ldev/kdrag0n/monet/colors/LinearSrgb;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public final toSrgb()Ldev/kdrag0n/monet/colors/Srgb;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    sget-object v0, Ldev/kdrag0n/monet/colors/LinearSrgb;->Companion:Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;

    new-instance v8, Ldev/kdrag0n/monet/colors/Srgb;

    .line 14
    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->r:D

    invoke-static {v0, v1, v2}, Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;->access$f(Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;D)D

    move-result-wide v2

    .line 15
    iget-wide v4, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->g:D

    invoke-static {v0, v4, v5}, Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;->access$f(Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;D)D

    move-result-wide v4

    .line 16
    iget-wide v6, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->b:D

    invoke-static {v0, v6, v7}, Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;->access$f(Ldev/kdrag0n/monet/colors/LinearSrgb$Companion;D)D

    move-result-wide v6

    move-object v1, v8

    .line 13
    invoke-direct/range {v1 .. v7}, Ldev/kdrag0n/monet/colors/Srgb;-><init>(DDD)V

    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinearSrgb(r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->r:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/LinearSrgb;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
