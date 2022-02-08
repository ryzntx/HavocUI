.class final enum Lcom/android/systemui/pip/PipTaskOrganizer$State;
.super Ljava/lang/Enum;
.source "PipTaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/PipTaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/pip/PipTaskOrganizer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/pip/PipTaskOrganizer$State;

.field public static final enum ENTERING_PIP:Lcom/android/systemui/pip/PipTaskOrganizer$State;

.field public static final enum EXITING_PIP:Lcom/android/systemui/pip/PipTaskOrganizer$State;

.field public static final enum TASK_APPEARED:Lcom/android/systemui/pip/PipTaskOrganizer$State;

.field public static final enum UNDEFINED:Lcom/android/systemui/pip/PipTaskOrganizer$State;


# instance fields
.field private final mStateValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 100
    new-instance v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/pip/PipTaskOrganizer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->UNDEFINED:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    .line 101
    new-instance v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;

    const-string v1, "TASK_APPEARED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/systemui/pip/PipTaskOrganizer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->TASK_APPEARED:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    .line 102
    new-instance v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;

    const-string v1, "ENTERING_PIP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/systemui/pip/PipTaskOrganizer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->ENTERING_PIP:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    .line 103
    new-instance v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;

    const-string v1, "EXITING_PIP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/systemui/pip/PipTaskOrganizer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->EXITING_PIP:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/systemui/pip/PipTaskOrganizer$State;

    .line 99
    sget-object v6, Lcom/android/systemui/pip/PipTaskOrganizer$State;->UNDEFINED:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/systemui/pip/PipTaskOrganizer$State;->TASK_APPEARED:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/pip/PipTaskOrganizer$State;->ENTERING_PIP:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/systemui/pip/PipTaskOrganizer$State;->$VALUES:[Lcom/android/systemui/pip/PipTaskOrganizer$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput p3, p0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->mStateValue:I

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/pip/PipTaskOrganizer$State;)Z
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/pip/PipTaskOrganizer$State;->shouldBlockResizeRequest()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/PipTaskOrganizer$State;)Z
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/pip/PipTaskOrganizer$State;->isInPip()Z

    move-result p0

    return p0
.end method

.method private isInPip()Z
    .locals 1

    .line 112
    iget p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->mStateValue:I

    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->TASK_APPEARED:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    iget v0, v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->mStateValue:I

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->EXITING_PIP:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    iget v0, v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->mStateValue:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldBlockResizeRequest()Z
    .locals 1

    .line 123
    iget p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->mStateValue:I

    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->ENTERING_PIP:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    iget v0, v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->mStateValue:I

    if-lt p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->EXITING_PIP:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    iget v0, v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->mStateValue:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/pip/PipTaskOrganizer$State;
    .locals 1

    .line 99
    const-class v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pip/PipTaskOrganizer$State;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/pip/PipTaskOrganizer$State;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->$VALUES:[Lcom/android/systemui/pip/PipTaskOrganizer$State;

    invoke-virtual {v0}, [Lcom/android/systemui/pip/PipTaskOrganizer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/pip/PipTaskOrganizer$State;

    return-object v0
.end method
