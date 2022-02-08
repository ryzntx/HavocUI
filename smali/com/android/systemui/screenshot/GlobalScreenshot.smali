.class public Lcom/android/systemui/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;,
        Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;,
        Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;
    }
.end annotation


# instance fields
.field private final mAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mActionsContainer:Landroid/widget/HorizontalScrollView;

.field private mActionsContainerBackground:Landroid/widget/ImageView;

.field private mActionsView:Landroid/widget/LinearLayout;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundProtection:Landroid/widget/ImageView;

.field private mCamCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCamsInUse:I

.field private mCancelButton:Landroid/view/View;

.field private mCaptureButton:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mCornerSizeX:F

.field private mDirectionLTR:Z

.field private mDismissAnimation:Landroid/animation/Animator;

.field private mDismissButton:Landroid/widget/FrameLayout;

.field private mDismissDeltaY:F

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mFastOutSlowIn:Landroid/view/animation/Interpolator;

.field private mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

.field private mInDarkMode:Z

.field private mLeftInset:I

.field private mNavMode:I

.field private final mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

.field private mOnCompleteRunnable:Ljava/lang/Runnable;

.field private mOrientationPortrait:Z

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRightInset:I

.field private mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenshotAnimatedView:Landroid/widget/ImageView;

.field private mScreenshotAnimation:Landroid/animation/Animator;

.field private mScreenshotButtonsLayout:Landroid/widget/LinearLayout;

.field private mScreenshotFlash:Landroid/widget/ImageView;

.field private final mScreenshotHandler:Landroid/os/Handler;

.field private mScreenshotLayout:Landroid/view/View;

.field private mScreenshotPreview:Landroid/widget/ImageView;

.field private mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

.field private final mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

.field private mTaskComponentName:Landroid/content/ComponentName;

