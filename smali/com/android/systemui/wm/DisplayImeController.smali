.class public Lcom/android/systemui/wm/DisplayImeController;
.super Ljava/lang/Object;
.source "DisplayImeController.java"

# interfaces
.implements Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wm/DisplayImeController$ImePositionProcessor;,
        Lcom/android/systemui/wm/DisplayImeController$PerDisplay;
    }
.end annotation


# static fields
.field public static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field final mDisplayController:Lcom/android/systemui/wm/DisplayController;

.field final mImePerDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/wm/DisplayImeController$PerDisplay;",
            ">;"
        }
    .end annotation
.end field

.field protected final mMainExecutor:Ljava/util/concurrent/Executor;

.field final mPositionProcessors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wm/DisplayImeController$ImePositionProcessor;",
            ">;"
        }
    .end annotation
.end field

.field final mTransactionPool:Lcom/android/systemui/TransactionPool;

.field protected final mWmService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 67
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/wm/DisplayImeController;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/IWindowManager;Lcom/android/systemui/wm/DisplayController;Ljava/util/concurrent/Executor;Lcom/android/systemui/TransactionPool;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wm/DisplayImeController;->mImePerDisplay:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wm/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    .line 85
    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController;->mWmService:Landroid/view/IWindowManager;

    .line 86
    iput-object p3, p0, Lcom/android/systemui/wm/DisplayImeController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 87
    iput-object p4, p0, Lcom/android/systemui/wm/DisplayImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    .line 88
    iput-object p2, p0, Lcom/android/systemui/wm/DisplayImeController;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    .line 89
    invoke-virtual {p2, p0}, Lcom/android/systemui/wm/DisplayController;->addDisplayWindowListener(Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/InsetsSourceControl;Landroid/view/InsetsSourceControl;)Z
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lcom/android/systemui/wm/DisplayImeController;->haveSameLeash(Landroid/view/InsetsSourceControl;Landroid/view/InsetsSourceControl;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/wm/DisplayImeController;IIIZZLandroid/view/SurfaceControl$Transaction;)I
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/wm/DisplayImeController;->dispatchStartPositioning(IIIZZLandroid/view/SurfaceControl$Transaction;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/wm/DisplayImeController;IZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wm/DisplayImeController;->dispatchEndPositioning(IZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/wm/DisplayImeController;IILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wm/DisplayImeController;->dispatchPositionChanged(IILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private dispatchEndPositioning(IZLandroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wm/DisplayImeController$ImePositionProcessor;

    .line 159
    invoke-interface {v1, p1, p2, p3}, Lcom/android/systemui/wm/DisplayImeController$ImePositionProcessor;->onImeEndPositioning(IZLandroid/view/SurfaceControl$Transaction;)V

    goto :goto_0

    .line 161
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private dispatchPositionChanged(IILandroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wm/DisplayImeController$ImePositionProcessor;

    .line 137
    invoke-interface {v1, p1, p2, p3}, Lcom/android/systemui/wm/DisplayImeController$ImePositionProcessor;->onImePositionChanged(IILandroid/view/SurfaceControl$Transaction;)V

    goto :goto_0

    .line 139
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private dispatchStartPositioning(IIIZZLandroid/view/SurfaceControl$Transaction;)I
    .locals 11

    move-object v0, p0

    .line 145
    iget-object v1, v0, Lcom/android/systemui/wm/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v2, 0x0

    .line 147
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/wm/DisplayImeController$ImePositionProcessor;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    .line 148
    invoke-interface/range {v4 .. v10}, Lcom/android/systemui/wm/DisplayImeController$ImePositionProcessor;->onImeStartPositioning(IIIZZLandroid/view/SurfaceControl$Transaction;)I

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    .line 151
    :cond_0
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    .line 152
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static haveSameLeash(Landroid/view/InsetsSourceControl;Landroid/view/InsetsSourceControl;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 574
    :cond_1
    invoke-virtual {p0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    if-ne v2, v3, :cond_2

    return v0

    .line 577
    :cond_2
    invoke-virtual {p0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 580
    :cond_3
    invoke-virtual {p0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method private isImeShowing(I)Z
    .locals 2

    .line 125
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController;->mImePerDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method


# virtual methods
.method public addPositionProcessor(Lcom/android/systemui/wm/DisplayImeController$ImePositionProcessor;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    monitor-exit v0

    return-void

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getImms()Lcom/android/internal/view/IInputMethodManager;
    .locals 0

    const-string p0, "input_method"

    .line 564
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 563
    invoke-static {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object p0

    return-object p0
.end method

.method public onDisplayAdded(I)V
    .locals 2

    .line 96
    new-instance v0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    iget-object v1, p0, Lcom/android/systemui/wm/DisplayImeController;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    .line 97
    invoke-virtual {v1, p1}, Lcom/android/systemui/wm/DisplayController;->getDisplayLayout(I)Lcom/android/systemui/wm/DisplayLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayLayout;->rotation()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;-><init>(Lcom/android/systemui/wm/DisplayImeController;II)V

    .line 98
    invoke-virtual {v0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->register()V

    .line 99
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController;->mImePerDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 2

    .line 104
    iget-object p2, p0, Lcom/android/systemui/wm/DisplayImeController;->mImePerDisplay:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    if-nez p2, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wm/DisplayController;->getDisplayLayout(I)Lcom/android/systemui/wm/DisplayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/wm/DisplayLayout;->rotation()I

    move-result v0

    iget v1, p2, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mRotation:I

    if-eq v0, v1, :cond_1

    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/wm/DisplayImeController;->isImeShowing(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 110
    invoke-static {p2, p0, p1}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->access$000(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;ZZ)V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController;->mWmService:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->setDisplayWindowInsetsController(ILandroid/view/IDisplayWindowInsetsController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to remove insets controller on display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayImeController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController;->mImePerDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method removeImeSurface()V
    .locals 2

    .line 499
    invoke-virtual {p0}, Lcom/android/systemui/wm/DisplayImeController;->getImms()Lcom/android/internal/view/IInputMethodManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 504
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/view/IInputMethodManager;->removeImeSurface()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DisplayImeController"

    const-string v1, "Failed to remove IME surface."

    .line 506
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
