.class public Lcom/android/systemui/pip/phone/PipMotionHelper;
.super Ljava/lang/Object;
.source "PipMotionHelper.java"

# interfaces
.implements Lcom/android/systemui/pip/phone/PipAppOpsListener$Callback;
.implements Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;


# instance fields
.field private final mAnimatingToBounds:Landroid/graphics/Rect;

.field private final mBounds:Landroid/graphics/Rect;

.field private final mConflictResolutionSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

.field private final mContext:Landroid/content/Context;

.field private mDismissalPending:Z

.field private mFlingConfigX:Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

.field private mFlingConfigY:Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

.field private final mFloatingAllowedArea:Landroid/graphics/Rect;

.field private mFloatingContentCoordinator:Lcom/android/systemui/util/FloatingContentCoordinator;

.field private mMagnetizedPip:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/magnetictarget/MagnetizedObject<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

.field private final mMovementBounds:Landroid/graphics/Rect;

.field private final mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

.field private final mPipTransitionCallback:Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;

.field private mPostPipTransitionCallback:Ljava/lang/Runnable;

.field private final mResizePipUpdateListener:Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mSfAnimationHandlerThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/dynamicanimation/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

.field private final mSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

.field private mSpringingToTouch:Z

.field private final mTemporaryBounds:Landroid/graphics/Rect;

.field private mTemporaryBoundsPhysicsAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateBoundsCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pip/PipTaskOrganizer;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/pip/PipSnapAlgorithm;Lcom/android/systemui/util/FloatingContentCoordinator;)V
    .locals 3

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMovementBounds:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBounds:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimatingToBounds:Landroid/graphics/Rect;

    .line 95
    sget-object v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$RrZMVALocL9uZCkjg8wwL2KXCvk;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$RrZMVALocL9uZCkjg8wwL2KXCvk;

    .line 96
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSfAnimationHandlerThreadLocal:Ljava/lang/ThreadLocal;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    .line 121
    new-instance v0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const v1, 0x44bb8000    # 1500.0f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 126
    new-instance v0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mConflictResolutionSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$9ryw0tgRGCMDitW4U_PfPc0I9v4;

    invoke-direct {v1, v0}, Lcom/android/systemui/pip/phone/-$$Lambda$9ryw0tgRGCMDitW4U_PfPc0I9v4;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mUpdateBoundsCallback:Ljava/util/function/Consumer;

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mDismissalPending:Z

    .line 151
    new-instance v0, Lcom/android/systemui/pip/phone/PipMotionHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMotionHelper$1;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mPipTransitionCallback:Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;

    .line 171
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    .line 173
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 174
    iput-object p4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    .line 175
    iput-object p5, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/systemui/util/FloatingContentCoordinator;

    .line 176
    invoke-virtual {p2, v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->registerPipTransitionCallback(Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;)V

    .line 177
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSfAnimationHandlerThreadLocal:Ljava/lang/ThreadLocal;

    .line 178
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 177
    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->setCustomAnimationHandler(Landroidx/dynamicanimation/animation/AnimationHandler;)V

    .line 180
    new-instance p1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$gFYsnnPg5VuNtmrmSp4hyWCABM0;

    invoke-direct {p1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$gFYsnnPg5VuNtmrmSp4hyWCABM0;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mResizePipUpdateListener:Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/phone/PipMotionHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mPostPipTransitionCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/pip/phone/PipMotionHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mPostPipTransitionCallback:Ljava/lang/Runnable;

    return-object p1
.end method

.method private cancelAnimations()V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancel()V

    .line 483
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimatingToBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    .line 484
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    return-void
.end method

.method public static synthetic lambda$D4DUlGhMZMGgehn4agfdjwJxbmQ(Lcom/android/systemui/pip/phone/PipMotionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->onBoundsAnimationEnd()V

    return-void
.end method

.method private synthetic lambda$expandPipToFullscreen$4(Z)V
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x12c

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->exitPip(I)V

    return-void
.end method

.method static synthetic lambda$flingToSnapTarget$5(Ljava/lang/Runnable;Landroid/graphics/Rect;Landroid/util/ArrayMap;)V
    .locals 0

    .line 386
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;J)V
    .locals 0

    .line 98
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$new$1(Ljava/lang/Runnable;)V
    .locals 2

    .line 98
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$31jMwXh6pIOVMPv1yiSY2M0mNc0;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$31jMwXh6pIOVMPv1yiSY2M0mNc0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method static synthetic lambda$new$2()Landroidx/dynamicanimation/animation/AnimationHandler;
    .locals 2

    .line 97
    sget-object v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$MQzENlE_8vJdAPY24RKT68frDRc;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$MQzENlE_8vJdAPY24RKT68frDRc;

    .line 99
    new-instance v1, Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-direct {v1, v0}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;)V

    return-object v1
.end method

.method private synthetic lambda$new$3(Landroid/graphics/Rect;Landroid/util/ArrayMap;)V
    .locals 1

    .line 181
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private onBoundsAnimationEnd()V
    .locals 2

    .line 534
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mDismissalPending:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMagnetizedPip:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    .line 536
    invoke-virtual {v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    move-result v0

    if-nez v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 538
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mDismissalPending:Z

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimatingToBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    .line 547
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    .line 548
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mDismissalPending:Z

    return-void
.end method

.method private rebuildFlingConfigs()V
    .locals 4

    .line 489
    new-instance v0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMovementBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v3, v2, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingConfigX:Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    .line 491
    new-instance v0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMovementBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-direct {v0, v3, v2, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingConfigY:Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    return-void
.end method

.method private resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mUpdateBoundsCallback:Ljava/util/function/Consumer;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    .line 586
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->setAnimatingToBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private resizePipUnchecked(Landroid/graphics/Rect;)V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mUpdateBoundsCallback:Ljava/util/function/Consumer;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private setAnimatingToBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimatingToBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 558
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/systemui/util/FloatingContentCoordinator;

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/FloatingContentCoordinator;->onContentMoved(Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;)V

    return-void
.end method

.method private startBoundsAnimator(FFZ)V
    .locals 2

    .line 503
    iget-boolean p3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    if-nez p3, :cond_0

    .line 504
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 509
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimatingToBounds:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 512
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 513
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, p2

    .line 509
    invoke-virtual {p3, p1, p2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 514
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimatingToBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->setAnimatingToBounds(Landroid/graphics/Rect;)V

    .line 516
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    .line 517
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mResizePipUpdateListener:Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;

    .line 518
    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->addUpdateListener(Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Runnable;

    const/4 p3, 0x0

    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$D4DUlGhMZMGgehn4agfdjwJxbmQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$D4DUlGhMZMGgehn4agfdjwJxbmQ;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    aput-object v0, p2, p3

    .line 519
    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    .line 522
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->start()V

    return-void
.end method


# virtual methods
.method animateDismiss()V
    .locals 5

    .line 420
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v1, Lcom/android/systemui/util/animation/FloatProperties;->RECT_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMovementBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 422
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const/4 v4, 0x0

    .line 421
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Runnable;

    new-instance v3, Lcom/android/systemui/pip/phone/-$$Lambda$kQFaBNknFROC8D1C4ywIb9w3JTU;

    invoke-direct {v3, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$kQFaBNknFROC8D1C4ywIb9w3JTU;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 425
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    .line 427
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 428
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v3, v0

    int-to-float v0, v3

    .line 427
    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->startBoundsAnimator(FFZ)V

    .line 431
    iput-boolean v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mDismissalPending:Z

    return-void
.end method

.method animateIntoDismissTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;FFZLkotlin/jvm/functions/Function0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;",
            "FFZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 272
    invoke-virtual {p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getCenterOnScreen()Landroid/graphics/PointF;

    move-result-object p1

    .line 274
    iget-object p4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    .line 275
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 277
    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p4, v2

    sub-float/2addr v1, v3

    .line 278
    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-float v2, v0, v2

    sub-float/2addr p1, v2

    .line 282
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v3, Lcom/android/systemui/util/animation/FloatProperties;->RECT_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 286
    invoke-virtual {v2, v3, v1, p2, v4}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object p2, Lcom/android/systemui/util/animation/FloatProperties;->RECT_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 287
    invoke-virtual {v2, p2, p1, p3, v3}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object p2, Lcom/android/systemui/util/animation/FloatProperties;->RECT_WIDTH:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 288
    invoke-virtual {v2, p2, p4, p3}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object p2, Lcom/android/systemui/util/animation/FloatProperties;->RECT_HEIGHT:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 289
    invoke-virtual {v2, p2, v0, p3}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    const/4 p2, 0x1

    new-array p2, p2, [Lkotlin/jvm/functions/Function0;

    const/4 p3, 0x0

    aput-object p5, p2, p3

    .line 290
    invoke-virtual {v2, p2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->withEndActions([Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    .line 292
    invoke-direct {p0, v1, p1, p3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->startBoundsAnimator(FFZ)V

    return-void
.end method

.method animateToBounds(Landroid/graphics/Rect;Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)V
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v1, Lcom/android/systemui/util/animation/FloatProperties;->RECT_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 409
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v1, Lcom/android/systemui/util/animation/FloatProperties;->RECT_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 410
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    .line 411
    iget p2, p1, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->startBoundsAnimator(FFZ)V

    return-void
.end method

.method animateToExpandedState(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)F
    .locals 3

    .line 439
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p2

    .line 440
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/systemui/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 441
    iput-object p4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mPostPipTransitionCallback:Ljava/lang/Runnable;

    const/16 p3, 0xfa

    .line 442
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V

    return p2
.end method

.method animateToOffset(Landroid/graphics/Rect;I)V
    .locals 2

    .line 473
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 474
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mUpdateBoundsCallback:Ljava/util/function/Consumer;

    const/16 v1, 0x12c

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleOffsetPip(Landroid/graphics/Rect;IILjava/util/function/Consumer;)V

    return-void
.end method

.method animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 453
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0, p4}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p2

    .line 456
    :cond_0
    iget-object p4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    invoke-virtual {p4, p1, p3, p2}, Lcom/android/systemui/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    if-eqz p5, :cond_1

    .line 459
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0xfa

    .line 461
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V

    :goto_0
    return-void
.end method

.method public dismissPip()V
    .locals 1

    .line 332
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenuWithoutResize()V

    .line 334
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->removePip()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PipMotionHelper"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mBounds="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method expandPipToFullscreen()V
    .locals 1

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPipToFullscreen(Z)V

    return-void
.end method

.method expandPipToFullscreen(Z)V
    .locals 2

    .line 315
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenuWithoutResize()V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->getUpdateHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$DIpABs6m90Rbn22kkYOCyudYmjU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$DIpABs6m90Rbn22kkYOCyudYmjU;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method flingToSnapTarget(FFLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    const/4 v0, 0x0

    .line 372
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    .line 374
    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v1, Lcom/android/systemui/util/animation/FloatProperties;->RECT_WIDTH:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 375
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v7, v1, v2, v3}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v1, Lcom/android/systemui/util/animation/FloatProperties;->RECT_HEIGHT:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 376
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v7, v1, v2, v3}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v2, Lcom/android/systemui/util/animation/FloatProperties;->RECT_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingConfigX:Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const/4 v6, 0x1

    move-object v1, v7

    move v3, p1

    .line 377
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/util/animation/PhysicsAnimator;->flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;Z)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v1, Lcom/android/systemui/util/animation/FloatProperties;->RECT_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingConfigY:Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 380
    invoke-virtual {v7, v1, p2, v2, v3}, Lcom/android/systemui/util/animation/PhysicsAnimator;->flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Runnable;

    aput-object p4, v1, v0

    .line 382
    invoke-virtual {v7, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    if-eqz p3, :cond_0

    .line 385
    iget-object p4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$RVXvgZtm0KgNxCTN1lZrhxeqyE8;

    invoke-direct {v1, p3}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$RVXvgZtm0KgNxCTN1lZrhxeqyE8;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p4, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->addUpdateListener(Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    :cond_0
    const/4 p3, 0x0

    cmpg-float p1, p1, p3

    if-gez p1, :cond_1

    .line 389
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMovementBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMovementBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    int-to-float p1, p1

    .line 390
    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    iget-object p4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingConfigY:Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    .line 391
    invoke-static {p3, p2, p4}, Lcom/android/systemui/util/animation/PhysicsAnimator;->estimateFlingEndValue(FFLcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;)F

    move-result p2

    .line 394
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->startBoundsAnimator(FFZ)V

    return-void
.end method

.method public getAllowedFloatingBoundsRegion()Landroid/graphics/Rect;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method getBounds()Landroid/graphics/Rect;
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getFloatingBoundsOnScreen()Landroid/graphics/Rect;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimatingToBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimatingToBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    :goto_0
    return-object p0
.end method

.method getMagnetizedPip()Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/systemui/util/magnetictarget/MagnetizedObject<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMagnetizedPip:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    if-nez v0, :cond_0

    .line 595
    new-instance v0, Lcom/android/systemui/pip/phone/PipMotionHelper$2;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBounds:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/systemui/util/animation/FloatProperties;->RECT_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v6, Lcom/android/systemui/util/animation/FloatProperties;->RECT_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/pip/phone/PipMotionHelper$2;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;Landroid/content/Context;Landroid/graphics/Rect;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMagnetizedPip:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    .line 616
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMagnetizedPip:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    return-object p0
.end method

.method getPossiblyAnimatingBounds()Landroid/graphics/Rect;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBounds:Landroid/graphics/Rect;

    :goto_0
    return-object p0
.end method

.method public synthetic lambda$expandPipToFullscreen$4$PipMotionHelper(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->lambda$expandPipToFullscreen$4(Z)V

    return-void
.end method

.method public synthetic lambda$new$3$PipMotionHelper(Landroid/graphics/Rect;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->lambda$new$3(Landroid/graphics/Rect;Landroid/util/ArrayMap;)V

    return-void
.end method

.method movePip(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method movePip(Landroid/graphics/Rect;Z)V
    .locals 3

    if-nez p2, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/systemui/util/FloatingContentCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/FloatingContentCoordinator;->onContentMoved(Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;)V

    .line 241
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    if-nez v0, :cond_2

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    if-nez p2, :cond_1

    .line 247
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizePipUnchecked(Landroid/graphics/Rect;)V

    .line 248
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 251
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v0, Lcom/android/systemui/util/animation/FloatProperties;->RECT_WIDTH:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 257
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v0, Lcom/android/systemui/util/animation/FloatProperties;->RECT_HEIGHT:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 258
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v0, Lcom/android/systemui/util/animation/FloatProperties;->RECT_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 259
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v0, Lcom/android/systemui/util/animation/FloatProperties;->RECT_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 260
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    .line 262
    iget p2, p1, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->startBoundsAnimator(FFZ)V

    :goto_0
    return-void
.end method

.method public moveToBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mConflictResolutionSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToBounds(Landroid/graphics/Rect;Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)V

    return-void
.end method

.method notifyDismissalPending()V
    .locals 1

    const/4 v0, 0x1

    .line 530
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mDismissalPending:Z

    return-void
.end method

.method setCurrentMovementBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 340
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->rebuildFlingConfigs()V

    .line 344
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 345
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 346
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method setSpringingToTouch(Z)V
    .locals 0

    .line 297
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    return-void
.end method

.method synchronizePinnedStackBounds()V
    .locals 2

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->getLastReportedBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mTemporaryBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->isInPip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/systemui/util/FloatingContentCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/FloatingContentCoordinator;->onContentMoved(Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;)V

    :cond_0
    return-void
.end method
