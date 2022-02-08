.class public Lcom/android/systemui/wm/DisplayImeController$PerDisplay;
.super Ljava/lang/Object;
.source "DisplayImeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wm/DisplayImeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerDisplay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;
    }
.end annotation


# instance fields
.field mAnimateAlpha:Z

.field mAnimation:Landroid/animation/ValueAnimator;

.field mAnimationDirection:I

.field final mDisplayId:I

.field final mImeFrame:Landroid/graphics/Rect;

.field mImeShowing:Z

.field mImeSourceControl:Landroid/view/InsetsSourceControl;

.field protected final mInsetsControllerImpl:Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;

.field final mInsetsState:Landroid/view/InsetsState;

.field mRotation:I

.field final synthetic this$0:Lcom/android/systemui/wm/DisplayImeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wm/DisplayImeController;II)V
    .locals 1

    .line 199
    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance p1, Landroid/view/InsetsState;

    invoke-direct {p1}, Landroid/view/InsetsState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    .line 189
    new-instance p1, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;

    invoke-direct {p1, p0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;-><init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;)V

    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mInsetsControllerImpl:Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;

    const/4 p1, 0x0

    .line 191
    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    .line 193
    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    .line 194
    iput v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mRotation:I

    .line 195
    iput-boolean v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeShowing:Z

    .line 196
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 197
    iput-boolean p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimateAlpha:Z

    .line 200
    iput p2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 201
    iput p3, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mRotation:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;ZZ)V
    .locals 0

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->startAnimation(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;F)I
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->imeTop(F)I

    move-result p0

    return p0
.end method

.method private applyVisibilityToLeash()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v1, v1, Lcom/android/systemui/wm/DisplayImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {v1}, Lcom/android/systemui/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 267
    iget-boolean v2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 272
    :goto_0
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 273
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {p0, v1}, Lcom/android/systemui/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_1
    return-void
.end method