.field private final mTaskListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/systemui/screenshot/ScreenshotSmartActions;Lcom/android/systemui/screenshot/ScreenshotNotificationsController;Lcom/android/internal/logging/UiEventLogger;Ljava/util/concurrent/Executor;)V
    .locals 9

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 239
    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCamsInUse:I

    .line 248
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    .line 270
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$2;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTaskListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 1321
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$13;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCamCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 300
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 301
    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    .line 302
    iput-object p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    .line 303
    iput-object p5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->reloadAssets()V

    .line 306
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    .line 307
    invoke-virtual {p3}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mInDarkMode:Z

    .line 308
    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p4

    const/4 p5, 0x1

    if-nez p4, :cond_0

    move p4, p5

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    iput-boolean p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    .line 309
    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne p3, p5, :cond_1

    goto :goto_1

    :cond_1
    move p5, v0

    :goto_1
    iput-boolean p5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOrientationPortrait:Z

    .line 312
    new-instance p3, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x7f4

    const v7, 0xe0520

    const/4 v8, -0x3

    move-object v1, p3

    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string p4, "ScreenshotAnimation"

    .line 322
    invoke-virtual {p3, p4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 323
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p4, 0x3

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 324
    invoke-virtual {p3, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string/jumbo p3, "window"

    .line 325
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    .line 326
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    .line 327
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 328
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {p3, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 330
    sget p1, Lcom/android/systemui/R$dimen;->global_screenshot_x_scale:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCornerSizeX:F

    .line 331
    sget p1, Lcom/android/systemui/R$dimen;->screenshot_dismissal_height_delta:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissDeltaY:F

    .line 333
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const p2, 0x10c000d

    .line 334
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    .line 337
    new-instance p1, Landroid/media/MediaActionSound;

    invoke-direct {p1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    .line 338
    invoke-virtual {p1, v0}, Landroid/media/MediaActionSound;->load(I)V

    .line 341
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAudioManager:Landroid/media/AudioManager;

    .line 342
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    .line 343
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string p2, "camera"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 344
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCamCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    new-instance p3, Landroid/os/Handler;

    .line 345
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 344
    invoke-virtual {p1, p2, p3}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 348
    iput-object p6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 351
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPm:Landroid/content/pm/PackageManager;

    .line 354
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTaskListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 357
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTaskListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskStackChanged()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/FrameLayout;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1508(Lcom/android/systemui/screenshot/GlobalScreenshot;)I
    .locals 2

    .line 116
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCamsInUse:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCamsInUse:I

    return v0
.end method

.method static synthetic access$1510(Lcom/android/systemui/screenshot/GlobalScreenshot;)I
    .locals 2

    .line 116
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCamsInUse:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCamsInUse:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotActionsShadeAnimation(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showUiOnActionsReady(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/util/function/Consumer;Landroid/graphics/Rect;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotInternal(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotNotificationsController;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTaskComponentName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->clearScreenshot()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/os/Handler;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->logSuccessOnActionsReady(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    return-void
.end method

.method private aspectRatiosMatch(Landroid/graphics/Bitmap;Landroid/graphics/Insets;Landroid/graphics/Rect;)Z
    .locals 6

    .line 1238
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    iget v0, p2, Landroid/graphics/Insets;->left:I

    sub-int/2addr p0, v0

    iget v0, p2, Landroid/graphics/Insets;->right:I

    sub-int/2addr p0, v0

    .line 1239
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p2, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    const-string v2, "GlobalScreenshot"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    .line 1241
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-eqz v5, :cond_3

    .line 1242
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    int-to-float p0, p0

    int-to-float p1, v0

    div-float/2addr p0, p1

    .line 1250
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    sub-float p2, p0, p1

    .line 1252
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const p3, 0x3dcccccd    # 0.1f

    cmpg-float p2, p2, p3

    if-gez p2, :cond_1

    move p2, v3

    goto :goto_0

    :cond_1
    move p2, v4

    :goto_0
    if-nez p2, :cond_2

    new-array p3, v1, [Ljava/lang/Object;

    .line 1255
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p3, v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p3, v3

    const-string p0, "aspectRatiosMatch: don\'t match bitmap: %f, bounds: %f"

    .line 1254
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p2

    :cond_3
    :goto_1
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    .line 1245
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p0, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    aput-object p2, p0, v1

    const-string p1, "Provided bitmap and insets create degenerate region: %dx%d %s"

    .line 1243
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private clearScreenshot()V
    .locals 5

    .line 1183
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1189
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1191
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1192
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1193
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundProtection:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1194
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1195
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1196
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1197
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 1198
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$string;->screenshot_preview_description:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1197
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1199
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1200
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1201
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1202
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    .line 1203
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1204
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1205
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->hideScreenshotSelector()V

    return-void
.end method

.method private createScreenDrawable(Landroid/graphics/Bitmap;Landroid/graphics/Insets;)Landroid/graphics/drawable/Drawable;
    .locals 10

    .line 1265
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p2, Landroid/graphics/Insets;->left:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v1

    .line 1266
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p2, Landroid/graphics/Insets;->top:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v2

    .line 1268
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v3, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p0, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1269
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1270
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1278
    :cond_0
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p2, Landroid/graphics/Insets;->left:I

    int-to-float v2, v2

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v2, v4

    int-to-float v0, v0

    div-float v5, v2, v0

    iget v2, p2, Landroid/graphics/Insets;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    int-to-float v1, v1

    div-float v6, v2, v1

    iget v2, p2, Landroid/graphics/Insets;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float v0, v2, v0

    iget v2, p2, Landroid/graphics/Insets;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float v7, v2, v1

    move-object v2, p1

    move v4, v5

    move v5, v6

    move v6, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    .line 1284
    iget v0, p2, Landroid/graphics/Insets;->left:I

    if-ltz v0, :cond_2

    iget v0, p2, Landroid/graphics/Insets;->top:I

    if-ltz v0, :cond_2

    iget v0, p2, Landroid/graphics/Insets;->right:I

    if-ltz v0, :cond_2

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    .line 1287
    :cond_2
    :goto_0
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    new-array p0, p0, [Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v0, p0, v9

    aput-object p1, p0, v8

    invoke-direct {p2, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p2

    :cond_3
    :goto_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1274
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v8

    aput-object p2, v0, p0

    const-string p0, "Can\'t create insetted drawable, using 0 insets bitmap and insets create degenerate region: %dx%d %s"

    .line 1271
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "GlobalScreenshot"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private createScreenshotActionsShadeAnimation(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)Landroid/animation/ValueAnimator;
    .locals 7

    .line 1041
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1042
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1043
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1044
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 1045
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 1050
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    :catch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    iget-object v2, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->smartActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    .line 1057
    sget v5, Lcom/android/systemui/R$layout;->global_screenshot_action_chip:I

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    .line 1059
    iget-object v6, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    invoke-virtual {v3}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIcon(Landroid/graphics/drawable/Icon;Z)V

    .line 1061
    iget-object v3, v3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v4, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$deR5VV74LCeDEt_DeTtDcwgLbwM;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$deR5VV74LCeDEt_DeTtDcwgLbwM;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setPendingIntent(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    .line 1067
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1068
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1071
    :cond_0
    sget v2, Lcom/android/systemui/R$layout;->global_screenshot_action_chip:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    .line 1073
    iget-object v3, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->shareAction:Landroid/app/Notification$Action;

    iget-object v3, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    iget-object v3, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->shareAction:Landroid/app/Notification$Action;

    invoke-virtual {v3}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIcon(Landroid/graphics/drawable/Icon;Z)V

    .line 1075
    iget-object v3, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->shareAction:Landroid/app/Notification$Action;

    iget-object v3, v3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v6, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$00CXa1TjxXNXPPGs9L5jDFCH-ik;

    invoke-direct {v6, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$00CXa1TjxXNXPPGs9L5jDFCH-ik;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v2, v3, v6}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setPendingIntent(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    .line 1080
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1081
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    sget v2, Lcom/android/systemui/R$layout;->global_screenshot_action_chip:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    .line 1085
    iget-object v3, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->editAction:Landroid/app/Notification$Action;

    iget-object v3, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    iget-object v3, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->editAction:Landroid/app/Notification$Action;

    invoke-virtual {v3}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIcon(Landroid/graphics/drawable/Icon;Z)V

    .line 1087
    iget-object v3, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->editAction:Landroid/app/Notification$Action;

    iget-object v3, v3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v6, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2ceULSc3ZwJrvKmp9b77sRDJEjM;

    invoke-direct {v6, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2ceULSc3ZwJrvKmp9b77sRDJEjM;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v2, v3, v6}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setPendingIntent(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    .line 1092
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1093
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    sget v2, Lcom/android/systemui/R$layout;->global_screenshot_action_chip:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    .line 1097
    iget-object v2, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->deleteAction:Landroid/app/Notification$Action;

    iget-object v2, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    iget-object v2, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->deleteAction:Landroid/app/Notification$Action;

    invoke-virtual {v2}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIcon(Landroid/graphics/drawable/Icon;Z)V

    .line 1099
    iget-object v2, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->deleteAction:Landroid/app/Notification$Action;

    iget-object v2, v2, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v3, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$8Mui1iV1mOjCvF_A0dOgL9ODfSs;

    invoke-direct {v3, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$8Mui1iV1mOjCvF_A0dOgL9ODfSs;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setPendingIntent(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    .line 1104
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1105
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$mXpq4ujIpJcDd-eVwI3W-FeaFQ8;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$mXpq4ujIpJcDd-eVwI3W-FeaFQ8;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1117
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->editAction:Landroid/app/Notification$Action;

    iget-object p1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1120
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    .line 1121
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1122
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 1124
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v2, 0xc8

    .line 1125
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const v0, 0x3d4ccccd    # 0.05f

    .line 1128
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 1129
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1130
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1131
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1133
    new-instance v2, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ojZI-uJ0nh_k3w5wtMQySuCbpq8;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ojZI-uJ0nh_k3w5wtMQySuCbpq8;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;FLjava/util/ArrayList;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createScreenshotDismissAnimation()Landroid/animation/AnimatorSet;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1156
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x32

    .line 1157
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v2, 0xb7

    .line 1158
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1159
    new-instance v2, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$as9SaWxSVoL1RNfmTY76ykg4Ug0;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$as9SaWxSVoL1RNfmTY76ykg4Ug0;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 1163
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1164
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x15e

    .line 1165
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1166
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v2

    .line 1167
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    .line 1168
    new-instance v4, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$-v2AWE3OzpSJEjZ5kgJDPmNkJQQ;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$-v2AWE3OzpSJEjZ5kgJDPmNkJQQ;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;FF)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1176
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1177
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createScreenshotDropInAnimation(Landroid/graphics/Rect;Z)Landroid/animation/AnimatorSet;
    .locals 18

    move-object/from16 v9, p0

    .line 919
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 920
    iget-object v1, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 922
    iget v1, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCornerSizeX:F

    .line 923
    iget-boolean v2, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOrientationPortrait:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    div-float v10, v1, v2

    .line 926
    iget-object v1, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 927
    iget-object v1, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 929
    iget-object v1, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 930
    iget-object v1, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 932
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 933
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v14

    const-wide/16 v2, 0x85

    .line 934
    invoke-virtual {v14, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 935
    iget-object v2, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 936
    new-instance v2, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$FznO9pcWSKMrlczjd_wVUkJmzP0;

    invoke-direct {v2, v9}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$FznO9pcWSKMrlczjd_wVUkJmzP0;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v14, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [F

    .line 939
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    const-wide/16 v2, 0xd9

    .line 940
    invoke-virtual {v15, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 941
    iget-object v2, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 942
    new-instance v2, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$FtPGuXpVeQ6K0jMh6KSd6oZe53s;

    invoke-direct {v2, v9}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$FtPGuXpVeQ6K0jMh6KSd6oZe53s;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v15, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 946
    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v5, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 947
    new-instance v8, Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v8, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-array v0, v1, [F

    .line 949
    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    const-wide/16 v0, 0x1f4

    .line 950
    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const v4, 0x3eef9db2    # 0.468f

    const v16, 0x3ecccccd    # 0.4f

    const v2, 0x3eef9db2    # 0.468f

    .line 957
    new-instance v6, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$5NP28SuhnTpTqrLpT-hFcoqaXCg;

    move-object v0, v6

    move-object/from16 v1, p0

    move v3, v10

    move-object v12, v6

    move-object v6, v8

    move-object v11, v7

    move-object/from16 v7, p1

    move/from16 v17, v10

    move-object v10, v8

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$5NP28SuhnTpTqrLpT-hFcoqaXCg;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;FFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Rect;F)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 997
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;

    invoke-direct {v0, v9}, Lcom/android/systemui/screenshot/GlobalScreenshot$11;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1005
    iget-object v0, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1006
    iget-object v0, v9, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_1

    .line 1009
    invoke-virtual {v13, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1010
    invoke-virtual {v13, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1012
    :cond_1
    invoke-virtual {v13, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1015
    :goto_1
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot$12;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/graphics/PointF;Landroid/graphics/Rect;F)V

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v13

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getForegroundAppLabel()Ljava/lang/String;
    .locals 3

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTaskComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 288
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isUserSetupComplete()Z
    .locals 2

    .line 1232
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private synthetic lambda$createScreenshotActionsShadeAnimation$18()V
    .locals 2

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SMART_ACTION_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const-string v0, "chip tapped"

    const/4 v1, 0x0

    .line 1064
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    .line 1065
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createScreenshotActionsShadeAnimation$19()V
    .locals 2

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SHARE_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const-string v0, "chip tapped"

    const/4 v1, 0x0

    .line 1077
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    .line 1078
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createScreenshotActionsShadeAnimation$20()V
    .locals 2

    .line 1088
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_EDIT_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const-string v0, "chip tapped"

    const/4 v1, 0x0

    .line 1089
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    .line 1090
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createScreenshotActionsShadeAnimation$21()V
    .locals 2

    .line 1100
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_DELETE_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const-string v0, "chip tapped"

    const/4 v1, 0x0

    .line 1101
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    .line 1102
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createScreenshotActionsShadeAnimation$22(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;Landroid/view/View;)V
    .locals 0

    .line 1109
    :try_start_0
    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->editAction:Landroid/app/Notification$Action;

    iget-object p1, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V

    .line 1110
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_PREVIEW_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const-string p1, "screenshot preview tapped"

    const/4 p2, 0x0

    .line 1111
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    .line 1112
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "GlobalScreenshot"

    const-string p2, "Intent cancelled"

    .line 1114
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$createScreenshotActionsShadeAnimation$23(FLjava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1134
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    .line 1135
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundProtection:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    cmpg-float v0, p3, p1

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    div-float p1, p3, p1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1137
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 1138
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    const p1, 0x3f333333    # 0.7f

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    .line 1141
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setScaleX(F)V

    .line 1142
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1143
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    .line 1144
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    div-float v2, v1, v0

    .line 1145
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    goto :goto_1

    .line 1147
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    iget-boolean p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p2

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    .line 1148
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    iget-boolean p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    move p2, p3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setPivotX(F)V

    .line 1149
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    .line 1150
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    int-to-float p3, p0

    .line 1149
    :goto_4
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setPivotX(F)V

    return-void
.end method

.method private synthetic lambda$createScreenshotDismissAnimation$24(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1160
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$createScreenshotDismissAnimation$25(FFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1169
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissDeltaY:F

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    const/4 v1, 0x0

    invoke-static {v1, v0, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p3

    .line 1170
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    add-float/2addr p1, p3

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1171
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1172
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, p3}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    .line 1173
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$createScreenshotDropInAnimation$15(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 937
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$createScreenshotDropInAnimation$16(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 943
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$createScreenshotDropInAnimation$17(FFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Rect;FLandroid/animation/ValueAnimator;)V
    .locals 5

    .line 958
    invoke-virtual {p8}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p8

    cmpg-float v0, p8, p1

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    div-float p1, p8, p1

    .line 961
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 960
    invoke-static {v1, p2, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    .line 962
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 963
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0

    .line 965
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 966
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 969
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleX()F

    move-result p1

    .line 970
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getScaleY()F

    move-result p2

    cmpg-float v0, p8, p3

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v0, :cond_1

    .line 973
    iget v0, p4, Landroid/graphics/PointF;->x:F

    iget v3, p5, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    div-float p3, p8, p3

    .line 974
    invoke-interface {v4, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    .line 973
    invoke-static {v0, v3, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p3

    .line 975
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    div-float/2addr v3, v2

    sub-float/2addr p3, v3

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_1

    .line 977
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    iget v0, p5, Landroid/graphics/PointF;->x:F

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 979
    :goto_1
    iget p3, p4, Landroid/graphics/PointF;->y:F

    iget p4, p5, Landroid/graphics/PointF;->y:F

    iget-object p5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    .line 980
    invoke-interface {p5, p8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p5

    .line 979
    invoke-static {p3, p4, p5}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p3

    .line 981
    iget-object p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, p2

    div-float/2addr p5, v2

    sub-float/2addr p3, p5

    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setY(F)V

    cmpl-float p2, p8, p7

    if-ltz p2, :cond_3

    .line 984
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    sub-float/2addr p8, p7

    sub-float/2addr v1, p7

    div-float/2addr p8, v1

    invoke-virtual {p2, p8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 985
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getX()F

    move-result p2

    .line 986
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getY()F

    move-result p3

    .line 987
    iget-object p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p5, v2

    sub-float/2addr p3, p5

    invoke-virtual {p4, p3}, Landroid/widget/FrameLayout;->setY(F)V

    .line 988
    iget-boolean p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    if-eqz p3, :cond_2

    .line 989
    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    .line 990
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, p1

    add-float/2addr p2, p4

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    sub-float/2addr p2, p0

    .line 989
    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->setX(F)V

    goto :goto_2

    .line 992
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setX(F)V

    :cond_3
    :goto_2
    return-void
.end method

.method private synthetic lambda$reloadAssets$10(Landroid/view/View;)V
    .locals 1

    .line 686
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_EXPLICIT_DISMISSAL:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 687
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    if-eqz p1, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->showSilentScreenshotNotification(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    :cond_0
    const/4 p1, 0x0

    const-string v0, "dismiss_button"

    .line 690
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    .line 691
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$reloadAssets$7(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 627
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 629
    invoke-direct {p0, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setWindowFocusable(Z)V

    :cond_0
    return p2
.end method

.method private synthetic lambda$reloadAssets$8(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 634
    iget p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNavMode:I

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 636
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result p1

    .line 635
    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 637
    iget v0, p1, Landroid/graphics/Insets;->left:I

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mLeftInset:I

    .line 638
    iget p1, p1, Landroid/graphics/Insets;->right:I

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mRightInset:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 640
    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mRightInset:I

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mLeftInset:I

    .line 642
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$reloadAssets$9(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    const-string p2, "back pressed"

    .line 646
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p1
.end method

.method private synthetic lambda$saveScreenshotAndToast$11()V
    .locals 0

    .line 777
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->playShutterSound()V

    return-void
.end method

.method private synthetic lambda$showUiOnActionsReady$14(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 2

    .line 890
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$10;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$10;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 899
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotActionsShadeAnimation(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$startAnimation$12(Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 823
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation(Landroid/graphics/Rect;Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/Animator;

    .line 825
    new-instance p1, Lcom/android/systemui/screenshot/GlobalScreenshot$8;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$8;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-direct {p0, p3, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;)V

    .line 832
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->playShutterSound()V

    .line 834
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 835
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->buildLayer()V

    .line 836
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private synthetic lambda$startAnimation$13(Landroid/graphics/Insets;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V
    .locals 3

    .line 806
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 810
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenDrawable(Landroid/graphics/Bitmap;Landroid/graphics/Insets;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 809
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 811
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setAnimatedViewSize(II)V

    .line 813
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenDrawable(Landroid/graphics/Bitmap;Landroid/graphics/Insets;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 817
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 819
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$0q94u9VpIJXxLi0ShdGfIldAQ84;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$0q94u9VpIJXxLi0ShdGfIldAQ84;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$takeScreenshotPartial$0()V
    .locals 1

    .line 489
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureButton:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$takeScreenshotPartial$1(Landroid/graphics/Rect;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 489
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance p2, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$220wZdjlyqwjU2TLwifl-1RtvgI;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$220wZdjlyqwjU2TLwifl-1RtvgI;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$takeScreenshotPartial$2(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 494
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 495
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->hideScreenshotSelector()V

    return-void
.end method

.method private synthetic lambda$takeScreenshotPartial$3(Ljava/util/function/Consumer;Landroid/view/View;)V
    .locals 1

    .line 493
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2EH0TT5rMABeVuCiUtpQVb7wY9k;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$2EH0TT5rMABeVuCiUtpQVb7wY9k;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/util/function/Consumer;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$takeScreenshotPartial$4()V
    .locals 0

    .line 515
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->hideScreenshotSelector()V

    return-void
.end method

.method private synthetic lambda$takeScreenshotPartial$5(Ljava/util/function/Consumer;Landroid/view/View;)V
    .locals 2

    .line 499
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {p2}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object p2

    .line 500
    invoke-virtual {p0, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getRotationAdjustedRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    .line 501
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 502
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot$3;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/util/function/Consumer;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 515
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance p2, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$5K6EzAAiQU5xV18_QdCN7iZBdxc;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$5K6EzAAiQU5xV18_QdCN7iZBdxc;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$takeScreenshotPartial$6()V
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 519
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    return-void
.end method

.method private logSuccessOnActionsReady(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 1

    .line 909
    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->uri:Landroid/net/Uri;

    if-nez p1, :cond_0

    .line 910
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 911
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    sget p1, Lcom/android/systemui/R$string;->screenshot_failed_to_capture_text:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    goto :goto_0

    .line 914
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :goto_0
    return-void
.end method

.method private onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 558
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 560
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mInDarkMode:Z

    if-nez v0, :cond_1

    .line 561
    iput-boolean v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mInDarkMode:Z

    goto :goto_0

    .line 566
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mInDarkMode:Z

    if-eqz v0, :cond_1

    .line 567
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mInDarkMode:Z

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 573
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-eqz v3, :cond_3

    if-eq v3, v2, :cond_2

    goto :goto_3

    .line 581
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    if-eqz v3, :cond_4

    .line 582
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    goto :goto_2

    .line 575
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    if-nez v3, :cond_4

    .line 576
    iput-boolean v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDirectionLTR:Z

    :goto_2
    move v0, v2

    .line 589
    :cond_4
    :goto_3
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, v2, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    goto :goto_4

    .line 597
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOrientationPortrait:Z

    if-eqz p1, :cond_7

    .line 598
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOrientationPortrait:Z

    goto :goto_5

    .line 591
    :cond_6
    iget-boolean p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOrientationPortrait:Z

    if-nez p1, :cond_7

    .line 592
    iput-boolean v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOrientationPortrait:Z

    goto :goto_5

    :cond_7
    :goto_4
    move v2, v0

    :goto_5
    if-eqz v2, :cond_8

    .line 605
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->reloadAssets()V

    .line 608
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0094

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNavMode:I

    return-void
.end method

.method private playShutterSound()V
    .locals 7

    .line 1295
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->readCameraSoundForced()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCamsInUse:I

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1297
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-eq v3, v2, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    .line 1302
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1303
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x32

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1315
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, -0x2

    const-string v4, "screenshot_shutter_sound"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1317
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {p0, v1}, Landroid/media/MediaActionSound;->play(I)V

    :cond_4
    return-void
.end method

.method private readCameraSoundForced()Z
    .locals 2

    const-string v0, "audio.camerasound.force"

    const/4 v1, 0x0

    .line 1335
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 1336
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110040

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private reloadAssets()V
    .locals 6

    .line 617
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 619
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 623
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$layout;->global_screenshot:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    .line 624
    sget v4, Lcom/android/systemui/R$id;->global_screenshot_buttons:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotButtonsLayout:Landroid/widget/LinearLayout;

    .line 626
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$tGDn-j3Jmz8WYSTha9TFVqy9_c0;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$tGDn-j3Jmz8WYSTha9TFVqy9_c0;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 633
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$QVsMo9DNRJ3t1_Tyck5zbvYd8SA;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$QVsMo9DNRJ3t1_Tyck5zbvYd8SA;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 644
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$jRM8StSOVXF_-IUDzkr6hIQjaPw;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$jRM8StSOVXF_-IUDzkr6hIQjaPw;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 652
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 653
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 655
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_animated_view:I

    .line 656
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    .line 657
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 658
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$5;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 665
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_preview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 666
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 667
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$6;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 675
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_actions_container_background:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainerBackground:Landroid/widget/ImageView;

    .line 677
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_actions_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    .line 679
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_actions:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsView:Landroid/widget/LinearLayout;

    .line 680
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_actions_background:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundProtection:Landroid/widget/ImageView;

    .line 682
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_selector_capture:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureButton:Landroid/view/View;

    .line 683
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_selector_cancel:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCancelButton:Landroid/view/View;

    .line 684
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_dismiss_button:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    .line 685
    new-instance v4, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$Hw47o_H0MYsQGF5zAFpsZTPAzB0;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$Hw47o_H0MYsQGF5zAFpsZTPAzB0;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_flash:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 695
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_selector:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    .line 696
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 697
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 698
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 699
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 700
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 701
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    if-eqz v0, :cond_2

    .line 704
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private saveScreenshot(Landroid/graphics/Bitmap;Ljava/util/function/Consumer;Landroid/graphics/Rect;Landroid/graphics/Insets;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Insets;",
            "Z)V"
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 730
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REENTERED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {v0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_1
    const-string v0, "new screenshot requested"

    .line 733
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    .line 736
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_3

    .line 739
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    sget p3, Lcom/android/systemui/R$string;->screenshot_failed_to_capture_text:I

    invoke-virtual {p1, p3}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    const/4 p1, 0x0

    .line 741
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 742
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 746
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isUserSetupComplete()Z

    move-result p1

    if-nez p1, :cond_4

    .line 749
    invoke-direct {p0, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotAndToast(Ljava/util/function/Consumer;)V

    return-void

    .line 754
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 755
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 757
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 759
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissAnimation:Landroid/animation/Animator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 760
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissAnimation:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 764
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setWindowFocusable(Z)V

    .line 767
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimation(Ljava/util/function/Consumer;Landroid/graphics/Rect;Landroid/graphics/Insets;Z)V

    return-void
.end method

.method private saveScreenshotAndToast(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$m1JGmGuhc0mw13SnvZQerlhqR3k;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$m1JGmGuhc0mw13SnvZQerlhqR3k;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 780
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$7;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/util/function/Consumer;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;)V

    return-void
.end method

.method private saveScreenshotInWorkerThread(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;",
            ")V"
        }
    .end annotation

    .line 846
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;-><init>()V

    .line 847
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 848
    iput-object p1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->finisher:Ljava/util/function/Consumer;

    .line 849
    iput-object p2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;

    .line 850
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getForegroundAppLabel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->appLabel:Ljava/lang/String;

    .line 852
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    if-eqz p1, :cond_0

    .line 854
    new-instance p2, Lcom/android/systemui/screenshot/GlobalScreenshot$9;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$9;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->setActionsReadyListener(Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;)V

    :cond_0
    const/4 p1, 0x0

    .line 862
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    .line 863
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->reset()V

    .line 864
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->setImage(Landroid/graphics/Bitmap;)V

    .line 866
    new-instance p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    invoke-direct {p1, p2, v1, v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/ScreenshotSmartActions;Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 867
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setAnimatedViewSize(II)V
    .locals 1

    .line 1209
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1210
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1211
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1212
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimatedView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setWindowFocusable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1222
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 1224
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1226
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1227
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private showUiOnActionsReady(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 4

    .line 874
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->logSuccessOnActionsReady(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    .line 875
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mImageData:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    .line 877
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 878
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0xbb8

    const/4 v2, 0x4

    .line 879
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    int-to-long v0, v0

    .line 883
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 884
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    .line 885
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 884
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 888
    iget-object v0, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6JGboja7qlPIk5DucYsc4IshTQw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6JGboja7qlPIk5DucYsc4IshTQw;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private startAnimation(Ljava/util/function/Consumer;Landroid/graphics/Rect;Landroid/graphics/Insets;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Insets;",
            "Z)V"
        }
    .end annotation

    .line 805
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$cO0PwOlpfozJtxZdtDJZVLOngAk;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$cO0PwOlpfozJtxZdtDJZVLOngAk;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/graphics/Insets;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private takeScreenshotInternal(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 713
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 718
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 719
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 720
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 721
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 722
    invoke-static {p2, v1, v2, v0}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/util/function/Consumer;Landroid/graphics/Rect;Landroid/graphics/Insets;Z)V

    return-void
.end method


# virtual methods
.method dismissScreenshot(Ljava/lang/String;Z)V
    .locals 2

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearing screenshot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlobalScreenshot"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 539
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    if-nez p2, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDismissAnimation()Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissAnimation:Landroid/animation/Animator;

    .line 542
    new-instance p2, Lcom/android/systemui/screenshot/GlobalScreenshot$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$4;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 549
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 551
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->clearScreenshot()V

    :goto_0
    return-void
.end method

.method getRotationAdjustedRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 441
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 442
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 444
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 445
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 461
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int v0, p0, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 462
    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    iput p0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 465
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown rotation: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 455
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 456
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 457
    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 458
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 451
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p0, v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 452
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_3
    :goto_0
    return-object v1
.end method

.method handleImageAsScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;IILandroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Insets;",
            "II",
            "Landroid/content/ComponentName;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 401
    iput-object p8, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    .line 402
    invoke-direct {p0, p1, p3, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->aspectRatiosMatch(Landroid/graphics/Bitmap;Landroid/graphics/Insets;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    move-object v3, p2

    move-object v4, p3

    .line 403
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/util/function/Consumer;Landroid/graphics/Rect;Landroid/graphics/Insets;Z)V

    goto :goto_0

    .line 405
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    .line 406
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    .line 405
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/util/function/Consumer;Landroid/graphics/Rect;Landroid/graphics/Insets;Z)V

    :goto_0
    return-void
.end method

.method hideScreenshotSelector()V
    .locals 3

    const/4 v0, 0x0

    .line 412
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setLockedScreenOrientation(Z)V

    .line 413
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->stopSelection()V

    .line 417
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 418
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 419
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setBlockedGesturalNavigation(Z)V

    return-void
.end method

.method public synthetic lambda$createScreenshotActionsShadeAnimation$18$GlobalScreenshot()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotActionsShadeAnimation$18()V

    return-void
.end method

.method public synthetic lambda$createScreenshotActionsShadeAnimation$19$GlobalScreenshot()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotActionsShadeAnimation$19()V

    return-void
.end method

.method public synthetic lambda$createScreenshotActionsShadeAnimation$20$GlobalScreenshot()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotActionsShadeAnimation$20()V

    return-void
.end method

.method public synthetic lambda$createScreenshotActionsShadeAnimation$21$GlobalScreenshot()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotActionsShadeAnimation$21()V

    return-void
.end method

.method public synthetic lambda$createScreenshotActionsShadeAnimation$22$GlobalScreenshot(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotActionsShadeAnimation$22(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$createScreenshotActionsShadeAnimation$23$GlobalScreenshot(FLjava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotActionsShadeAnimation$23(FLjava/util/ArrayList;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$createScreenshotDismissAnimation$24$GlobalScreenshot(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotDismissAnimation$24(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$createScreenshotDismissAnimation$25$GlobalScreenshot(FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotDismissAnimation$25(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$createScreenshotDropInAnimation$15$GlobalScreenshot(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotDropInAnimation$15(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$createScreenshotDropInAnimation$16$GlobalScreenshot(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotDropInAnimation$16(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$createScreenshotDropInAnimation$17$GlobalScreenshot(FFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Rect;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$createScreenshotDropInAnimation$17(FFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Rect;FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$reloadAssets$10$GlobalScreenshot(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$reloadAssets$10(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$reloadAssets$7$GlobalScreenshot(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$reloadAssets$7(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$reloadAssets$8$GlobalScreenshot(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$reloadAssets$8(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$reloadAssets$9$GlobalScreenshot(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$reloadAssets$9(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$saveScreenshotAndToast$11$GlobalScreenshot()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$saveScreenshotAndToast$11()V

    return-void
.end method

.method public synthetic lambda$showUiOnActionsReady$14$GlobalScreenshot(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$showUiOnActionsReady$14(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    return-void
.end method

.method public synthetic lambda$startAnimation$12$GlobalScreenshot(Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$startAnimation$12(Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$startAnimation$13$GlobalScreenshot(Landroid/graphics/Insets;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$startAnimation$13(Landroid/graphics/Insets;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$takeScreenshotPartial$0$GlobalScreenshot()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$takeScreenshotPartial$0()V

    return-void
.end method

.method public synthetic lambda$takeScreenshotPartial$1$GlobalScreenshot(Landroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$takeScreenshotPartial$1(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public synthetic lambda$takeScreenshotPartial$2$GlobalScreenshot(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$takeScreenshotPartial$2(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$takeScreenshotPartial$3$GlobalScreenshot(Ljava/util/function/Consumer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$takeScreenshotPartial$3(Ljava/util/function/Consumer;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$takeScreenshotPartial$4$GlobalScreenshot()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$takeScreenshotPartial$4()V

    return-void
.end method

.method public synthetic lambda$takeScreenshotPartial$5$GlobalScreenshot(Ljava/util/function/Consumer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$takeScreenshotPartial$5(Ljava/util/function/Consumer;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$takeScreenshotPartial$6$GlobalScreenshot()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$takeScreenshotPartial$6()V

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5

    const/4 v0, 0x3

    .line 362
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 363
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 365
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 366
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 367
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 368
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 369
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 370
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 371
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 372
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 373
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 375
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNavMode:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mLeftInset:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 378
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 379
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mRightInset:I

    sub-int p0, v3, p0

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, p0, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 381
    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 384
    :cond_0
    iget-object p0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method setBlockedGesturalNavigation(Z)V
    .locals 0

    const-string p0, "statusbar"

    .line 424
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 423
    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 427
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setBlockedGesturalNavigation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method setLockedScreenOrientation(Z)V
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 437
    :goto_0
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    return-void
.end method

.method stopScreenshot()V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->hideScreenshotSelector()V

    :cond_0
    return-void
.end method

.method takeScreenshotFullscreen(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 388
    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    .line 390
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 391
    new-instance p2, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotInternal(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V

    return-void
.end method

.method takeScreenshotPartial(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 477
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "new screenshot requested"

    const/4 v1, 0x1

    .line 481
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissScreenshot(Ljava/lang/String;Z)V

    .line 482
    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnCompleteRunnable:Ljava/lang/Runnable;

    .line 484
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setBlockedGesturalNavigation(Z)V

    .line 485
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setLockedScreenOrientation(Z)V

    .line 486
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    new-instance v0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$TJcRvhVujsjw77ihiHlbZwvsXuQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$TJcRvhVujsjw77ihiHlbZwvsXuQ;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->setSelectionListener(Lcom/android/systemui/screenshot/ScreenshotSelectorView$OnSelectionListener;)V

    .line 492
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCancelButton:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$iKHl1mpYvLMAb_1pxh3AVIoL40Y;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$iKHl1mpYvLMAb_1pxh3AVIoL40Y;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/util/function/Consumer;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureButton:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ippFL_exY8YLJa9a35sS47iDFUg;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$ippFL_exY8YLJa9a35sS47iDFUg;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/util/function/Consumer;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance p2, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$LQil7kzKsa3asmeZ1GP3e77MLnQ;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$LQil7kzKsa3asmeZ1GP3e77MLnQ;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
