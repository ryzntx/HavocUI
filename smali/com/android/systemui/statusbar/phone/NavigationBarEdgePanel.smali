.class public Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;
.super Landroid/view/View;
.source "NavigationBarEdgePanel.java"

# interfaces
.implements Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;


# static fields
.field private static final CURRENT_ANGLE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURRENT_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURRENT_VERTICAL_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;",
            ">;"
        }
    .end annotation
.end field

.field private static final RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAlmostLongSwipe:Z

.field private final mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private final mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private mAngleOffset:F

.field private mArrowColor:I

.field private final mArrowColorAnimator:Landroid/animation/ValueAnimator;

.field private mArrowColorDark:I

.field private mArrowColorLight:I

.field private final mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

.field private final mArrowLength:F

.field private mArrowPaddingEnd:I

.field private final mArrowPath:Landroid/graphics/Path;

.field private mArrowStartColor:I

.field private final mArrowThickness:F

.field private mArrowsPointLeft:Z

.field private mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

.field private final mBaseTranslation:F

.field private mCurrentAngle:F

.field private mCurrentArrowColor:I

.field private mCurrentTranslation:F

.field private final mDensity:F

.field private mDesiredAngle:F

.field private mDesiredTranslation:F

.field private mDesiredVerticalTranslation:F

.field private mDisappearAmount:F

.field private final mDisplaySize:Landroid/graphics/Point;

.field private mDragSlopPassed:Z

.field private mFingerOffset:I

.field private mIsDark:Z

.field private mIsExtendedSwipe:Z

.field private mIsLeftPanel:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mLeftInset:I

.field private mLongSwipeThreshold:F

.field private mMaxTranslation:F

.field private mMinArrowPosition:I

.field private final mMinDeltaForSwitch:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreviousTouchTranslation:F

.field private mProtectionColor:I

.field private mProtectionColorDark:I

.field private mProtectionColorLight:I

.field private final mProtectionPaint:Landroid/graphics/Paint;

.field private mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

.field private final mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field private mRightInset:I

.field private final mSamplingRect:Landroid/graphics/Rect;

.field private mScreenSize:I

.field private mSetGoneEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mShowProtection:Z

.field private mStartX:F

.field private mStartY:F

.field private final mSwipeThreshold:F

.field private mTotalTouchDelta:F

.field private final mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTriggerBack:Z

.field private final mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalTranslation:F

.field private final mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mVibrationTime:J