.method private calcIsFloating(Landroid/view/InsetsSource;)Z
    .locals 2

    .line 313
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    iget p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/wm/DisplayController;->getDisplayLayout(I)Lcom/android/systemui/wm/DisplayLayout;

    move-result-object p0

    .line 323
    invoke-virtual {p0}, Lcom/android/systemui/wm/DisplayLayout;->navBarFrameHeight()I

    move-result p0

    if-gt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private imeTop(F)I
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    float-to-int p1, p1

    add-int/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$startAnimation$0(FZFFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {v0}, Lcom/android/systemui/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 385
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    .line 386
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 387
    iget-boolean p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimateAlpha:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    :goto_0
    sub-float p1, p5, p3

    sub-float/2addr p4, p3

    div-float/2addr p1, p4

    .line 389
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {p2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 390
    iget-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget p2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-direct {p0, p5}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->imeTop(F)I

    move-result p3

    invoke-static {p1, p2, p3, v0}, Lcom/android/systemui/wm/DisplayImeController;->access$500(Lcom/android/systemui/wm/DisplayImeController;IILandroid/view/SurfaceControl$Transaction;)V

    .line 391
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 392
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/systemui/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private setVisibleDirectly(Z)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 303
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object p1, p1, Lcom/android/systemui/wm/DisplayImeController;->mWmService:Landroid/view/IWindowManager;

    iget v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mDisplayId:I

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    invoke-interface {p1, v0, p0}, Landroid/view/IWindowManager;->modifyDisplayWindowInsets(ILandroid/view/InsetsState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private startAnimation(ZZ)V
    .locals 16

    move-object/from16 v8, p0

    move/from16 v9, p1

    .line 327
    iget-object v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 328
    iget-object v1, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 331
    :cond_0
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 332
    invoke-direct {v8, v0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->calcIsFloating(Landroid/view/InsetsSource;)Z

    move-result v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_1

    if-eqz v9, :cond_1

    move v6, v11

    goto :goto_0

    :cond_1
    move v6, v10

    :goto_0
    if-eqz v6, :cond_2

    .line 336
    iget-object v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 337
    iget-object v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    iget v1, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 338
    invoke-virtual {v0, v1}, Lcom/android/systemui/wm/DisplayController;->getDisplayLayout(I)Lcom/android/systemui/wm/DisplayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/wm/DisplayLayout;->density()F

    move-result v0

    const/high16 v1, -0x3d600000    # -80.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 340
    iget-object v1, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 341
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    iget-object v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 350
    iget v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-ne v0, v11, :cond_4

    if-nez v9, :cond_5

    :cond_4
    iget v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    if-nez v9, :cond_6

    :cond_5
    return-void

    :cond_6
    const/4 v0, 0x0

    .line 356
    iget-object v2, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_8

    .line 357
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 358
    iget-object v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v2, v11

    goto :goto_2

    :cond_7
    move v2, v10

    .line 361
    :goto_2
    iget-object v3, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_3

    :cond_8
    move v2, v10

    .line 363
    :goto_3
    iget-object v3, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v7, v3

    .line 364
    iget-object v3, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    .line 365
    iget-object v3, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float v13, v7, v3

    if-eqz v9, :cond_9

    move v14, v13

    goto :goto_4

    :cond_9
    move v14, v7

    :goto_4
    if-eqz v9, :cond_a

    move v15, v7

    goto :goto_5

    :cond_a
    move v15, v13

    .line 369
    :goto_5
    iget v3, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-nez v3, :cond_b

    iget-boolean v3, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eqz v3, :cond_b

    if-eqz v9, :cond_b

    move v0, v7

    move v2, v11

    :cond_b
    if-eqz v9, :cond_c

    move v3, v11

    goto :goto_6

    :cond_c
    move v3, v1

    .line 374
    :goto_6
    iput v3, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimationDirection:I

    .line 375
    iput-boolean v9, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeShowing:Z

    new-array v1, v1, [F

    aput v14, v1, v10

    aput v15, v1, v11

    .line 376
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_d

    const-wide/16 v3, 0x113

    goto :goto_7

    :cond_d
    const-wide/16 v3, 0x154

    .line 377
    :goto_7
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_e

    .line 380
    iget-object v1, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    sub-float/2addr v0, v14

    sub-float v2, v15, v14

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 383
    :cond_e
    iget-object v5, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$uxuy1QQ3j82MI1iLxtGmKhJXm7Y;

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v12

    move v3, v6

    move-object v11, v4

    move v4, v13

    move-object v10, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$uxuy1QQ3j82MI1iLxtGmKhJXm7Y;-><init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;FZFF)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 394
    iget-object v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/wm/DisplayImeController;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 395
    iget-object v10, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;

    move-object v0, v11

    move-object/from16 v1, p0

    move v3, v14

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$1;-><init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;FFFFZF)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez v9, :cond_f

    const/4 v0, 0x0

    .line 446
    invoke-direct {v8, v0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->setVisibleDirectly(Z)V

    .line 448
    :cond_f
    iget-object v0, v8, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    if-eqz v9, :cond_10

    const/4 v0, 0x1

    .line 452
    invoke-direct {v8, v0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->setVisibleDirectly(Z)V

    :cond_10
    :goto_8
    return-void
.end method


# virtual methods
.method public hideInsets(IZ)V
    .locals 0

    .line 286
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 290
    invoke-direct {p0, p1, p1}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->startAnimation(ZZ)V

    return-void
.end method

.method public insetsChanged(Landroid/view/InsetsState;)V
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x11

    .line 217
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeShowing:Z

    .line 219
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 221
    iget-object v3, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v3, v0}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 223
    iget-object v3, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 224
    iget-boolean p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eqz p1, :cond_1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 226
    iget-boolean p1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeShowing:Z

    invoke-direct {p0, p1, v4}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->startAnimation(ZZ)V

    :cond_1
    return-void
.end method

.method public insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 5

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->insetsChanged(Landroid/view/InsetsState;)V

    if-eqz p2, :cond_5

    .line 234
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_5

    aget-object v1, p2, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 238
    :cond_0
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_4

    .line 239
    iget-object v2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v2, :cond_1

    .line 240
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 242
    :goto_1
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 243
    iget-object v4, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 244
    invoke-static {v4, v1}, Lcom/android/systemui/wm/DisplayImeController;->access$100(Landroid/view/InsetsSourceControl;Landroid/view/InsetsSourceControl;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 245
    iput-object v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 246
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    if-eqz v2, :cond_4

    .line 248
    iget-boolean v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeShowing:Z

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->startAnimation(ZZ)V

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->applyVisibilityToLeash()V

    .line 254
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-nez v1, :cond_4

    .line 255
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    invoke-virtual {v1}, Lcom/android/systemui/wm/DisplayImeController;->removeImeSurface()V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public synthetic lambda$startAnimation$0$DisplayImeController$PerDisplay(FZFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->lambda$startAnimation$0(FZFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public register()V
    .locals 3

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->this$0:Lcom/android/systemui/wm/DisplayImeController;

    iget-object v0, v0, Lcom/android/systemui/wm/DisplayImeController;->mWmService:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mDisplayId:I

    iget-object v2, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mInsetsControllerImpl:Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->setDisplayWindowInsetsController(ILandroid/view/IDisplayWindowInsetsController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to set insets controller on display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisplayImeController"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public showInsets(IZ)V
    .locals 0

    .line 278
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 282
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->startAnimation(ZZ)V

    return-void
.end method

.method public topFocusedWindowChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
