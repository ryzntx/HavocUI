.class public final Ldev/kdrag0n/monet/colors/Srgb$Companion;
.super Ljava/lang/Object;
.source "Srgb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/kdrag0n/monet/colors/Srgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ldev/kdrag0n/monet/colors/Srgb$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$quantize8(Ldev/kdrag0n/monet/colors/Srgb$Companion;D)I
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Ldev/kdrag0n/monet/colors/Srgb$Companion;->quantize8(D)I

    move-result p0

    return p0
.end method

.method private final quantize8(D)I
    .locals 2

    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr p1, v0

    .line 35
    invoke-static {p1, p2}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p0

    const/4 p1, 0x0

    const/16 p2, 0xff

    invoke-static {p0, p1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    return p0
.end method
