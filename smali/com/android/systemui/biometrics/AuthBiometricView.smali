.class public abstract Lcom/android/systemui/biometrics/AuthBiometricView;
.super Landroid/widget/LinearLayout;
.source "AuthBiometricView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/AuthBiometricView$Injector;,
        Lcom/android/systemui/biometrics/AuthBiometricView$Callback;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field protected mAppIcon:Landroid/widget/ImageView;

.field private final mBackgroundClickListener:Landroid/view/View$OnClickListener;

.field private mBiometricPromptBundle:Landroid/os/Bundle;

.field private mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

.field private mDescriptionView:Landroid/widget/TextView;

.field protected mDialogSizeAnimating:Z

.field private mEffectiveUserId:I

.field private final mHandler:Landroid/os/Handler;

.field protected mHasFod:Z

.field private mIconOriginalY:F

.field protected mIconView:Landroid/widget/ImageView;

.field protected mIndicatorView:Landroid/widget/TextView;

.field private final mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

.field private mMediumHeight:I

.field private mMediumWidth:I

.field mNegativeButton:Landroid/widget/Button;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

.field mPositiveButton:Landroid/widget/Button;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mRequireConfirmation:Z

.field private final mResetErrorRunnable:Ljava/lang/Runnable;

.field private final mResetHelpRunnable:Ljava/lang/Runnable;

.field protected mSavedState:Landroid/os/Bundle;

.field mSize:I

.field protected mState:I

.field private mSubtitleView:Landroid/widget/TextView;

.field protected final mTextColorError:I

.field protected final mTextColorHint:I

.field private mTitleView:Landroid/widget/TextView;

