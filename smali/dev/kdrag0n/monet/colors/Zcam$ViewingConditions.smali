.class public final Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;
.super Ljava/lang/Object;
.source "Zcam.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/kdrag0n/monet/colors/Zcam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewingConditions"
.end annotation


# instance fields
.field private final F_b:D

.field private final F_l:D

.field private final F_s:D

.field private final Iz_coeff:D

.field private final Iz_w:D

.field private final L_a:D

.field private final Mz_denom:D

.field private final Qz_denom:D

.field private final Qz_w:D

.field private final Sz_coeff:D

.field private final Y_b:D

.field private final ez_coeff:D

.field private final referenceWhite:Ldev/kdrag0n/monet/colors/CieXyz;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final whiteLuminance:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(DDDLdev/kdrag0n/monet/colors/CieXyz;D)V
    .locals 1
    .param p7    # Ldev/kdrag0n/monet/colors/CieXyz;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "referenceWhite"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->F_s:D

    iput-wide p3, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->L_a:D

    iput-wide p5, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Y_b:D

    iput-object p7, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->referenceWhite:Ldev/kdrag0n/monet/colors/CieXyz;

    iput-wide p8, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->whiteLuminance:D

    .line 128
    invoke-virtual {p7}, Ldev/kdrag0n/monet/colors/CieXyz;->getY()D

    move-result-wide p1

    div-double/2addr p5, p1

    invoke-static {p5, p6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iput-wide p1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->F_b:D

    .line 129
    iget-wide p1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->L_a:D

    invoke-static {p1, p2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide p1

    const-wide p3, 0x3fc5e353f7ced917L    # 0.171

    mul-double/2addr p1, p3

    iget-wide p3, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->L_a:D

    const-wide p5, -0x3feaaaaaaaaaaaabL    # -5.333333333333333

    mul-double/2addr p3, p5

    invoke-static {p3, p4}, Ljava/lang/Math;->exp(D)D

    move-result-wide p3

    const-wide/high16 p5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p5, p3

    mul-double/2addr p1, p5

    iput-wide p1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->F_l:D

    .line 131
    sget-object p1, Ldev/kdrag0n/monet/colors/Zcam;->Companion:Ldev/kdrag0n/monet/colors/Zcam$Companion;

    iget-object p2, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->referenceWhite:Ldev/kdrag0n/monet/colors/CieXyz;

    invoke-static {p1, p2}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->access$xyzToIzazbz(Ldev/kdrag0n/monet/colors/Zcam$Companion;Ldev/kdrag0n/monet/colors/CieXyz;)[D

    move-result-object p1

    const/4 p2, 0x0

    aget-wide p1, p1, p2

    iput-wide p1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Iz_w:D

    .line 133
    iget-wide p1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->F_s:D

    const-wide p3, 0x400199999999999aL    # 2.2

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    const-wide p3, 0x40a5180000000000L    # 2700.0

    mul-double/2addr p1, p3

    iget-wide p3, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->F_b:D

    const-wide/high16 p5, 0x3fe0000000000000L    # 0.5

    invoke-static {p3, p4, p5, p6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    mul-double/2addr p1, p3

    iget-wide p3, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->F_l:D

    const-wide p5, 0x3fc999999999999aL    # 0.2

    invoke-static {p3, p4, p5, p6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    mul-double/2addr p1, p3

    iput-wide p1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Iz_coeff:D

    .line 134
    iget-wide p1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Iz_w:D

    const-wide p3, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    iget-wide p3, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->F_b:D

    const-wide p7, 0x3fb999999999999aL    # 0.1

    invoke-static {p3, p4, p7, p8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    mul-double/2addr p1, p3

    iput-wide p1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Mz_denom:D

    .line 135
    iget-wide p1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->F_l:D

    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    iput-wide p1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->ez_coeff:D

    .line 136
    iget-wide p1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->F_b:D

    const-wide p3, 0x3fbeb851eb851eb8L    # 0.12

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    iput-wide p1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Qz_denom:D

    .line 137
    iget-wide p1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->F_l:D

    const-wide p3, 0x3fe3333333333333L    # 0.6

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    iput-wide p1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Sz_coeff:D

    .line 140
    sget-object p1, Ldev/kdrag0n/monet/colors/Zcam;->Companion:Ldev/kdrag0n/monet/colors/Zcam$Companion;

    iget-wide p2, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Iz_w:D

    invoke-static {p1, p2, p3, p0}, Ldev/kdrag0n/monet/colors/Zcam$Companion;->access$izToQz(Ldev/kdrag0n/monet/colors/Zcam$Companion;DLdev/kdrag0n/monet/colors/Zcam$ViewingConditions;)D

    move-result-wide p1

    iput-wide p1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Qz_w:D

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

    instance-of v0, p1, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    if-eqz v0, :cond_0

    check-cast p1, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->F_s:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->F_s:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->L_a:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->L_a:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Y_b:D

    iget-wide v2, p1, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Y_b:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->referenceWhite:Ldev/kdrag0n/monet/colors/CieXyz;

    iget-object v1, p1, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->referenceWhite:Ldev/kdrag0n/monet/colors/CieXyz;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->whiteLuminance:D

    iget-wide p0, p1, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->whiteLuminance:D

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

.method public final getEz_coeff$com_kieronquinn_library_monetcompat()D
    .locals 2

    .line 135
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->ez_coeff:D

    return-wide v0
.end method

.method public final getF_s()D
    .locals 2

    .line 113
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->F_s:D

    return-wide v0
.end method

.method public final getIz_coeff$com_kieronquinn_library_monetcompat()D
    .locals 2

    .line 133
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Iz_coeff:D

    return-wide v0
.end method

.method public final getIz_w$com_kieronquinn_library_monetcompat()D
    .locals 2

    .line 131
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Iz_w:D

    return-wide v0
.end method

.method public final getMz_denom$com_kieronquinn_library_monetcompat()D
    .locals 2

    .line 134
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Mz_denom:D

    return-wide v0
.end method

.method public final getQz_denom$com_kieronquinn_library_monetcompat()D
    .locals 2

    .line 136
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Qz_denom:D

    return-wide v0
.end method

.method public final getQz_w$com_kieronquinn_library_monetcompat()D
    .locals 2

    .line 140
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Qz_w:D

    return-wide v0
.end method

.method public final getSz_coeff$com_kieronquinn_library_monetcompat()D
    .locals 2

    .line 137
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Sz_coeff:D

    return-wide v0
.end method

.method public final getWhiteLuminance()D
    .locals 2

    .line 122
    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->whiteLuminance:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->F_s:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->L_a:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Y_b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->referenceWhite:Ldev/kdrag0n/monet/colors/CieXyz;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->whiteLuminance:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewingConditions(F_s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->F_s:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", L_a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->L_a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", Y_b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->Y_b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", referenceWhite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->referenceWhite:Ldev/kdrag0n/monet/colors/CieXyz;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", whiteLuminance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldev/kdrag0n/monet/colors/Zcam$ViewingConditions;->whiteLuminance:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
