.class public final Ldev/kdrag0n/monet/colors/CieLab$Companion;
.super Ljava/lang/Object;
.source "CieLab.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/kdrag0n/monet/colors/CieLab;
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
    invoke-direct {p0}, Ldev/kdrag0n/monet/colors/CieLab$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$fInv(Ldev/kdrag0n/monet/colors/CieLab$Companion;D)D
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Ldev/kdrag0n/monet/colors/CieLab$Companion;->fInv(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private final fInv(D)D
    .locals 4

    const-wide v0, 0x3fca7b9611a7b961L    # 0.20689655172413793

    cmpl-double p0, p1, v0

    if-lez p0, :cond_0

    mul-double v0, p1, p1

    mul-double/2addr v0, p1

    goto :goto_0

    :cond_0
    const-wide v0, 0x3fc07004ded20922L    # 0.12841854934601665

    const-wide v2, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    sub-double/2addr p1, v2

    mul-double/2addr v0, p1

    :goto_0
    return-wide v0
.end method