.field mTryAgainButton:Landroid/widget/Button;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mUseFaceButton:Landroid/widget/Button;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 252
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 256
    new-instance v0, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-direct {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/biometrics/AuthBiometricView$Injector;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/biometrics/AuthBiometricView$Injector;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 261
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 183
    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    .line 237
    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$74Ox-j14CYJ3ddBOXoxeI-wTUBk;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$74Ox-j14CYJ3ddBOXoxeI-wTUBk;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBackgroundClickListener:Landroid/view/View$OnClickListener;

    .line 262
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    .line 263
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$color;->biometric_dialog_error:I

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 263
    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorError:I

    .line 265
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$color;->biometric_dialog_gray:I

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 265
    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorHint:I

    .line 268
    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    .line 269
    iput-object p0, p3, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo p3, "vendor.lineage.biometrics.fingerprint.inscreen"

    .line 272
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHasFod:Z

    .line 274
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 276
    new-instance p1, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$2drOaNVaSONPnaFzaOUoYj-j85g;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$2drOaNVaSONPnaFzaOUoYj-j85g;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Ljava/lang/Runnable;

    .line 282
    new-instance p1, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$h7WED3KSGw20PO7Z91wwxRtsrCg;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$h7WED3KSGw20PO7Z91wwxRtsrCg;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetHelpRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/AuthBiometricView;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/AuthBiometricView;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/AuthBiometricView;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/AuthBiometricView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method private isDeviceCredentialAllowed()Z
    .locals 0

    .line 855
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBiometricPromptBundle:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/systemui/biometrics/Utils;->isDeviceCredentialAllowed(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    .line 238
    iget p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    const-string v0, "BiometricPrompt/AuthBiometricView"

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    const-string p0, "Ignoring background click after authenticated"

    .line 239
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 241
    :cond_0
    iget p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string p0, "Ignoring background click during small dialog"

    .line 242
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const-string p0, "Ignoring background click during large dialog"

    .line 245
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 248
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getStateForAfterError()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->handleResetAfterError()V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    const/4 v0, 0x2

    .line 283
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->handleResetAfterHelp()V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic lambda$onError$8()V
    .locals 1

    .line 536
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    return-void
.end method

.method private synthetic lambda$onFinishInflateInternal$10(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x6

    .line 644
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    return-void
.end method

.method private synthetic lambda$onFinishInflateInternal$11(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x2

    .line 648
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 649
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    .line 650
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 651
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflateInternal$12(Landroid/view/View;)V
    .locals 0

    .line 656
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 p1, 0x7

    invoke-interface {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    return-void
.end method

.method private synthetic lambda$onFinishInflateInternal$9(Landroid/view/View;)V
    .locals 1

    .line 632
    iget p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 633
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    goto :goto_0

    .line 635
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->isDeviceCredentialAllowed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 636
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->startTransitionToCredentialUI()V

    goto :goto_0

    .line 638
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateSize$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method private synthetic lambda$updateSize$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 355
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 356
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$updateSize$5(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 417
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 418
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method static synthetic lambda$updateSize$6(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 435
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 436
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$updateState$7()V
    .locals 2

    const-string v0, "BiometricPrompt/AuthBiometricView"

    const-string v1, "Sending ACTION_AUTHENTICATED"

    .line 482
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    return-void
.end method

.method private removePendingAnimations()V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetHelpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 587
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 581
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTextOrHide(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 571
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x8

    .line 572
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private showTemporaryMessage(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 591
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->removePendingAnimations()V

    .line 592
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorError:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 594
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 597
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected abstract getDelayAfterAuthenticatedDurationMs()I
.end method

.method protected abstract getStateForAfterError()I
.end method

.method protected abstract handleResetAfterError()V
.end method

.method protected abstract handleResetAfterHelp()V
.end method

.method public synthetic lambda$new$0$AuthBiometricView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$1$AuthBiometricView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$new$1()V

    return-void
.end method

.method public synthetic lambda$new$2$AuthBiometricView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$new$2()V

    return-void
.end method

.method public synthetic lambda$onError$8$AuthBiometricView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$onError$8()V

    return-void
.end method

.method public synthetic lambda$onFinishInflateInternal$10$AuthBiometricView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$onFinishInflateInternal$10(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflateInternal$11$AuthBiometricView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$onFinishInflateInternal$11(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflateInternal$12$AuthBiometricView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$onFinishInflateInternal$12(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflateInternal$9$AuthBiometricView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$onFinishInflateInternal$9(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$updateSize$3$AuthBiometricView(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$updateSize$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$updateSize$4$AuthBiometricView(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$updateSize$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$updateState$7$AuthBiometricView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$updateState$7()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 679
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 680
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onAttachedToWindowInternal()V

    return-void
.end method

.method onAttachedToWindowInternal()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 689
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBiometricPromptBundle:Landroid/os/Bundle;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 692
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->isDeviceCredentialAllowed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 694
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mEffectiveUserId:I

    .line 695
    invoke-static {v0, v2}, Lcom/android/systemui/biometrics/Utils;->getCredentialType(Landroid/content/Context;I)I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 708
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->biometric_dialog_use_password:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->biometric_dialog_use_password:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 702
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->biometric_dialog_use_pattern:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 699
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->biometric_dialog_use_pin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 713
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBiometricPromptBundle:Landroid/os/Bundle;

    const-string v2, "negative_text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 715
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBiometricPromptBundle:Landroid/os/Bundle;

    const-string v3, "subtitle"

    .line 718
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 717
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/biometrics/AuthBiometricView;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBiometricPromptBundle:Landroid/os/Bundle;

    const-string v3, "description"

    .line 721
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 720
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/biometrics/AuthBiometricView;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBiometricPromptBundle:Landroid/os/Bundle;

    const-string v2, "applock_package_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 724
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 727
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v5, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUserId:I

    invoke-virtual {v4, v0, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    .line 731
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 732
    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$dimen;->applock_icon_elevation:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz v3, :cond_5

    .line 734
    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 735
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 736
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAppIcon:Landroid/widget/ImageView;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setElevation(F)V

    .line 740
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    if-nez v0, :cond_6

    .line 741
    invoke-virtual {p0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    goto :goto_3

    :cond_6
    const-string v1, "state"

    .line 744
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 747
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    const-string v1, "try_agian_visibility"

    .line 748
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 747
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public onAuthenticationFailed(Ljava/lang/String;)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->showTemporaryMessage(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p1, 0x4

    .line 528
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 1

    .line 518
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->removePendingAnimations()V

    .line 519
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 520
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 522
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 754
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 758
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDialogAnimatedIn()V
    .locals 1

    const/4 v0, 0x2

    .line 514
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->showTemporaryMessage(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p1, 0x4

    .line 533
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 535
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$IjJmXNzRMZpZA04YZLx9v3gpf7E;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$IjJmXNzRMZpZA04YZLx9v3gpf7E;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    .line 537
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getDelayAfterError()I

    move-result p0

    int-to-long v1, p0

    .line 535
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 602
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 603
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onFinishInflateInternal()V

    return-void
.end method

.method onFinishInflateInternal()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    .line 612
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getSubtitleView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    .line 613
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getDescriptionView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    .line 614
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    .line 615
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getIndicatorView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 616
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getNegativeButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    .line 617
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getPositiveButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPositiveButton:Landroid/widget/Button;

    .line 618
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getTryAgainButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    .line 619
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getUseFaceButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseFaceButton:Landroid/widget/Button;

    .line 621
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAppIcon:Landroid/widget/ImageView;

    .line 622
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->applock_icon_dimension:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 624
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 625
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 626
    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 627
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAppIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAppIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 631
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$qlVsSDplrDVUHj3VMy1YMdB9Z2Q;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$qlVsSDplrDVUHj3VMy1YMdB9Z2Q;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPositiveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$qLp3TPGAuJEy2AApoHqHuLR3prY;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$qLp3TPGAuJEy2AApoHqHuLR3prY;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$qQg25Tq_M8BNbfsr-x1MChyC8F0;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$qQg25Tq_M8BNbfsr-x1MChyC8F0;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseFaceButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 655
    new-instance v2, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$IYEeXCqUGbqZ54TFAHeXJRzCgro;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$IYEeXCqUGbqZ54TFAHeXJRzCgro;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    :cond_0
    instance-of v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUserId:I

    invoke-static {v0, v2}, Lcom/android/systemui/biometrics/Utils;->canAuthenticateWithFace(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 662
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseFaceButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 664
    :cond_1
    instance-of v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView;

    if-eqz v0, :cond_2

    .line 665
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseFaceButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onHelp(Ljava/lang/String;)V
    .locals 2

    .line 541
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 542
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Help received in size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricPrompt/AuthBiometricView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetHelpRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->showTemporaryMessage(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p1, 0x3

    .line 546
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 821
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 822
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onLayoutInternal()V

    return-void
.end method

.method onLayoutInternal()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 833
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconOriginalY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 834
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconOriginalY:F

    .line 835
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 836
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->supportsSmallDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V

    goto :goto_1

    :cond_1
    const-string v1, "size"

    .line 839
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V

    .line 842
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    const-string v1, "indicator_string"

    .line 843
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    const-string v2, "hint_is_temporary"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 845
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onHelp(Ljava/lang/String;)V

    goto :goto_1

    .line 846
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    const-string v2, "error_is_temporary"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 848
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onAuthenticationFailed(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 763
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 764
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 765
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 768
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_6

    .line 770
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 772
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/android/systemui/R$id;->biometric_icon:I

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_1

    .line 773
    instance-of v4, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHasFod:Z

    if-eqz v4, :cond_0

    .line 774
    sget v4, Lcom/android/systemui/R$id;->button_bar:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 777
    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v5, v8}, Lcom/android/systemui/util/Utils;->getFODHeight(Landroid/content/Context;Z)I

    move-result v5

    sub-int/2addr v5, v4

    .line 778
    sget v4, Lcom/android/systemui/R$id;->button_bar:I

    .line 779
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v5, v4

    .line 782
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 783
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 781
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 786
    :cond_0
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 787
    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 785
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 789
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/android/systemui/R$id;->button_bar:I

    if-ne v4, v5, :cond_2

    .line 791
    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 792
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 790
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 794
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 796
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 798
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 795
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 802
    :cond_3
    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 803
    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 801
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 806
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    .line 807
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 808
    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    :goto_2
    add-int/2addr v2, v4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 813
    :cond_6
    invoke-virtual {p0, p1, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 815
    iput v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mMediumHeight:I

    .line 816
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mMediumWidth:I

    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    .line 551
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const-string v1, "try_agian_visibility"

    .line 550
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 552
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 553
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 554
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "indicator_string"

    .line 553
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Ljava/lang/Runnable;

    .line 556
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    const-string v1, "error_is_temporary"

    .line 555
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 557
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetHelpRunnable:Ljava/lang/Runnable;

    .line 558
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    const-string v1, "hint_is_temporary"

    .line 557
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 559
    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    const-string v0, "size"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    return-void
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBackgroundClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBiometricPromptBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBiometricPromptBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setCallback(Lcom/android/systemui/biometrics/AuthBiometricView$Callback;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    return-void
.end method

.method public setEffectiveUserId(I)V
    .locals 0

    .line 310
    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mEffectiveUserId:I

    return-void
.end method

.method public setPanelController(Lcom/android/systemui/biometrics/AuthPanelController;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    return-void
.end method

.method public setRequireConfirmation(Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUserId:I

    return-void
.end method

.method startTransitionToCredentialUI()V
    .locals 1

    const/4 v0, 0x3

    .line 673
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V

    .line 674
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 v0, 0x6

    invoke-interface {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    return-void
.end method

.method protected abstract supportsSmallDialog()Z
.end method

.method updateSize(I)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " New size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt/AuthBiometricView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v2, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 327
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->biometric_dialog_icon_padding:I

    .line 328
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 329
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 333
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    float-to-int v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    .line 334
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v2, v1

    .line 335
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    iget v3, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mMediumWidth:I

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    .line 338
    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    goto/16 :goto_0

    .line 339
    :cond_0
    iget v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    if-ne v4, v2, :cond_2

    if-ne p1, v3, :cond_2

    .line 340
    iget-boolean v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDialogSizeAnimating:Z

    if-eqz v1, :cond_1

    return-void

    .line 343
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDialogSizeAnimating:Z

    new-array v1, v3, [F

    .line 346
    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    .line 347
    invoke-virtual {v4}, Landroid/widget/ImageView;->getY()F

    move-result v4

    aput v4, v1, v0

    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconOriginalY:F

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 348
    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$Wj3pIUGv2yvV3z4ykqi4KllVNJU;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$Wj3pIUGv2yvV3z4ykqi4KllVNJU;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v3, [F

    .line 353
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 354
    new-instance v2, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$wnwcoDTpdgktx5JVpsJj4HSA0jk;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$wnwcoDTpdgktx5JVpsJj4HSA0jk;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 370
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v3, 0x96

    .line 371
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 372
    new-instance v3, Lcom/android/systemui/biometrics/AuthBiometricView$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$1;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 398
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 399
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 401
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mMediumWidth:I

    iget v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mMediumHeight:I

    const/16 v2, 0x96

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    goto/16 :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    .line 404
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    iget v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mMediumWidth:I

    iget v3, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mMediumHeight:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    .line 406
    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4

    .line 408
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/systemui/R$dimen;->biometric_dialog_medium_to_large_translation_offset:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    new-array v5, v3, [F

    .line 414
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getY()F

    move-result v6

    aput v6, v5, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getY()F

    move-result v0

    sub-float/2addr v0, v1

    aput v0, v5, v2

    .line 413
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getMediumToLargeAnimationDurationMs()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 416
    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$DNZGqOzv_lXEbjrYTngC9OQfLl4;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$DNZGqOzv_lXEbjrYTngC9OQfLl4;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 420
    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView$2;

    invoke-direct {v1, p0, p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$2;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p1, v3, [F

    .line 432
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 433
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getMediumToLargeAnimationDurationMs()I

    move-result v1

    div-int/2addr v1, v3

    int-to-long v5, v1

    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 434
    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$NITDpz2-CemnJIsSGRaKPYHZqW4;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$NITDpz2-CemnJIsSGRaKPYHZqW4;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 439
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/biometrics/AuthPanelController;->setUseFullScreen(Z)V

    .line 440
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 441
    invoke-virtual {v1}, Lcom/android/systemui/biometrics/AuthPanelController;->getContainerWidth()I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 442
    invoke-virtual {v5}, Lcom/android/systemui/biometrics/AuthPanelController;->getContainerHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    .line 443
    invoke-virtual {v6}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getMediumToLargeAnimationDurationMs()I

    move-result v6

    .line 440
    invoke-virtual {v1, v2, v5, v6}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    .line 446
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 447
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 448
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 452
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getMediumToLargeAnimationDurationMs()I

    move-result p1

    mul-int/2addr p1, v3

    div-int/2addr p1, v4

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 453
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 455
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown transition from: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void

    nop

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
.end method

.method updateState(I)V
    .locals 5

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt/AuthBiometricView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v4, 0x4

    if-eq p1, v4, :cond_3

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 474
    :cond_0
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    if-eq v0, v2, :cond_1

    .line 475
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPositiveButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->biometric_dialog_authenticated:I

    .line 480
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$A6c9EVpo4leekZpDntHzHp57vns;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$A6c9EVpo4leekZpDntHzHp57vns;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    .line 484
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getDelayAfterAuthenticatedDurationMs()I

    move-result v2

    int-to-long v2, v2

    .line 481
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 488
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->removePendingAnimations()V

    .line 489
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    sget v3, Lcom/android/systemui/R$string;->cancel:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 490
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->cancel:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 492
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 493
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorHint:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 494
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    sget v2, Lcom/android/systemui/R$string;->biometric_dialog_tap_confirm:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 495
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 499
    :cond_3
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    if-ne v0, v2, :cond_5

    .line 500
    invoke-virtual {p0, v3}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V

    goto :goto_0

    .line 466
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->removePendingAnimations()V

    .line 467
    iget-boolean v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    if-eqz v1, :cond_5

    .line 468
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 469
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 509
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    .line 510
    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    return-void
.end method
