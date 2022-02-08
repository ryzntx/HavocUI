.class public final enum Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;
.super Ljava/lang/Enum;
.source "Zcam.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/kdrag0n/monet/colors/Zcam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LuminanceSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;

.field public static final enum BRIGHTNESS:Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;

.field public static final enum LIGHTNESS:Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;

    new-instance v1, Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;

    const-string v2, "BRIGHTNESS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;->BRIGHTNESS:Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;

    aput-object v1, v0, v3

    new-instance v1, Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;

    const-string v2, "LIGHTNESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;->LIGHTNESS:Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;

    aput-object v1, v0, v3

    sput-object v0, Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;->$VALUES:[Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;
    .locals 1

    const-class v0, Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;

    return-object p0
.end method

.method public static values()[Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;
    .locals 1

    sget-object v0, Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;->$VALUES:[Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;

    invoke-virtual {v0}, [Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;

    return-object v0
.end method
