.class public final Ldev/kdrag0n/monet/colors/Illuminants;
.super Ljava/lang/Object;
.source "Illuminants.kt"


# static fields
.field private static final D65:Ldev/kdrag0n/monet/colors/CieXyz;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Ldev/kdrag0n/monet/colors/Illuminants;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 3
    new-instance v0, Ldev/kdrag0n/monet/colors/Illuminants;

    invoke-direct {v0}, Ldev/kdrag0n/monet/colors/Illuminants;-><init>()V

    sput-object v0, Ldev/kdrag0n/monet/colors/Illuminants;->INSTANCE:Ldev/kdrag0n/monet/colors/Illuminants;

    .line 4
    new-instance v0, Ldev/kdrag0n/monet/colors/CieXyz;

    const-wide v2, 0x3fee6a400fba8827L    # 0.95047

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3ff16bd9018e7579L    # 1.08883

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ldev/kdrag0n/monet/colors/CieXyz;-><init>(DDD)V

    sput-object v0, Ldev/kdrag0n/monet/colors/Illuminants;->D65:Ldev/kdrag0n/monet/colors/CieXyz;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getD65()Ldev/kdrag0n/monet/colors/CieXyz;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    sget-object p0, Ldev/kdrag0n/monet/colors/Illuminants;->D65:Ldev/kdrag0n/monet/colors/CieXyz;

    return-object p0
.end method
