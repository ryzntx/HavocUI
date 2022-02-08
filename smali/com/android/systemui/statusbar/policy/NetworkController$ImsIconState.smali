.class public Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsIconState"
.end annotation


# instance fields
.field public contentDescription:Ljava/lang/String;

.field public visible:Z

.field public volteIcon:I

.field public volteVisible:Z

.field public vowifiIcon:I

.field public vowifiVisible:Z


# direct methods
.method public constructor <init>(ZZIIILandroid/content/Context;)V
    .locals 6

    .line 132
    invoke-virtual {p6, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;-><init>(ZZIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZZIILjava/lang/String;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 122
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;->visible:Z

    .line 123
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;->volteVisible:Z

    .line 124
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;->vowifiVisible:Z

    .line 125
    iput p3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;->volteIcon:I

    .line 126
    iput p4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;->vowifiIcon:I

    .line 127
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;->contentDescription:Ljava/lang/String;

    return-void
.end method
