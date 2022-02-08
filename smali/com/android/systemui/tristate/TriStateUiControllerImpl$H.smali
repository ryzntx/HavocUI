.class final Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;
.super Landroid/os/Handler;
.source "TriStateUiControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tristate/TriStateUiControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field private mUiController:Lcom/android/systemui/tristate/TriStateUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tristate/TriStateUiControllerImpl;Lcom/android/systemui/tristate/TriStateUiControllerImpl;)V
    .locals 0

    .line 114
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 115
    iput-object p2, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;->mUiController:Lcom/android/systemui/tristate/TriStateUiControllerImpl;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 119
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;->mUiController:Lcom/android/systemui/tristate/TriStateUiControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->access$400(Lcom/android/systemui/tristate/TriStateUiControllerImpl;)V

    return-void

    .line 127
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;->mUiController:Lcom/android/systemui/tristate/TriStateUiControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->handleResetTimeout()V

    return-void

    .line 124
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;->mUiController:Lcom/android/systemui/tristate/TriStateUiControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->access$300(Lcom/android/systemui/tristate/TriStateUiControllerImpl;)V

    return-void

    .line 121
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/tristate/TriStateUiControllerImpl$H;->mUiController:Lcom/android/systemui/tristate/TriStateUiControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/tristate/TriStateUiControllerImpl;->access$200(Lcom/android/systemui/tristate/TriStateUiControllerImpl;)V

    return-void
.end method
