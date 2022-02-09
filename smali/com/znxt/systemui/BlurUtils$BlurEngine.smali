.class public final enum Lcom/znxt/systemui/BlurUtils$BlurEngine;
.super Ljava/lang/Enum;
.source "BlurUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/znxt/systemui/BlurUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlurEngine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/znxt/systemui/BlurUtils$BlurEngine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/znxt/systemui/BlurUtils$BlurEngine;

.field public static final enum FastBlur:Lcom/znxt/systemui/BlurUtils$BlurEngine;

.field public static final enum RenderScriptBlur:Lcom/znxt/systemui/BlurUtils$BlurEngine;

.field public static final enum StackBlur:Lcom/znxt/systemui/BlurUtils$BlurEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 34
    new-instance v0, Lcom/znxt/systemui/BlurUtils$BlurEngine;

    const-string v1, "RenderScriptBlur"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/znxt/systemui/BlurUtils$BlurEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/znxt/systemui/BlurUtils$BlurEngine;->RenderScriptBlur:Lcom/znxt/systemui/BlurUtils$BlurEngine;

    .line 35
    new-instance v1, Lcom/znxt/systemui/BlurUtils$BlurEngine;

    const-string v3, "StackBlur"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/znxt/systemui/BlurUtils$BlurEngine;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/znxt/systemui/BlurUtils$BlurEngine;->StackBlur:Lcom/znxt/systemui/BlurUtils$BlurEngine;

    .line 36
    new-instance v3, Lcom/znxt/systemui/BlurUtils$BlurEngine;

    const-string v5, "FastBlur"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/znxt/systemui/BlurUtils$BlurEngine;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/znxt/systemui/BlurUtils$BlurEngine;->FastBlur:Lcom/znxt/systemui/BlurUtils$BlurEngine;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/znxt/systemui/BlurUtils$BlurEngine;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 33
    sput-object v5, Lcom/znxt/systemui/BlurUtils$BlurEngine;->$VALUES:[Lcom/znxt/systemui/BlurUtils$BlurEngine;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/znxt/systemui/BlurUtils$BlurEngine;
    .locals 1

    .line 33
    const-class v0, Lcom/znxt/systemui/BlurUtils$BlurEngine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/znxt/systemui/BlurUtils$BlurEngine;

    return-object p0
.end method

.method public static values()[Lcom/znxt/systemui/BlurUtils$BlurEngine;
    .locals 1

    .line 33
    sget-object v0, Lcom/znxt/systemui/BlurUtils$BlurEngine;->$VALUES:[Lcom/znxt/systemui/BlurUtils$BlurEngine;

    invoke-virtual {v0}, [Lcom/znxt/systemui/BlurUtils$BlurEngine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/znxt/systemui/BlurUtils$BlurEngine;

    return-object v0
.end method
