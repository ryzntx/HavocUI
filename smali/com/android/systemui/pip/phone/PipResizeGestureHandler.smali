.class public Lcom/android/systemui/pip/phone/PipResizeGestureHandler;
.super Ljava/lang/Object;
.source "PipResizeGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipResizeGestureHandler$SysUiInputEventReceiver;
    }
.end annotation


# instance fields
.field private mAllowGesture:Z

.field private final mContext:Landroid/content/Context;

.field private mCtrlType:I

.field private mDelta:I

.field private final mDisplayBounds:Landroid/graphics/Rect;

.field private final mDisplayId:I

.field private final mDownPoint:Landroid/graphics/PointF;

.field private final mDragCornerSize:Landroid/graphics/Rect;

.field private mEnableUserResize:Z

.field private mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private mIsAttached:Z

.field private mIsEnabled:Z

.field private final mLastDownBounds:Landroid/graphics/Rect;

.field private final mLastResizeBounds:Landroid/graphics/Rect;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mMaxSize:Landroid/graphics/Point;

.field private final mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

.field private final mMinSize:Landroid/graphics/Point;

.field private final mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

.field private final mMovementBoundsSupplier:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

.field private mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

.field private mPipUiEventLogger:Lcom/android/systemui/pip/PipUiEventLogger;

.field private final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field private mThresholdCrossed:Z

.field private final mTmpBottomLeftCorner:Landroid/graphics/Rect;

.field private final mTmpBottomRightCorner:Landroid/graphics/Rect;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mTmpTopLeftCorner:Landroid/graphics/Rect;

.field private final mTmpTopRightCorner:Landroid/graphics/Rect;

.field private mTouchSlop:F

.field private final mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

.field private final mUserResizeBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pip/PipBoundsHandler;Lcom/android/systemui/pip/phone/PipMotionHelper;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/pip/PipTaskOrganizer;Lcom/android/systemui/pip/phone/PipMenuActivityController;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/pip/PipUiEventLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/pip/PipBoundsHandler;",
            "Lcom/android/systemui/pip/phone/PipMotionHelper;",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            "Lcom/android/systemui/pip/PipTaskOrganizer;",
            "Lcom/android/systemui/pip/phone/PipMenuActivityController;",
            "Ljava/util/function/Function<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lcom/android/systemui/model/SysUiState;",
            "Lcom/android/systemui/pip/PipUiEventLogger;",
            ")V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    .line 89
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 90
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    .line 91
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    .line 124
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDisplayId:I

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 127
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    .line 128
    iput-object p6, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 129
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    .line 130
    iput-object p5, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    .line 131
    iput-object p7, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMovementBoundsSupplier:Ljava/util/function/Function;

    .line 132
    iput-object p8, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

    .line 133
    iput-object p9, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 134
    iput-object p10, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mPipUiEventLogger:Lcom/android/systemui/pip/PipUiEventLogger;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->reloadResources()V

    const-string p1, "systemui"

    const-string p2, "pip_user_resize"

    const/4 p3, 0x1

    .line 139
    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mEnableUserResize:Z

    .line 143
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/android/systemui/pip/phone/PipResizeGestureHandler$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler$1;-><init>(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;)V

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mEnableUserResize:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;Landroid/view/InputEvent;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private disposeInputChannel()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 176
    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 180
    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_1
    return-void
.end method

.method private isInValidSysUiState()Z
    .locals 1

    .line 295
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {p0}, Lcom/android/systemui/model/SysUiState;->getFlags()I

    move-result p0

    const v0, 0xca4c

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onMotionEvent$0()V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 349
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->resetState()V

    return-void
.end method

