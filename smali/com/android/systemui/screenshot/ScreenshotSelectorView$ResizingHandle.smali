.class final enum Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;
.super Ljava/lang/Enum;
.source "ScreenshotSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/ScreenshotSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ResizingHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

.field public static final enum BOTTOM:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

.field public static final enum BOTTOM_LEFT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

.field public static final enum BOTTOM_RIGHT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

.field public static final enum INVALID:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

.field public static final enum LEFT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

.field public static final enum RIGHT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

.field public static final enum TOP:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

.field public static final enum TOP_LEFT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

.field public static final enum TOP_RIGHT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 60
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->INVALID:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    .line 61
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->BOTTOM_RIGHT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    .line 62
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    const-string v1, "BOTTOM_LEFT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->BOTTOM_LEFT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    .line 63
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    const-string v1, "TOP_RIGHT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->TOP_RIGHT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    .line 64
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    const-string v1, "TOP_LEFT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->TOP_LEFT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    .line 65
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    const-string v1, "RIGHT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->RIGHT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    .line 66
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    const-string v1, "BOTTOM"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->BOTTOM:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    .line 67
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    const-string v1, "LEFT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->LEFT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    .line 68
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    const-string v1, "TOP"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->TOP:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    .line 58
    sget-object v11, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->INVALID:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    aput-object v11, v1, v2

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->BOTTOM_RIGHT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->BOTTOM_LEFT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->TOP_RIGHT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->TOP_LEFT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->RIGHT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->BOTTOM:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->LEFT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->$VALUES:[Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;
    .locals 1

    .line 58
    const-class v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->$VALUES:[Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    invoke-virtual {v0}, [Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    return-object v0
.end method


# virtual methods
.method public isBottom()Z
    .locals 1

    .line 87
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->BOTTOM:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->BOTTOM_RIGHT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->BOTTOM_LEFT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isLeft()Z
    .locals 1

    .line 75
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->LEFT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->TOP_LEFT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->BOTTOM_LEFT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRight()Z
    .locals 1

    .line 83
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->RIGHT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->TOP_RIGHT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->BOTTOM_RIGHT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isTop()Z
    .locals 1

    .line 79
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->TOP:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->TOP_LEFT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->TOP_RIGHT:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isValid()Z
    .locals 1

    .line 71
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;->INVALID:Lcom/android/systemui/screenshot/ScreenshotSelectorView$ResizingHandle;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
