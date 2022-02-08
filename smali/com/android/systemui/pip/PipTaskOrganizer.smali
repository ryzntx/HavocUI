.class public Lcom/android/systemui/pip/PipTaskOrganizer;
.super Landroid/window/TaskOrganizer;
.source "PipTaskOrganizer.java"

# interfaces
.implements Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;,
        Lcom/android/systemui/pip/PipTaskOrganizer$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCompactState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/systemui/pip/PipWindowConfigurationCompact;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnterExitAnimationDuration:I

.field private final mLastReportedBounds:Landroid/graphics/Rect;

.field private mLeash:Landroid/view/SurfaceControl;

.field private final mMainHandler:Landroid/os/Handler;

.field private mOneShotAnimationType:I

.field private mOverridableMinSize:I

.field private mPictureInPictureParams:Landroid/app/PictureInPictureParams;

.field private final mPipAnimationCallback:Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;

.field private final mPipAnimationController:Lcom/android/systemui/pip/PipAnimationController;

.field private final mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

.field private final mPipTransitionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPipUiEventLoggerLogger:Lcom/android/systemui/pip/PipUiEventLogger;

.field private mRequestedOrientation:I

.field private mShouldDeferEnteringPip:Z

.field private final mSplitDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

.field private mSurfaceControlTransactionFactory:Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

.field private final mSurfaceTransactionHelper:Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

.field private mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mToken:Landroid/window/WindowContainerToken;

.field private final mUpdateCallbacks:Landroid/os/Handler$Callback;

.field private final mUpdateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-class v0, Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pip/PipBoundsHandler;Lcom/android/systemui/pip/PipSurfaceTransactionHelper;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/wm/DisplayController;Lcom/android/systemui/pip/PipAnimationController;Lcom/android/systemui/pip/PipUiEventLogger;)V
    .locals 3

    .line 243
    invoke-direct {p0}, Landroid/window/TaskOrganizer;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipTransitionCallbacks:Ljava/util/List;

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mCompactState:Ljava/util/Map;

    .line 141
    new-instance v0, Lcom/android/systemui/pip/PipTaskOrganizer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/PipTaskOrganizer$1;-><init>(Lcom/android/systemui/pip/PipTaskOrganizer;)V

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;

    .line 162
    new-instance v0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$5wOr4WCerG3hW1uyUvJi4O0nPDE;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$5wOr4WCerG3hW1uyUvJi4O0nPDE;-><init>(Lcom/android/systemui/pip/PipTaskOrganizer;)V

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateCallbacks:Landroid/os/Handler$Callback;

    .line 222
    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->UNDEFINED:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    const/4 v0, 0x0

    .line 223
    iput v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    .line 244
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mMainHandler:Landroid/os/Handler;

    .line 245
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/pip/phone/PipUpdateThread;->get()Lcom/android/systemui/pip/phone/PipUpdateThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateCallbacks:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    .line 246
    iput-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$integer;->config_pipResizeAnimationDuration:I

    .line 248
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mEnterExitAnimationDuration:I

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10501f9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOverridableMinSize:I

    .line 251
    iput-object p3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    .line 252
    iput-object p6, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/systemui/pip/PipAnimationController;

    .line 253
    iput-object p7, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/systemui/pip/PipUiEventLogger;

    .line 254
    sget-object p1, Lcom/android/systemui/pip/-$$Lambda$0FLZQAxNoOm85ohJ3bgjkYQDWsU;->INSTANCE:Lcom/android/systemui/pip/-$$Lambda$0FLZQAxNoOm85ohJ3bgjkYQDWsU;

    iput-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 255
    iput-object p4, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSplitDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 256
    invoke-virtual {p5, p0}, Lcom/android/systemui/wm/DisplayController;->addDisplayWindowListener(Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/PipTaskOrganizer;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->sendOnPipTransitionStarted(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/PipTaskOrganizer;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/pip/PipTaskOrganizer;->finishResize(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/pip/PipTaskOrganizer;)Landroid/view/SurfaceControl;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/pip/PipTaskOrganizer;)Lcom/android/systemui/pip/PipAnimationController;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/systemui/pip/PipAnimationController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/PipTaskOrganizer;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/PipTaskOrganizer;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->sendOnPipTransitionCancelled(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/PipTaskOrganizer;)Landroid/graphics/Rect;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/pip/PipTaskOrganizer;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/util/function/Consumer;)V
    .locals 0

    .line 87
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui/pip/PipTaskOrganizer;Lcom/android/systemui/pip/PipTaskOrganizer$State;)Lcom/android/systemui/pip/PipTaskOrganizer$State;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/pip/PipTaskOrganizer;)Landroid/os/Handler;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/pip/PipTaskOrganizer;)Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;

    return-object p0