.method private synthetic lambda$onMotionEvent$1(Landroid/graphics/Rect;)V
    .locals 1

    .line 347
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipResizeGestureHandler$Z3nEFx0Z3KpDDBgJ9VHLzJ4HnEg;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipResizeGestureHandler$Z3nEFx0Z3KpDDBgJ9VHLzJ4HnEg;-><init>(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    .line 213
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 214
    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 14

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 p1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->isInValidSysUiState()Z

    move-result v0

    if-eqz v0, :cond_0

    float-to-int v0, v1

    float-to-int v4, v2

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->isWithinTouchRegion(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move p1, v3

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    if-eqz p1, :cond_9

    float-to-int p1, v1

    float-to-int v0, v2

    .line 306
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->setCtrlType(II)V

    .line 307
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 308
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 311
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    if-eqz v4, :cond_9

    if-eq v0, v3, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 315
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    goto/16 :goto_0

    .line 319
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float v4, v1, v4

    float-to-double v4, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, v2, v0

    float-to-double v6, v0

    .line 320
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    iget v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    float-to-double v6, v0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_4

    .line 321
    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 323
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 326
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    if-eqz v0, :cond_9

    .line 327
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->isMenuActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 328
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenuWithoutResize()V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenu()V

    .line 331
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 332
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    .line 335
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v13, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v12, v13, :cond_6

    move p1, v3

    :cond_6
    move v3, v6

    move v6, v7

    move v7, v9

    move-object v9, v10

    move v10, v11

    move v11, p1

    .line 332
    invoke-static/range {v1 .. v11}, Lcom/android/internal/policy/TaskResizingAlgorithm;->resizeDrag(FFFFLandroid/graphics/Rect;IIILandroid/graphics/Point;ZZ)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 336
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/systemui/pip/PipBoundsHandler;->transformBoundsToAspectRatio(Landroid/graphics/Rect;)V

    .line 337
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 343
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 344
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 345
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipResizeGestureHandler$RnFltK7-aDIBKCAT3ErPSvbZbyg;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipResizeGestureHandler$RnFltK7-aDIBKCAT3ErPSvbZbyg;-><init>(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 353
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mPipUiEventLogger:Lcom/android/systemui/pip/PipUiEventLogger;

    sget-object p1, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_RESIZE:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/PipUiEventLogger;->log(Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;)V

    goto :goto_0

    .line 356
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->resetState()V

    :cond_9
    :goto_0
    return-void
.end method

.method private reloadResources()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 161
    sget v1, Lcom/android/systemui/R$dimen;->pip_resize_edge_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 162
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    return-void
.end method

.method private resetDragCorners()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDelta:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private resetState()V
    .locals 1

    const/4 v0, 0x0

    .line 364
    iput v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 365
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 366
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    return-void
.end method

.method private setCtrlType(II)V
    .locals 7

    .line 262
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMovementBoundsSupplier:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 265
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 267
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 268
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v1, v6

    .line 265
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 270
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eq v1, v2, :cond_0

    .line 272
    iget v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x4

    .line 273
    iput v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_1

    .line 277
    iget v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x4

    .line 278
    iput v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_2

    .line 283
    iget v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x8

    .line 284
    iput v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p1, v1, :cond_3

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    if-eq p1, p2, :cond_3

    .line 289
    iget p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 p1, p1, 0x8

    .line 290
    iput p1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    :cond_3
    return-void
.end method

.method private updateIsEnabled()V
    .locals 3

    .line 196
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mEnableUserResize:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 197
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    if-ne v0, v1, :cond_1

    return-void

    .line 200
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->disposeInputChannel()V

    .line 203
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    if-eqz v0, :cond_2

    .line 205
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDisplayId:I

    const-string v2, "pip-resize"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 207
    new-instance v0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler$SysUiInputEventReceiver;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 208
    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler$SysUiInputEventReceiver;-><init>(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PipResizeGestureHandler"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAllowGesture="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsAttached="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mEnableUserResize="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mEnableUserResize:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mThresholdCrossed="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getUserResizeBounds()Landroid/graphics/Rect;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method invalidateUserResizeBounds()V
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public isWithinTouchRegion(II)Z
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->resetDragCorners()V

    .line 238
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 240
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 242
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 244
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 249
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 250
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 251
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 253
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onMotionEvent$0$PipResizeGestureHandler()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->lambda$onMotionEvent$0()V

    return-void
.end method

.method public synthetic lambda$onMotionEvent$1$PipResizeGestureHandler(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->lambda$onMotionEvent$1(Landroid/graphics/Rect;)V

    return-void
.end method

.method onActivityPinned()V
    .locals 1

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method onActivityUnpinned()V
    .locals 1

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    .line 191
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->reloadResources()V

    return-void
.end method

.method setUserResizeBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method updateMaxSize(II)V
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method updateMinSize(II)V
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public willStartResizeGesture(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->mEnableUserResize:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->isInValidSysUiState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->isWithinTouchRegion(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
