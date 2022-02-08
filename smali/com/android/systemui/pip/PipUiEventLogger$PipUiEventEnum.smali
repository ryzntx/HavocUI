.class public final enum Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;
.super Ljava/lang/Enum;
.source "PipUiEventLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/PipUiEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PipUiEventEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_CHANGE_ASPECT_RATIO:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_DRAG_TO_REMOVE:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_ENTER:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_EXPAND_TO_FULLSCREEN:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_HIDE_MENU:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_RESIZE:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_SHOW_MENU:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

.field public static final enum PICTURE_IN_PICTURE_TAP_TO_REMOVE:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 84
    new-instance v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    const-string v1, "PICTURE_IN_PICTURE_ENTER"

    const/4 v2, 0x0

    const/16 v3, 0x25b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_ENTER:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    .line 87
    new-instance v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    const-string v1, "PICTURE_IN_PICTURE_EXPAND_TO_FULLSCREEN"

    const/4 v3, 0x1

    const/16 v4, 0x25c

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_EXPAND_TO_FULLSCREEN:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    .line 90
    new-instance v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    const-string v1, "PICTURE_IN_PICTURE_TAP_TO_REMOVE"

    const/4 v4, 0x2

    const/16 v5, 0x25d

    invoke-direct {v0, v1, v4, v5}, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_TAP_TO_REMOVE:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    .line 93
    new-instance v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    const-string v1, "PICTURE_IN_PICTURE_DRAG_TO_REMOVE"

    const/4 v5, 0x3

    const/16 v6, 0x25e

    invoke-direct {v0, v1, v5, v6}, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_DRAG_TO_REMOVE:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    .line 96
    new-instance v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    const-string v1, "PICTURE_IN_PICTURE_SHOW_MENU"

    const/4 v6, 0x4

    const/16 v7, 0x25f

    invoke-direct {v0, v1, v6, v7}, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_SHOW_MENU:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    .line 99
    new-instance v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    const-string v1, "PICTURE_IN_PICTURE_HIDE_MENU"

    const/4 v7, 0x5

    const/16 v8, 0x260

    invoke-direct {v0, v1, v7, v8}, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_HIDE_MENU:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    .line 102
    new-instance v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    const-string v1, "PICTURE_IN_PICTURE_CHANGE_ASPECT_RATIO"

    const/4 v8, 0x6

    const/16 v9, 0x261

    invoke-direct {v0, v1, v8, v9}, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_CHANGE_ASPECT_RATIO:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    .line 106
    new-instance v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    const-string v1, "PICTURE_IN_PICTURE_RESIZE"

    const/4 v9, 0x7

    const/16 v10, 0x262

    invoke-direct {v0, v1, v9, v10}, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_RESIZE:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    .line 83
    sget-object v10, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_ENTER:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    aput-object v10, v1, v2

    sget-object v2, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_EXPAND_TO_FULLSCREEN:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_TAP_TO_REMOVE:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_DRAG_TO_REMOVE:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_SHOW_MENU:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_HIDE_MENU:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_CHANGE_ASPECT_RATIO:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->$VALUES:[Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    iput p3, p0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;
    .locals 1

    .line 83
    const-class v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;
    .locals 1

    .line 83
    sget-object v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->$VALUES:[Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {v0}, [Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 117
    iget p0, p0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->mId:I

    return p0
.end method
