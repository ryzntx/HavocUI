.class public final enum Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;
.super Ljava/lang/Enum;
.source "Zcam.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/kdrag0n/monet/colors/Zcam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChromaSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

.field public static final enum BLACKNESS:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

.field public static final enum CHROMA:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

.field public static final enum COLORFULNESS:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

.field public static final enum SATURATION:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

.field public static final enum VIVIDNESS:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

.field public static final enum WHITENESS:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    new-instance v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    const-string v2, "CHROMA"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->CHROMA:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    aput-object v1, v0, v3

    new-instance v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    const-string v2, "COLORFULNESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->COLORFULNESS:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    aput-object v1, v0, v3

    new-instance v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    const-string v2, "SATURATION"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->SATURATION:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    aput-object v1, v0, v3

    new-instance v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    const-string v2, "VIVIDNESS"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->VIVIDNESS:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    aput-object v1, v0, v3

    new-instance v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    const-string v2, "BLACKNESS"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->BLACKNESS:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    aput-object v1, v0, v3

    new-instance v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    const-string v2, "WHITENESS"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->WHITENESS:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    aput-object v1, v0, v3

    sput-object v0, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->$VALUES:[Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;
    .locals 1

    const-class v0, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    return-object p0
.end method

.method public static values()[Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;
    .locals 1

    sget-object v0, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->$VALUES:[Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    invoke-virtual {v0}, [Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    return-object v0
.end method