.field private final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 109
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 120
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;

    .line 226
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$2;

    const-string v1, "currentAngle"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_ANGLE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 239
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$3;

    const-string v1, "currentTranslation"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 252
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$4;

    const-string/jumbo v1, "verticalTranslation"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_VERTICAL_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 268
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    .line 153
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    .line 154
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDisplaySize:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsDark:Z

    .line 168
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mShowProtection:Z

    .line 177
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    .line 215
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSetGoneEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 270
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mWindowManager:Landroid/view/WindowManager;

    .line 271
    const-class v0, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDensity:F

    const/high16 v0, 0x42000000    # 32.0f

    .line 275
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->dp(F)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBaseTranslation:F

    const/high16 v1, 0x41900000    # 18.0f

    .line 276
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->dp(F)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    const/high16 v1, 0x40200000    # 2.5f

    .line 277
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->dp(F)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowThickness:F

    .line 278
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->dp(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mMinDeltaForSwitch:F

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowThickness:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/4 v0, 0x2

    new-array v2, v0, [F

    .line 286
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x78

    .line 287
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 288
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$bOecFcR5bBF6RggHYoy3PBO7S7o;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$bOecFcR5bBF6RggHYoy3PBO7S7o;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 294
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    .line 295
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$dGzlaDOJBgEiptNKFEADYL6K5TY;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$dGzlaDOJBgEiptNKFEADYL6K5TY;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 302
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_ANGLE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 304
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x43fa0000    # 500.0f

    .line 305
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 306
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 307
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v3, 0x44bb8000    # 1500.0f

    .line 308
    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 309
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x42b40000    # 90.0f

    .line 310
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 313
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 315
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 316
    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x3f400000    # 0.75f

    .line 317
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 318
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v4, 0x43e10000    # 450.0f

    .line 319
    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 320
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 322
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v4, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->CURRENT_VERTICAL_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 324
    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 326
    invoke-virtual {v4, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 327
    invoke-virtual {v4, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 324
    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 329
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionPaint:Landroid/graphics/Paint;

    .line 330
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowThickness:F

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->loadDimens()V

    .line 333
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->loadColors(Landroid/content/Context;)V

    .line 334
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateArrowDirection()V

    .line 336
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->navigation_edge_action_drag_threshold:I

    .line 337
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSwipeThreshold:F

    const/16 p1, 0x8

    .line 338
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    new-instance p1, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$5;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    .line 352
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->setWindowVisible(Z)V

    return-void

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

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;F)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentAngle(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)F
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getCurrentAngle()F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;F)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentTranslation(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)F
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getCurrentTranslation()F

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;F)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setVerticalTranslation(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)F
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getVerticalTranslation()F

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;ZZ)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setIsDark(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)Landroid/graphics/Rect;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private adjustSamplingRectToBoundingBox()V
    .locals 6

    .line 412
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredTranslation:F

    .line 413
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-nez v1, :cond_2

    .line 416
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBaseTranslation:F

    .line 417
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v1, :cond_2

    .line 421
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getStaticArrowWidth()F

    move-result v1

    sub-float/2addr v0, v1

    .line 424
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowThickness:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 425
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    .line 428
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getStaticArrowWidth()F

    move-result v1

    const/high16 v3, 0x42600000    # 56.0f

    .line 429
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->polarToCartY(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    .line 430
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v4, :cond_4

    sub-float/2addr v0, v1

    .line 434
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredVerticalTranslation:F

    add-float/2addr v4, v5

    div-float v2, v3, v2

    sub-float/2addr v4, v2

    .line 435
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    float-to-int v0, v0

    float-to-int v4, v4

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    add-float/2addr v5, v1

    float-to-int v1, v5

    int-to-float v5, v4

    add-float/2addr v5, v3

    float-to-int v3, v5

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 439
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingRect()V

    return-void
.end method

.method private calculatePath(FF)Landroid/graphics/Path;
    .locals 3

    .line 578
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v0, :cond_0

    neg-float p1, p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f400000    # 0.75f

    .line 581
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDisappearAmount:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    neg-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 588
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    return-object p0
.end method

.method private cancelBack()V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    invoke-interface {v0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->cancelBack()V

    .line 652
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSetGoneEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 655
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private dp(F)F
    .locals 0

    .line 851
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDensity:F

    mul-float/2addr p0, p1

    return p0
.end method

.method private getCurrentAngle()F
    .locals 0

    .line 592
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentAngle:F

    return p0
.end method

.method private getCurrentTranslation()F
    .locals 0

    .line 596
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentTranslation:F

    return p0
.end method

.method private getStaticArrowWidth()F
    .locals 1

    const/high16 v0, 0x42600000    # 56.0f

    .line 566
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->polarToCartX(F)F

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    mul-float/2addr v0, p0

    return v0
.end method

.method private getVerticalTranslation()F
    .locals 0

    .line 802
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslation:F

    return p0
.end method

.method private handleMoveEvent(Landroid/view/MotionEvent;)V
    .locals 11

    .line 679
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 680
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 681
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mStartX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    .line 682
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsExtendedSwipe:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mLongSwipeThreshold:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAlmostLongSwipe:Z

    .line 683
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mStartY:F

    sub-float/2addr p1, v2

    .line 684
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPreviousTouchTranslation:F

    sub-float v2, v1, v2

    .line 685
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 686
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpl-float v5, v5, v7

    if-nez v5, :cond_1

    .line 687
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    add-float/2addr v5, v2

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    goto :goto_1

    .line 689
    :cond_1
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    .line 692
    :cond_2
    :goto_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPreviousTouchTranslation:F

    .line 695
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDragSlopPassed:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSwipeThreshold:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 696
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDragSlopPassed:Z

    .line 697
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 698
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibrationTime:J

    .line 701
    iput v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDisappearAmount:F

    .line 702
    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 704
    invoke-direct {p0, v4, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setTriggerBack(ZZ)V

    .line 708
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBaseTranslation:F

    cmpl-float v7, v1, v2

    const/high16 v8, 0x40800000    # 4.0f

    if-lez v7, :cond_4

    sub-float/2addr v1, v2

    .line 710
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mScreenSize:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    div-float/2addr v1, v7

    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    .line 711
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mMaxTranslation:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBaseTranslation:F

    sub-float/2addr v2, v7

    mul-float/2addr v1, v2

    add-float/2addr v7, v1

    goto :goto_2

    :cond_4
    sub-float v1, v2, v1

    div-float/2addr v1, v2

    .line 716
    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    .line 717
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBaseTranslation:F

    div-float v7, v2, v8

    mul-float/2addr v1, v7

    sub-float v7, v2, v1

    .line 722
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    .line 725
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mMinDeltaForSwitch:F

    cmpl-float v2, v2, v9

    if-lez v2, :cond_6

    .line 726
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_5

    move v1, v4

    goto :goto_3

    :cond_5
    move v1, v3

    .line 730
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    invoke-virtual {v2, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 731
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 732
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    .line 733
    invoke-static {v2, v9}, Landroid/util/MathUtils;->mag(FF)F

    move-result v9

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v9, v10

    mul-float/2addr v9, v8

    .line 734
    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 735
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v8, v2

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    .line 736
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v2, :cond_8

    :cond_7
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v2, :cond_9

    .line 737
    :cond_8
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    const/high16 v8, -0x40800000    # -1.0f

    mul-float/2addr v2, v8

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    .line 741
    :cond_9
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mStartX:F

    sub-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v0, v8

    cmpl-float v0, v2, v0

    if-lez v0, :cond_a

    goto :goto_4

    :cond_a
    move v3, v1

    .line 744
    :goto_4
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setTriggerBack(ZZ)V

    .line 746
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-nez v0, :cond_b

    move v7, v6

    goto :goto_5

    .line 748
    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v0, :cond_d

    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v0, :cond_e

    .line 752
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->getStaticArrowWidth()F

    move-result v0

    sub-float/2addr v7, v0

    .line 754
    :cond_e
    :goto_5
    invoke-direct {p0, v7, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setDesiredTranslation(FZ)V

    .line 755
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 757
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    sub-float/2addr v0, v1

    .line 759
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v2, v0

    div-float/2addr v1, v2

    .line 758
    invoke-static {v1, v6, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 761
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v0

    .line 762
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr v1, p1

    .line 763
    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setDesiredVerticalTransition(FZ)V

    .line 764
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateSamplingRect()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 289
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowStartColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColor:I

    .line 290
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 289
    invoke-static {v0, v1, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    .line 291
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentArrowColor(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 298
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDisappearAmount:F

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$triggerBack$2()V
    .locals 1

    const/16 v0, 0x8

    .line 629
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$triggerBack$3()V
    .locals 4

    .line 622
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    const/high16 v1, 0x41000000    # 8.0f

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    const/4 v0, 0x1

    .line 623
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 625
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 627
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredTranslation:F

    const/high16 v3, 0x42000000    # 32.0f

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->dp(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setDesiredTranslation(FZ)V

    .line 628
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$qL_Cvd7_6Xne4NYpi_Ofi326YV0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$qL_Cvd7_6Xne4NYpi_Ofi326YV0;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V

    .line 629
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 630
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private loadColors(Landroid/content/Context;)V
    .locals 3

    .line 534
    sget v0, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 535
    sget v1, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 536
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 537
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 538
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorLight:I

    .line 539
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorDark:I

    .line 540
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorLight:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionColorDark:I

    .line 541
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionColorLight:I

    const/4 p1, 0x0

    .line 542
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateIsDark(Z)V

    return-void
.end method

.method private loadDimens()V
    .locals 2

    .line 520
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 521
    sget v1, Lcom/android/systemui/R$dimen;->navigation_edge_panel_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPaddingEnd:I

    .line 522
    sget v1, Lcom/android/systemui/R$dimen;->navigation_edge_arrow_min_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mMinArrowPosition:I

    .line 523
    sget v1, Lcom/android/systemui/R$dimen;->navigation_edge_finger_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mFingerOffset:I

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mLongSwipeThreshold:F

    return-void
.end method

.method private polarToCartX(F)F
    .locals 0

    float-to-double p0, p1

    .line 570
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private polarToCartY(F)F
    .locals 0

    float-to-double p0, p1

    .line 574
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private resetOnDown()V
    .locals 4

    .line 660
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 661
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 664
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 665
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    .line 666
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    .line 668
    invoke-direct {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setTriggerBack(ZZ)V

    .line 669
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setDesiredTranslation(FZ)V

    .line 670
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentTranslation(F)V

    .line 671
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 672
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPreviousTouchTranslation:F

    .line 673
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTotalTouchDelta:F

    const-wide/16 v2, 0x0

    .line 674
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibrationTime:J

    .line 675
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setDesiredVerticalTransition(FZ)V

    return-void
.end method

.method private setCurrentAngle(F)V
    .locals 0

    .line 846
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentAngle:F

    .line 847
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setCurrentArrowColor(I)V
    .locals 1

    .line 560
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentArrowColor:I

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 562
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setCurrentTranslation(F)V
    .locals 0

    .line 817
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentTranslation:F

    .line 818
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setDesiredTranslation(FZ)V
    .locals 1

    .line 806
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredTranslation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 807
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredTranslation:F

    if-nez p2, :cond_0

    .line 809
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentTranslation(F)V

    goto :goto_0

    .line 811
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setDesiredVerticalTransition(FZ)V
    .locals 1

    .line 785
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredVerticalTranslation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 786
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredVerticalTranslation:F

    if-nez p2, :cond_0

    .line 788
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setVerticalTranslation(F)V

    goto :goto_0

    .line 790
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 792
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private setIsDark(ZZ)V
    .locals 0

    .line 368
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsDark:Z

    .line 369
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateIsDark(Z)V

    return-void
.end method

.method private setTriggerBack(ZZ)V
    .locals 1

    .line 822
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-eq v0, p1, :cond_0

    .line 823
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    .line 824
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 825
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 828
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method private setVerticalTranslation(F)V
    .locals 0

    .line 797
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslation:F

    .line 798
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private triggerBack()V
    .locals 7

    .line 600
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    invoke-interface {v0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->triggerBack()V

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 603
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 609
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibrationTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x190

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 614
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    const/high16 v2, -0x3f800000    # -4.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    const/high16 v2, -0x3f000000    # -8.0f

    const/high16 v3, 0x41000000    # 8.0f

    sub-float/2addr v0, v3

    .line 615
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    .line 616
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 620
    :cond_4
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$8nVYqEm2UMLvGUzkKr5IU4GQaTc;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarEdgePanel$8nVYqEm2UMLvGUzkKr5IU4GQaTc;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V

    .line 632
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 633
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$6;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$6;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_1

    .line 645
    :cond_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method private updateAngle(Z)V
    .locals 2

    .line 833
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42600000    # 56.0f

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleOffset:F

    add-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42b40000    # 90.0f

    .line 834
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredAngle:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    .line 836
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentAngle(F)V

    goto :goto_2

    .line 838
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 839
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 841
    :goto_2
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDesiredAngle:F

    :cond_3
    return-void
.end method

.method private updateArrowDirection()V
    .locals 1

    .line 529
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    .line 530
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateIsDark(Z)V
    .locals 2

    .line 547
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsDark:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionColorDark:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionColorLight:I

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionColor:I

    .line 548
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 549
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsDark:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorDark:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorLight:I

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColor:I

    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    if-nez p1, :cond_2

    .line 552
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColor:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setCurrentArrowColor(I)V

    goto :goto_2

    .line 554
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentArrowColor:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowStartColor:I

    .line 555
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method

.method private updatePosition(F)V
    .locals 3

    .line 768
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mFingerOffset:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 769
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mMinArrowPosition:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 770
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 771
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 772
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateSamplingRect()V

    return-void
.end method

.method private updateSamplingRect()V
    .locals 5

    .line 776
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 777
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mLeftInset:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRightInset:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v0, v2, v0

    .line 778
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v3, v0

    .line 779
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v2, v1

    .line 780
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 781
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->adjustSamplingRectToBoundingBox()V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$new$0$NavigationBarEdgePanel(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$new$1$NavigationBarEdgePanel(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$triggerBack$2$NavigationBarEdgePanel()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->lambda$triggerBack$2()V

    return-void
.end method

.method public synthetic lambda$triggerBack$3$NavigationBarEdgePanel()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->lambda$triggerBack$3()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 484
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 485
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updateArrowDirection()V

    .line 486
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->loadDimens()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 491
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentTranslation:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowThickness:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 492
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 494
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    .line 495
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVerticalTranslation:F

    add-float/2addr v1, v3

    .line 493
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 498
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentAngle:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->polarToCartX(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    mul-float/2addr v0, v1

    .line 499
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mCurrentAngle:F

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->polarToCartY(F)F

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowLength:F

    mul-float/2addr v1, v3

    .line 500
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->calculatePath(FF)Landroid/graphics/Path;

    move-result-object v3

    .line 501
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAlmostLongSwipe:Z

    if-eqz v4, :cond_2

    .line 502
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->calculatePath(FF)Landroid/graphics/Path;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowThickness:F

    mul-float/2addr v1, v2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 504
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mShowProtection:Z

    if-eqz v0, :cond_3

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mProtectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 508
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 509
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 514
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 516
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mArrowPaddingEnd:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mMaxTranslation:F

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 445
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_1

    .line 474
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->cancelBack()V

    .line 475
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    .line 476
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 477
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 461
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->handleMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 464
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mTriggerBack:Z

    if-eqz p1, :cond_4

    .line 465
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->triggerBack()V

    goto :goto_0

    .line 467
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->cancelBack()V

    .line 469
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    .line 470
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 471
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 450
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mAlmostLongSwipe:Z

    .line 451
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDragSlopPassed:Z

    .line 452
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->resetOnDown()V

    .line 453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mStartX:F

    .line 454
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mStartY:F

    .line 455
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->updatePosition(F)V

    .line 457
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    .line 458
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public setBackCallback(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    return-void
.end method

.method public setDisplaySize(Landroid/graphics/Point;)V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDisplaySize:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    .line 394
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mDisplaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mScreenSize:I

    return-void
.end method

.method public setInsets(II)V
    .locals 0

    .line 387
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mLeftInset:I

    .line 388
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mRightInset:I

    return-void
.end method

.method public setIsLeftPanel(Z)V
    .locals 0

    .line 379
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsLeftPanel:Z

    .line 380
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    const/16 p1, 0x33

    goto :goto_0

    :cond_0
    const/16 p1, 0x35

    .line 382
    :goto_0
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method public setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 404
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setLongSwipeEnabled(Z)V
    .locals 0

    .line 856
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->mIsExtendedSwipe:Z

    return-void
.end method