.end method

.method private animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 2

    .line 931
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 936
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 940
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/systemui/pip/PipAnimationController;

    .line 941
    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/android/systemui/pip/PipAnimationController;->getAnimator(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    .line 942
    invoke-virtual {p1, p4}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;

    .line 943
    invoke-virtual {p1, p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    int-to-long p2, p5

    .line 944
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 945
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 937
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "Abort animation, invalid leash"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 932
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callers should call scheduleAnimateResizePip() instead of this directly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private applyPictureInPictureParams(Landroid/app/PictureInPictureParams;)Z
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->getAspectRatioRational()Landroid/util/Rational;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatioRational()Landroid/util/Rational;

    move-result-object v1

    .line 678
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 681
    iput-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 682
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/PipBoundsHandler;->onAspectRatioChanged(F)V

    :cond_2
    return v0
.end method

.method private applyWindowingModeChangeOnExit(Landroid/window/WindowContainerTransaction;I)V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->getOutPipWindowingMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 371
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 372
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSplitDivider:Lcom/android/systemui/stackdivider/Divider;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 373
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getSecondaryRoot()Landroid/window/WindowContainerToken;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_0
    return-void
.end method

.method private createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 3

    .line 778
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v0}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 779
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 780
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 781
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    iget-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    .line 782
    invoke-static {p0}, Lcom/android/systemui/pip/PipTaskOrganizer$State;->access$400(Lcom/android/systemui/pip/PipTaskOrganizer$State;)Z

    move-result p0

    invoke-virtual {v1, v0, p1, p0}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    return-object v0
.end method

.method private enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 478
    invoke-interface {v0}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 480
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 481
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 482
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 483
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 484
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->scheduleFinishEnterPip(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 485
    new-instance v1, Lcom/android/systemui/pip/PipTaskOrganizer$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/pip/PipTaskOrganizer$3;-><init>(Lcom/android/systemui/pip/PipTaskOrganizer;Landroid/graphics/Rect;J)V

    invoke-virtual {p0, v0, v1}, Landroid/window/TaskOrganizer;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    return-void
.end method

.method private finishResize(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V
    .locals 2

    .line 864
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 868
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    .line 870
    invoke-direct {p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->removePipImmediately()V

    return-void

    .line 872
    :cond_0
    invoke-static {p3}, Lcom/android/systemui/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    return-void

    .line 876
    :cond_1
    new-instance p4, Landroid/window/WindowContainerTransaction;

    invoke-direct {p4}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 877
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/android/systemui/pip/PipTaskOrganizer;->prepareFinishResizeTransaction(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 878
    invoke-virtual {p0, p4, p3}, Lcom/android/systemui/pip/PipTaskOrganizer;->applyFinishBoundsResize(Landroid/window/WindowContainerTransaction;I)V

    return-void

    .line 865
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callers should call scheduleResizePip() instead of this directly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getAspectRatioOrDefault(Landroid/app/PictureInPictureParams;)F
    .locals 1

    if-eqz p1, :cond_1

    .line 969
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 971
    :cond_0
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result p0

    goto :goto_1

    .line 970
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    invoke-virtual {p0}, Lcom/android/systemui/pip/PipBoundsHandler;->getDefaultAspectRatio()F

    move-result p0

    :goto_1
    return p0
.end method

.method private getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 949
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez p1, :cond_0

    goto :goto_0

    .line 955
    :cond_0
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    if-lez v1, :cond_3

    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    if-lez v2, :cond_3

    .line 958
    iget v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOverridableMinSize:I

    if-lt v1, v0, :cond_1

    if-ge v2, v0, :cond_2

    :cond_1
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "174302616"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 960
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 962
    :cond_2
    new-instance v0, Landroid/util/Size;

    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iget v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOverridableMinSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iget p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOverridableMinSize:I

    .line 963
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method private getValidSourceHintRect(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 464
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->hasSourceBoundsHint()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 465
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 467
    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 9

    .line 164
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 165
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    .line 166
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    .line 210
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    .line 211
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->userResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    .line 201
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    .line 202
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v5, -0x1

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/systemui/pip/PipTaskOrganizer;->finishResize(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    if-eqz v1, :cond_5

    .line 204
    invoke-interface {v1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    .line 189
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 190
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v5, 0x0

    .line 191
    invoke-direct {p0, p1, v5, v3, v4}, Lcom/android/systemui/pip/PipTaskOrganizer;->offsetPip(Landroid/graphics/Rect;III)V

    .line 192
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 193
    invoke-virtual {p0, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v1, :cond_5

    .line 195
    invoke-interface {v1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    :cond_3
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroid/graphics/Rect;

    .line 177
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    .line 178
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Landroid/graphics/Rect;

    .line 179
    iget v8, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 180
    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/pip/PipTaskOrganizer;->animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    if-eqz v1, :cond_5

    .line 183
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 168
    :cond_4
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->resizePip(Landroid/graphics/Rect;)V

    if-eqz v1, :cond_5

    .line 171
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 215
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return v2
.end method

.method private synthetic lambda$removePip$1()V
    .locals 5

    .line 388
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/systemui/pip/PipAnimationController;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 389
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/pip/PipAnimationController;->getAnimator(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    const/4 v1, 0x5

    .line 390
    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;

    .line 391
    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/systemui/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    iget p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mEnterExitAnimationDuration:I

    int-to-long v1, p0

    .line 392
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 393
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$sendOnPipTransitionCancelled$4(I)V
    .locals 3

    .line 525
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipTransitionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 526
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipTransitionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;

    .line 527
    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-interface {v1, v2, p1}, Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;->onPipTransitionCanceled(Landroid/content/ComponentName;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendOnPipTransitionFinished$3(I)V
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipTransitionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 516
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipTransitionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;

    .line 517
    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-interface {v1, v2, p1}, Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;->onPipTransitionFinished(Landroid/content/ComponentName;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendOnPipTransitionStarted$2(I)V
    .locals 3

    .line 505
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipTransitionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 506
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipTransitionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;

    .line 507
    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-interface {v1, v2, p1}, Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;->onPipTransitionStarted(Landroid/content/ComponentName;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private offsetPip(Landroid/graphics/Rect;III)V
    .locals 6

    .line 808
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 812
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_0

    .line 813
    sget-object p0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "mTaskInfo is not set"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 816
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 817
    invoke-virtual {v2, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v5, p4

    .line 818
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/pip/PipTaskOrganizer;->animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    return-void

    .line 809
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callers should call scheduleOffsetPip() instead of this directly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private prepareFinishResizeTransaction(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 886
    invoke-static {p2}, Lcom/android/systemui/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v0, 0x0

    invoke-virtual {p4, p2, v0}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 891
    iget-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p4, p2, p1}, Landroid/window/WindowContainerTransaction;->scheduleFinishEnterPip(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    goto :goto_0

    .line 892
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    const/4 p1, 0x0

    .line 897
    :cond_1
    invoke-direct {p0, p4, p2}, Lcom/android/systemui/pip/PipTaskOrganizer;->applyWindowingModeChangeOnExit(Landroid/window/WindowContainerTransaction;I)V

    .line 903
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p4, p2, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 904
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p4, p0, p3}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method private removePipImmediately()V
    .locals 3

    .line 401
    :try_start_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 402
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 403
    invoke-static {v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 405
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-interface {p0, v0}, Landroid/app/IActivityTaskManager;->removeStacksInWindowingModes([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 408
    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string v1, "Failed to remove PiP"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private resizePip(Landroid/graphics/Rect;)V
    .locals 3

    .line 823
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 828
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 833
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v0}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 834
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 835
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    iget-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    .line 836
    invoke-static {p0}, Lcom/android/systemui/pip/PipTaskOrganizer$State;->access$400(Lcom/android/systemui/pip/PipTaskOrganizer$State;)Z

    move-result p0

    invoke-virtual {v1, v0, p1, p0}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    .line 837
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    .line 829
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "Abort animation, invalid leash"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 824
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callers should call scheduleResizePip() instead of this directly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private runOnMainHandler(Ljava/lang/Runnable;)V
    .locals 2

    .line 533
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 534
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 536
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "II",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/systemui/pip/PipTaskOrganizer$State;->access$400(Lcom/android/systemui/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 710
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 711
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 712
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 713
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 714
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 715
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 716
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 717
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private scheduleFinishResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "I",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 763
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/systemui/pip/PipTaskOrganizer$State;->access$1200(Lcom/android/systemui/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 767
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 768
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 769
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 771
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 772
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 773
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendOnPipTransitionCancelled(I)V
    .locals 1

    .line 524
    new-instance v0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$TTTo1eGF0SlCllWVDuAJlbhmvjo;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$TTTo1eGF0SlCllWVDuAJlbhmvjo;-><init>(Lcom/android/systemui/pip/PipTaskOrganizer;I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->runOnMainHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendOnPipTransitionFinished(I)V
    .locals 1

    .line 514
    new-instance v0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$cVPyDgP7uB9XVG-Z8xzNA-yEDd4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$cVPyDgP7uB9XVG-Z8xzNA-yEDd4;-><init>(Lcom/android/systemui/pip/PipTaskOrganizer;I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->runOnMainHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendOnPipTransitionStarted(I)V
    .locals 1

    .line 504
    new-instance v0, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$JUO3Grq_R7eMASAsK_v_c6_mMuI;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$JUO3Grq_R7eMASAsK_v_c6_mMuI;-><init>(Lcom/android/systemui/pip/PipTaskOrganizer;I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->runOnMainHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method private syncWithSplitScreenBounds(Landroid/graphics/Rect;)Z
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSplitDivider:Lcom/android/systemui/stackdivider/Divider;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->isDividerVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 987
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSplitDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 988
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 987
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private userResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 841
    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 846
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    goto :goto_1

    .line 851
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v0}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 857
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0, p0, p1, p2}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    .line 858
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Attempted to user resize PIP to or from empty bounds, aborting."

    .line 852
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    const-string p0, "Abort animation, invalid leash"

    .line 847
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 842
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callers should call scheduleUserResizePip() instead of this directly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public applyFinishBoundsResize(Landroid/window/WindowContainerTransaction;I)V
    .locals 0

    .line 916
    invoke-static {p1}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 998
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTaskInfo="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 999
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mToken="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " binder="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 999
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1001
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLeash="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mOneShotAnimationType="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1004
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPictureInPictureParams="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastReportedBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mInitialState:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1007
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mCompactState:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  binder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1008
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public exitPip(I)V
    .locals 9

    .line 310
    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    invoke-static {v1}, Lcom/android/systemui/pip/PipTaskOrganizer$State;->access$400(Lcom/android/systemui/pip/PipTaskOrganizer$State;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 316
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mCompactState:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/PipWindowConfigurationCompact;

    if-nez v1, :cond_1

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token not in record, this should not happen mToken="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/systemui/pip/PipUiEventLogger;

    sget-object v2, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_EXPAND_TO_FULLSCREEN:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {v0, v2}, Lcom/android/systemui/pip/PipUiEventLogger;->log(Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 324
    iget v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mRequestedOrientation:I

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    .line 325
    invoke-virtual {v2}, Lcom/android/systemui/pip/PipBoundsHandler;->getDisplayRotation()I

    move-result v2

    .line 324
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->syncWithScreenOrientation(II)V

    .line 326
    invoke-virtual {v1}, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->getRotation()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    .line 327
    invoke-virtual {v2}, Lcom/android/systemui/pip/PipBoundsHandler;->getDisplayRotation()I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 328
    :goto_0
    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 329
    invoke-virtual {v1}, Lcom/android/systemui/pip/PipWindowConfigurationCompact;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 330
    invoke-direct {p0, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->syncWithSplitScreenBounds(Landroid/graphics/Rect;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    const/4 v4, 0x3

    :goto_1
    if-eqz v0, :cond_4

    .line 334
    sget-object p1, Lcom/android/systemui/pip/PipTaskOrganizer$State;->EXITING_PIP:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    iput-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    .line 336
    invoke-direct {p0, v4}, Lcom/android/systemui/pip/PipTaskOrganizer;->sendOnPipTransitionStarted(I)V

    .line 339
    invoke-direct {p0, v2, v4}, Lcom/android/systemui/pip/PipTaskOrganizer;->applyWindowingModeChangeOnExit(Landroid/window/WindowContainerTransaction;I)V

    .line 340
    invoke-static {v2}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 342
    invoke-direct {p0, v4}, Lcom/android/systemui/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    goto :goto_2

    .line 344
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 345
    invoke-interface {v0}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 346
    iget-object v6, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    iget-object v7, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v8, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v7, v1, v8}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;

    .line 348
    iget-object v6, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 349
    iget-object v6, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-ne v4, v5, :cond_5

    move v3, v5

    :cond_5
    invoke-virtual {v2, v6, v3}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 352
    iget-object v3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v3, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 353
    iget-object v3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v3, v0}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 354
    new-instance v0, Lcom/android/systemui/pip/PipTaskOrganizer$2;

    invoke-direct {v0, p0, v1, v4, p1}, Lcom/android/systemui/pip/PipTaskOrganizer$2;-><init>(Lcom/android/systemui/pip/PipTaskOrganizer;Landroid/graphics/Rect;II)V

    invoke-virtual {p0, v2, v0}, Landroid/window/TaskOrganizer;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    :goto_2
    return-void

    .line 311
    :cond_6
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not allowed to exitPip in current state mState="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mToken="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCurrentOrAnimatingBounds()Landroid/graphics/Rect;
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/systemui/pip/PipAnimationController;

    .line 269
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController;->getCurrentAnimator()Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p0

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->getLastReportedBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getLastReportedBounds()Landroid/graphics/Rect;
    .locals 1

    .line 264
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getOutPipWindowingMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUpdateHandler()Landroid/os/Handler;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public isDeferringEnterPipAnimation()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/systemui/pip/PipTaskOrganizer$State;->access$400(Lcom/android/systemui/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mShouldDeferEnteringPip:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInPip()Z
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    invoke-static {p0}, Lcom/android/systemui/pip/PipTaskOrganizer$State;->access$400(Lcom/android/systemui/pip/PipTaskOrganizer$State;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$PipTaskOrganizer(Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->lambda$new$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$removePip$1$PipTaskOrganizer()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->lambda$removePip$1()V

    return-void
.end method

.method public synthetic lambda$sendOnPipTransitionCancelled$4$PipTaskOrganizer(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->lambda$sendOnPipTransitionCancelled$4(I)V

    return-void
.end method

.method public synthetic lambda$sendOnPipTransitionFinished$3$PipTaskOrganizer(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->lambda$sendOnPipTransitionFinished$3(I)V

    return-void
.end method

.method public synthetic lambda$sendOnPipTransitionStarted$2$PipTaskOrganizer(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->lambda$sendOnPipTransitionStarted$2(I)V

    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public onFixedRotationFinished(I)V
    .locals 4

    .line 596
    iget-boolean p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mShouldDeferEnteringPip:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    invoke-static {p1}, Lcom/android/systemui/pip/PipTaskOrganizer$State;->access$400(Lcom/android/systemui/pip/PipTaskOrganizer$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 597
    iget-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 598
    invoke-direct {p0, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->getAspectRatioOrDefault(Landroid/app/PictureInPictureParams;)F

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 599
    invoke-direct {p0, v3}, Lcom/android/systemui/pip/PipTaskOrganizer;->getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;

    move-result-object v3

    .line 597
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/systemui/pip/PipBoundsHandler;->getDestinationBounds(Landroid/content/ComponentName;FLandroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 601
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V

    :cond_0
    const/4 p1, 0x0

    .line 603
    iput-boolean p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mShouldDeferEnteringPip:Z

    return-void
.end method

.method public onFixedRotationStarted(II)V
    .locals 0

    const/4 p1, 0x1

    .line 591
    iput-boolean p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mShouldDeferEnteringPip:Z

    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 613
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/systemui/pip/PipAnimationController;

    .line 614
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController;->getCurrentAnimator()Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 615
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 616
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 654
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 655
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 656
    iget-object p3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    .line 657
    invoke-virtual {p3}, Lcom/android/systemui/pip/PipBoundsHandler;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 662
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    iget-object p4, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object p5, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 663
    invoke-direct {p0, p5}, Lcom/android/systemui/pip/PipTaskOrganizer;->getAspectRatioOrDefault(Landroid/app/PictureInPictureParams;)F

    move-result p5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 664
    invoke-direct {p0, v2}, Lcom/android/systemui/pip/PipTaskOrganizer;->getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;

    move-result-object p0

    .line 662
    invoke-virtual {p3, p4, p5, v1, p0}, Lcom/android/systemui/pip/PipBoundsHandler;->getDestinationBounds(Landroid/content/ComponentName;FLandroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p0

    .line 665
    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 666
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getAnimationType()I

    move-result p2

    if-nez p2, :cond_3

    .line 667
    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->updateEndValue(Ljava/lang/Object;)V

    .line 669
    :cond_3
    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 670
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 617
    :cond_4
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    invoke-static {p3}, Lcom/android/systemui/pip/PipTaskOrganizer$State;->access$400(Lcom/android/systemui/pip/PipTaskOrganizer$State;)Z

    move-result p3

    if-eqz p3, :cond_6

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    if-eqz v0, :cond_5

    .line 623
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result p2

    .line 624
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 625
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 626
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 628
    invoke-direct {p0, p2}, Lcom/android/systemui/pip/PipTaskOrganizer;->sendOnPipTransitionCancelled(I)V

    .line 629
    invoke-direct {p0, p2}, Lcom/android/systemui/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    .line 631
    :cond_5
    iget-object p3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 635
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    .line 637
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/pip/PipTaskOrganizer;->prepareFinishResizeTransaction(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 641
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 642
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    .line 643
    invoke-virtual {v0}, Lcom/android/systemui/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 646
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 647
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 11

    const-string v0, "Requires RunningTaskInfo"

    .line 414
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 415
    iput-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 416
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 417
    sget-object v1, Lcom/android/systemui/pip/PipTaskOrganizer$State;->TASK_APPEARED:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    iput-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    .line 418
    iput-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 419
    iget-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mCompactState:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/PipWindowConfigurationCompact;

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-direct {v1, v2}, Lcom/android/systemui/pip/PipWindowConfigurationCompact;-><init>(Landroid/app/WindowConfiguration;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 422
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->requestedOrientation:I

    iput v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mRequestedOrientation:I

    .line 424
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/systemui/pip/PipUiEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pip/PipUiEventLogger;->setTaskInfo(Landroid/app/TaskInfo;)V

    .line 425
    iget-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/systemui/pip/PipUiEventLogger;

    sget-object v0, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_ENTER:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p2, v0}, Lcom/android/systemui/pip/PipUiEventLogger;->log(Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 427
    iget-boolean p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mShouldDeferEnteringPip:Z

    if-eqz p2, :cond_0

    .line 430
    iget-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 431
    invoke-interface {p1}, Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 432
    iget-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 433
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 434
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    .line 438
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 439
    invoke-direct {p0, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->getAspectRatioOrDefault(Landroid/app/PictureInPictureParams;)F

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 440
    invoke-direct {p0, v3}, Lcom/android/systemui/pip/PipTaskOrganizer;->getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;

    move-result-object v3

    .line 438
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/android/systemui/pip/PipBoundsHandler;->getDestinationBounds(Landroid/content/ComponentName;FLandroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v6

    const-string p2, "Missing destination bounds"

    .line 441
    invoke-static {v6, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 442
    iget-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 444
    iget p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    if-nez p2, :cond_1

    .line 445
    invoke-direct {p0, p1, v5}, Lcom/android/systemui/pip/PipTaskOrganizer;->getValidSourceHintRect(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    const/4 v8, 0x2

    .line 446
    iget v9, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mEnterExitAnimationDuration:I

    const/4 v10, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/util/function/Consumer;)V

    .line 449
    sget-object p1, Lcom/android/systemui/pip/PipTaskOrganizer$State;->ENTERING_PIP:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    iput-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    .line 451
    iget p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mEnterExitAnimationDuration:I

    int-to-long p1, p1

    invoke-direct {p0, v6, p1, p2}, Lcom/android/systemui/pip/PipTaskOrganizer;->enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V

    const/4 p1, 0x0

    .line 452
    iput p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    :goto_0
    return-void

    .line 454
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized animation type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 8

    .line 567
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const-string v1, "onTaskInfoChanged requires valid existing mToken"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 568
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->requestedOrientation:I

    iput v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mRequestedOrientation:I

    .line 570
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_1

    .line 571
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->applyPictureInPictureParams(Landroid/app/PictureInPictureParams;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 575
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 576
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->getAspectRatioOrDefault(Landroid/app/PictureInPictureParams;)F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 577
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;

    move-result-object v6

    const/4 v7, 0x1

    .line 575
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/pip/PipBoundsHandler;->getDestinationBounds(Landroid/content/ComponentName;FLandroid/graphics/Rect;Landroid/util/Size;Z)Landroid/graphics/Rect;

    move-result-object p1

    const-string v0, "Missing destination bounds"

    .line 579
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 580
    iget v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mEnterExitAnimationDuration:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    return-void

    .line 572
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignored onTaskInfoChanged with PiP param: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/systemui/pip/PipTaskOrganizer$State;->access$400(Lcom/android/systemui/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 553
    :cond_0
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const-string v0, "Requires valid WindowContainerToken"

    .line 554
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 555
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 556
    sget-object p0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 559
    iput-boolean p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mShouldDeferEnteringPip:Z

    const/4 p1, 0x0

    .line 560
    iput-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 561
    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->UNDEFINED:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    .line 562
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/systemui/pip/PipUiEventLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/PipUiEventLogger;->setTaskInfo(Landroid/app/TaskInfo;)V

    return-void
.end method

.method public registerPipTransitionCallback(Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;)V
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mPipTransitionCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePip()V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/systemui/pip/PipTaskOrganizer$State;->access$400(Lcom/android/systemui/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$imSGihBVaB-7Q3dNvjZL6kcUBBY;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/-$$Lambda$PipTaskOrganizer$imSGihBVaB-7Q3dNvjZL6kcUBBY;-><init>(Lcom/android/systemui/pip/PipTaskOrganizer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mCompactState:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer$State;->EXITING_PIP:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    iput-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    return-void

    .line 382
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to removePip in current state mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scheduleAnimateResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "I",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 692
    iget-boolean v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mShouldDeferEnteringPip:Z

    if-eqz v0, :cond_0

    .line 693
    sget-object p0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "skip scheduleAnimateResizePip, entering pip deferred"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mLastReportedBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/util/function/Consumer;)V

    return-void
.end method

.method public scheduleFinishResizePip(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 749
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public scheduleFinishResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 757
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    return-void
.end method

.method public scheduleOffsetPip(Landroid/graphics/Rect;IILjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "II",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mState:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/systemui/pip/PipTaskOrganizer$State;->access$1200(Lcom/android/systemui/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 794
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mShouldDeferEnteringPip:Z

    if-eqz v0, :cond_1

    .line 795
    sget-object p0, Lcom/android/systemui/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "skip scheduleOffsetPip, entering pip deferred"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 798
    :cond_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 799
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 800
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 802
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 803
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 804
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 725
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 726
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 727
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 728
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 737
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 738
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 739
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 740
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 741
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mUpdateHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setOneShotAnimationType(I)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    return-void
.end method
