.class public Lcom/android/systemui/statusbar/NavigationBarController;
.super Ljava/lang/Object;
.source "NavigationBarController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field mNavigationBars:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/NavigationBarFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mHandler:Landroid/os/Handler;

    const-string p2, "display"

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 75
    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method private synthetic lambda$createNavigationBar$0(ZLandroid/content/Context;ILcom/android/internal/statusbar/RegisterStatusBarResult;Landroid/view/Display;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 3

    .line 129
    move-object p6, p7

    check-cast p6, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p1, :cond_0

    .line 135
    const-class p7, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {p7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/android/systemui/statusbar/phone/LightBarController;

    goto :goto_0

    .line 136
    :cond_0
    new-instance p7, Lcom/android/systemui/statusbar/phone/LightBarController;

    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 137
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    const-class v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 138
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    .line 139
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-direct {p7, p2, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    .line 140
    :goto_0
    invoke-virtual {p6, p7}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    if-eqz p1, :cond_1

    .line 147
    const-class p1, Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/AutoHideController;

    goto :goto_1

    .line 148
    :cond_1
    new-instance p1, Lcom/android/systemui/statusbar/phone/AutoHideController;

    iget-object p7, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mHandler:Landroid/os/Handler;

    const-class v0, Landroid/view/IWindowManager;

    .line 149
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowManager;

    invoke-direct {p1, p2, p7, v0}, Lcom/android/systemui/statusbar/phone/AutoHideController;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IWindowManager;)V

    .line 150
    :goto_1
    invoke-virtual {p6, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    .line 151
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->restoreAppearanceAndTransientState()V

    .line 152
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p3, p6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    if-eqz p4, :cond_2

    .line 155
    invoke-virtual {p5}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    iget-object p2, p4, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeToken:Landroid/os/IBinder;

    iget p3, p4, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeWindowVis:I

    iget p5, p4, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeBackDisposition:I

    iget-boolean p7, p4, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mShowImeSwitcher:Z

    move-object p0, p6

    move p4, p5

    move p5, p7

    invoke-virtual/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    :cond_2
    return-void
.end method

.method private removeNavigationBar(I)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 171
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    .line 172
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 173
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    const/4 v2, 0x1

    .line 174
    invoke-virtual {v1, v0, v2}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 177
    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->removeAndDestroy(Landroid/view/View;)V

    .line 178
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkNavBarModes(I)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    :cond_0
    return-void
.end method

.method createNavigationBar(Landroid/view/Display;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    .line 120
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    .line 121
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v7

    if-eqz v2, :cond_2

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mContext:Landroid/content/Context;

    goto :goto_1

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    :goto_1
    move-object v8, v1

    .line 125
    invoke-virtual {v0, v8, v4}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->hasSoftNavigationBar(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 128
    :cond_3
    new-instance v9, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$oyTONslWMHHQSXiga3Vs0njIek8;

    move-object v0, v9

    move-object v1, p0

    move-object v3, v8

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$oyTONslWMHHQSXiga3Vs0njIek8;-><init>(Lcom/android/systemui/statusbar/NavigationBarController;ZLandroid/content/Context;ILcom/android/internal/statusbar/RegisterStatusBarResult;Landroid/view/Display;)V

    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->create(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Landroid/view/View;

    .line 162
    :try_start_0
    invoke-interface {v7}, Landroid/view/IWindowManager;->onOverlayChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public createNavigationBars(ZLcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 99
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez p1, :cond_0

    .line 100
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    :cond_0
    invoke-virtual {p0, v3, p2}, Lcom/android/systemui/statusbar/NavigationBarController;->createNavigationBar(Landroid/view/Display;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public disableAnimationsDuringHide(IJ)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_0

    .line 218
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->disableAnimationsDuringHide(J)V

    :cond_0
    return-void
.end method

.method public finishBarAnimations(I)V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->finishBarAnimations()V

    :cond_0
    return-void
.end method

.method public getAssistHandlerViewController()Lcom/android/systemui/assist/AssistHandleViewController;
    .locals 0

    .line 246
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getAssistHandlerViewController()Lcom/android/systemui/assist/AssistHandleViewController;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
    .locals 1

    .line 240
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    return-object p0
.end method

.method public getNavigationBarView(I)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    :goto_0
    return-object p0
.end method

.method public synthetic lambda$createNavigationBar$0$NavigationBarController(ZLandroid/content/Context;ILcom/android/internal/statusbar/RegisterStatusBarResult;Landroid/view/Display;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/statusbar/NavigationBarController;->lambda$createNavigationBar$0(ZLandroid/content/Context;ILcom/android/internal/statusbar/RegisterStatusBarResult;Landroid/view/Display;Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method

.method public onDisplayReady(I)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NavigationBarController;->createNavigationBar(Landroid/view/Display;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NavigationBarController;->removeNavigationBar(I)V

    return-void
.end method

.method public touchAutoDim(I)V
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->touchAutoDim()V

    :cond_0
    return-void
.end method

.method public transitionTo(IIZ)V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_0

    .line 210
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->transitionTo(IZ)V

    :cond_0
    return-void
.end method
