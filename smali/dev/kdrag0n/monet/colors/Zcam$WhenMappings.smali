.class public final synthetic Ldev/kdrag0n/monet/colors/Zcam$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;->values()[Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ldev/kdrag0n/monet/colors/Zcam$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;->BRIGHTNESS:Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Ldev/kdrag0n/monet/colors/Zcam$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;->LIGHTNESS:Ldev/kdrag0n/monet/colors/Zcam$LuminanceSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    invoke-static {}, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->values()[Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ldev/kdrag0n/monet/colors/Zcam$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->CHROMA:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Ldev/kdrag0n/monet/colors/Zcam$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->COLORFULNESS:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Ldev/kdrag0n/monet/colors/Zcam$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->SATURATION:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x3

    aput v3, v0, v1

    sget-object v0, Ldev/kdrag0n/monet/colors/Zcam$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->VIVIDNESS:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x4

    aput v3, v0, v1

    sget-object v0, Ldev/kdrag0n/monet/colors/Zcam$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->BLACKNESS:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x5

    aput v3, v0, v1

    sget-object v0, Ldev/kdrag0n/monet/colors/Zcam$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->WHITENESS:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x6

    aput v3, v0, v1

    invoke-static {}, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->values()[Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ldev/kdrag0n/monet/colors/Zcam$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;->COLORFULNESS:Ldev/kdrag0n/monet/colors/Zcam$ChromaSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    return-void
.end method
