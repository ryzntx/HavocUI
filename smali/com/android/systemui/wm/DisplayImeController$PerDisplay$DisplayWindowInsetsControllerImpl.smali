.class public Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;
.super Landroid/view/IDisplayWindowInsetsController$Stub;
.source "DisplayImeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wm/DisplayImeController$PerDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayWindowInsetsControllerImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    invoke-direct {p0}, Landroid/view/IDisplayWindowInsetsController$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$hideInsets$4(IZ)V
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->hideInsets(IZ)V

    return-void
.end method

.method private synthetic lambda$insetsChanged$1(Landroid/view/InsetsState;)V
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->insetsChanged(Landroid/view/InsetsState;)V

    return-void
.end method

.method private synthetic lambda$insetsControlChanged$2(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    return-void
.end method

.method private synthetic lambda$showInsets$3(IZ)V
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->showInsets(IZ)V

    return-void
.end method

.method private synthetic lambda$topFocusedWindowChanged$0(Ljava/lang/String;)V
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->topFocusedWindowChanged(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hideInsets(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$jGhtbDxS_YoDaJYcBs8vkGUQBkg;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$jGhtbDxS_YoDaJYcBs8vkGUQBkg;-><init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insetsChanged(Landroid/view/InsetsState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$xiackAGAjVaMqRAV1VngLoR6oWQ;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$xiackAGAjVaMqRAV1VngLoR6oWQ;-><init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;Landroid/view/InsetsState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$MD-AjVQiBPCLTrJlfeNx1zannNI;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$MD-AjVQiBPCLTrJlfeNx1zannNI;-><init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$hideInsets$4$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->lambda$hideInsets$4(IZ)V

    return-void
.end method

.method public synthetic lambda$insetsChanged$1$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl(Landroid/view/InsetsState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->lambda$insetsChanged$1(Landroid/view/InsetsState;)V

    return-void
.end method

.method public synthetic lambda$insetsControlChanged$2$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->lambda$insetsControlChanged$2(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    return-void
.end method

.method public synthetic lambda$showInsets$3$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->lambda$showInsets$3(IZ)V

    return-void
.end method

.method public synthetic lambda$topFocusedWindowChanged$0$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->lambda$topFocusedWindowChanged$0(Ljava/lang/String;)V

    return-void
.end method

.method public showInsets(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$QFGzIe2YJdq_NKhX7uJrvBqFET4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$QFGzIe2YJdq_NKhX7uJrvBqFET4;-><init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public topFocusedWindowChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->this$1:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$-peB89-jz4SBq-SUFQvnF6XsrHg;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$-peB89-jz4SBq-SUFQvnF6XsrHg;-><init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
