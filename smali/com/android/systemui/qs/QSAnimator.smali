.class public Lcom/android/systemui/qs/QSAnimator;
.super Ljava/lang/Object;
.source "QSAnimator.java"

# interfaces
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mAllViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowFancy:Z

.field private mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mContext:Landroid/content/Context;

.field private mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFullRows:Z

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLastPosition:F

.field private mMediaDividerHeight:I

.field private mMediaTopOffset:I

.field private mNeedsAnimatorUpdate:Z

.field private final mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNumQuickTiles:I

.field private mOnFirstPage:Z

.field private mOnKeyguard:Z

.field private mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field private final mQs:Lcom/android/systemui/plugins/qs/QS;

.field private final mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private final mQuickQsViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mShowCollapsedOnKeyguard:Z

.field private mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mUpdateAnimators:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    .line 478
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$1;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 491
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$2;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    .line 87
    iput-object p4, p0, Lcom/android/systemui/qs/QSAnimator;->mContext:Landroid/content/Context;

    .line 88
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 89
    iput-object p2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 90
    iput-object p3, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 91
    invoke-virtual {p3, p0}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 92
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 93
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSAnimator;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    .line 97
    instance-of p2, p1, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz p2, :cond_1

    .line 98
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    goto :goto_0

    :cond_1
    const-string p1, "QSAnimator"

    const-string p2, "QS Not using page layout"

    .line 100
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    invoke-virtual {p3, p0}, Lcom/android/systemui/qs/QSPanel;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    .line 104
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->quick_settings_top_margin_media_extra:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mMediaTopOffset:I

    .line 105
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->quick_settings_media_divider_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mMediaDividerHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSAnimator;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSAnimator;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSAnimator;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->setCurrentPosition()V

    return-void
.end method

.method private clearAnimationState()V
    .locals 6

    .line 451
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 452
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    .line 454
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 455
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 456
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 457
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 461
    iget-object v3, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getRelativePosition([ILandroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 367
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    add-int/2addr v0, v1

    aput v0, p1, v1

    const/4 v0, 0x1

    .line 368
    aput v1, p1, v0

    .line 369
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V
    .locals 4

    if-eq p2, p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 377
    aget v0, p1, v2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v0, v3

    aput v0, p1, v2

    .line 378
    aget v0, p1, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    aput v0, p1, v1

    .line 380
    :cond_1
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout;

    if-nez v0, :cond_2

    .line 382
    aget v0, p1, v2

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v0, v3

    aput v0, p1, v2

    .line 383
    aget v0, p1, v1

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    aput v0, p1, v1

    .line 385
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private isIconInAnimatedRow(I)Z
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 362
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v0

    .line 363
    iget p0, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    add-int/2addr p0, v0

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    if-ge p1, p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private setCurrentPosition()V
    .locals 1

    .line 138
    iget v0, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    return-void
.end method

.method private updateAnimators()V
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 192
    iput-boolean v1, v0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    .line 193
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 194
    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 195
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 197
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [I

    new-array v8, v6, [I

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 206
    iget-object v9, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 207
    iget-object v9, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 209
    iget-object v9, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v9

    .line 210
    iget-object v10, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object v11, v9

    check-cast v11, Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v10, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v10}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v10}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    goto :goto_0

    :cond_1
    move v10, v1

    .line 212
    :goto_0
    iget-object v11, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v11}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v11}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    goto :goto_1

    :cond_2
    move v11, v1

    .line 213
    :goto_1
    iget-object v12, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v12}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    sub-int/2addr v10, v12

    iget-object v12, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 214
    invoke-interface {v12}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    add-int/2addr v10, v12

    new-array v12, v6, [F

    int-to-float v13, v10

    aput v13, v12, v1

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v12, v14

    const-string v15, "translationY"

    .line 215
    invoke-virtual {v2, v9, v15, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 217
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v6, v1

    move/from16 v17, v6

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    const-string v14, "alpha"

    if-eqz v18, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v1, v18

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    move-object/from16 v18, v12

    .line 218
    iget-object v12, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v12, v1}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v12

    if-nez v12, :cond_3

    .line 220
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tileView is null "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "QSAnimator"

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v22, v5

    move/from16 v21, v10

    move/from16 v24, v11

    move/from16 v23, v13

    goto :goto_3

    .line 223
    :cond_3
    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v21

    move-object/from16 v22, v5

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v5

    move/from16 v21, v10

    .line 224
    iget-object v10, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v10}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v10

    move/from16 v23, v13

    .line 227
    iget-object v13, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v13}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getNumVisibleTiles()I

    move-result v13

    move/from16 v24, v11

    const-string v11, "translationX"

    if-ge v6, v13, :cond_7

    iget-boolean v13, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v13, :cond_7

    .line 229
    iget-object v13, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v13, v1}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_3
    move-object/from16 v12, v18

    move/from16 v10, v21

    move-object/from16 v5, v22

    move/from16 v13, v23

    move/from16 v11, v24

    :goto_4
    const/4 v1, 0x0

    const/4 v14, 0x1

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    .line 232
    aget v17, v7, v13

    .line 233
    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v13

    invoke-direct {v0, v7, v13, v10}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 234
    invoke-direct {v0, v8, v5, v10}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    const/4 v5, 0x0

    .line 235
    aget v10, v8, v5

    aget v13, v7, v5

    sub-int/2addr v10, v13

    const/4 v13, 0x1

    .line 236
    aget v19, v8, v13

    aget v20, v7, v13

    sub-int v13, v19, v20

    .line 237
    aget v19, v7, v5

    sub-int v17, v19, v17

    .line 239
    invoke-interface {v9}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getNumVisibleTiles()I

    move-result v5

    if-ge v6, v5, :cond_5

    const/4 v5, 0x2

    new-array v14, v5, [F

    const/16 v16, 0x0

    const/16 v19, 0x0

    aput v16, v14, v19

    int-to-float v5, v10

    const/16 v25, 0x1

    aput v5, v14, v25

    .line 241
    invoke-virtual {v3, v1, v11, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v5, 0x2

    new-array v14, v5, [F

    aput v16, v14, v19

    int-to-float v5, v13

    aput v5, v14, v25

    .line 242
    invoke-virtual {v4, v1, v15, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v5, 0x2

    new-array v14, v5, [F

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v14, v19

    aput v16, v14, v25

    .line 250
    invoke-virtual {v3, v12, v11, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v10, v5, [F

    neg-int v11, v13

    int-to-float v11, v11

    aput v11, v10, v19

    aput v16, v10, v25

    .line 251
    invoke-virtual {v4, v12, v15, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-object/from16 v26, v9

    goto :goto_6

    :cond_5
    move-object/from16 v26, v9

    const/4 v5, 0x2

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v25, 0x1

    new-array v9, v5, [F

    .line 254
    fill-array-data v9, :array_0

    invoke-virtual {v2, v1, v14, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v9, v5, [F

    aput v16, v9, v19

    int-to-float v5, v13

    aput v5, v9, v25

    .line 255
    invoke-virtual {v4, v1, v15, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 258
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_6

    sub-int v10, v10, v24

    goto :goto_5

    :cond_6
    add-int v10, v10, v24

    :goto_5
    const/4 v5, 0x2

    new-array v9, v5, [F

    const/4 v5, 0x0

    const/4 v13, 0x0

    aput v5, v9, v13

    int-to-float v5, v10

    const/4 v10, 0x1

    aput v5, v9, v10

    .line 259
    invoke-virtual {v3, v1, v11, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 263
    :goto_6
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getIconWithBackground()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v7

    :goto_7
    move/from16 v10, v21

    goto :goto_8

    :cond_7
    move-object/from16 v26, v9

    .line 266
    iget-boolean v1, v0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    if-eqz v1, :cond_8

    invoke-direct {v0, v6}, Lcom/android/systemui/qs/QSAnimator;->isIconInAnimatedRow(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 271
    aget v9, v7, v1

    add-int v9, v9, v17

    aput v9, v7, v1

    .line 272
    invoke-direct {v0, v8, v5, v10}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 273
    aget v9, v8, v1

    aget v10, v7, v1

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    .line 274
    aget v13, v8, v10

    aget v14, v7, v10

    sub-int/2addr v13, v14

    move-object/from16 v25, v7

    const/4 v14, 0x2

    new-array v7, v14, [F

    aput v23, v7, v1

    const/16 v16, 0x0

    aput v16, v7, v10

    .line 276
    invoke-virtual {v2, v12, v15, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v7, v14, [F

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v7, v1

    aput v16, v7, v10

    .line 277
    invoke-virtual {v3, v12, v11, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v7, v14, [F

    neg-int v9, v13

    int-to-float v9, v9

    aput v9, v7, v1

    aput v16, v7, v10

    .line 278
    invoke-virtual {v4, v12, v15, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v7, v14, [F

    aput v9, v7, v1

    aput v16, v7, v10

    .line 279
    invoke-virtual {v4, v5, v15, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 281
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    move-object/from16 v25, v7

    const/4 v1, 0x2

    new-array v5, v1, [F

    .line 283
    fill-array-data v5, :array_1

    invoke-virtual {v2, v12, v14, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v5, v1, [F

    move/from16 v10, v21

    neg-int v1, v10

    int-to-float v1, v1

    const/4 v7, 0x0

    aput v1, v5, v7

    const/4 v1, 0x0

    const/4 v7, 0x1

    aput v1, v5, v7

    .line 284
    invoke-virtual {v2, v12, v15, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 286
    :goto_8
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v12, v18

    move-object/from16 v5, v22

    move/from16 v13, v23

    move/from16 v11, v24

    move-object/from16 v7, v25

    move-object/from16 v9, v26

    goto/16 :goto_4

    :cond_9
    move-object/from16 v22, v5

    move-object/from16 v26, v9

    .line 290
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getBrightnessView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 291
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->shouldUseHorizontalLayout()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 292
    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->isMediaHostVisible()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 293
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    .line 294
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getMediaHost()Lcom/android/systemui/media/MediaHost;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v5

    .line 295
    iget-object v6, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSPanel;->getMediaHost()Lcom/android/systemui/media/MediaHost;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v6

    .line 297
    iget-object v7, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSPanel;->hasActiveMedia()Z

    move-result v7

    if-nez v7, :cond_a

    .line 298
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, v0, Lcom/android/systemui/qs/QSAnimator;->mMediaTopOffset:I

    goto :goto_9

    .line 300
    :cond_a
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/android/systemui/qs/QSAnimator;->mMediaDividerHeight:I

    :goto_9
    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 302
    new-instance v6, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const/4 v7, 0x2

    new-array v8, v7, [F

    const/4 v7, 0x0

    aput v5, v8, v7

    const/4 v5, 0x0

    const/4 v7, 0x1

    aput v5, v8, v7

    invoke-virtual {v6, v1, v15, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 303
    invoke-virtual {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 304
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    .line 306
    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 309
    :goto_a
    iget-boolean v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v1, :cond_12

    .line 311
    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 312
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 314
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v2, 0x3f5c28f6    # 0.86f

    .line 315
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_2

    move-object/from16 v5, v26

    .line 316
    invoke-virtual {v1, v5, v14, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 317
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 320
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 321
    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getSecurityFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 322
    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getSecurityFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_3

    invoke-virtual {v1, v2, v14, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    goto :goto_b

    :cond_c
    const/4 v6, 0x2

    .line 324
    :goto_b
    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 325
    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v2

    new-array v7, v6, [F

    fill-array-data v7, :array_4

    invoke-virtual {v1, v2, v14, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 327
    :cond_d
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 328
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getSecurityFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 329
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getSecurityFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_e
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 332
    iget-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_f
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    if-gt v1, v2, :cond_10

    move v1, v6

    goto :goto_c

    .line 339
    :cond_10
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_11

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_c

    :cond_11
    const/4 v1, 0x0

    .line 342
    :goto_c
    new-instance v2, Lcom/android/systemui/qs/PathInterpolatorBuilder;

    const/4 v7, 0x0

    invoke-direct {v2, v7, v7, v1, v6}, Lcom/android/systemui/qs/PathInterpolatorBuilder;-><init>(FFFF)V

    .line 343
    invoke-virtual {v2}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 344
    invoke-virtual {v2}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 345
    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 346
    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    goto :goto_d

    :cond_12
    move-object/from16 v5, v26

    .line 348
    :goto_d
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_5

    .line 349
    invoke-virtual {v1, v2, v14, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 350
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 351
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 352
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 353
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v2, 0x3e0f5c29    # 0.14f

    .line 354
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_6

    .line 355
    invoke-virtual {v1, v5, v14, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateQQSVisibility()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 143
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    if-nez p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 142
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 4

    .line 432
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 435
    iget-object v3, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationAtStart()V
    .locals 1

    .line 427
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 4

    .line 441
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    .line 442
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 445
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 468
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPageChanged(Z)V
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 188
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    return-void
.end method

.method public onQsScrollingChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    return-void
.end method

.method public onRtlChanged()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public onTilesChanged()V
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "sysui_qs_fancy_anim"

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 169
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-nez p1, :cond_2

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    goto :goto_0

    :cond_0
    const-string v0, "sysui_qs_move_whole_rows"

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    goto :goto_0

    :cond_1
    const-string v0, "sysui_qqs_count"

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 176
    invoke-static {p2}, Lcom/android/systemui/qs/QuickQSPanel;->parseNumTiles(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 179
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 154
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "sysui_qs_fancy_anim"

    const-string v1, "sysui_qs_move_whole_rows"

    const-string v2, "sysui_qqs_count"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 163
    :cond_0
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 148
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    .line 121
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz p1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    :cond_0
    return-void
.end method

.method public setPosition(F)V
    .locals 3

    .line 389
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    if-eqz v0, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v0, :cond_1

    return-void

    .line 393
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 394
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v2

    .line 400
    :cond_3
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    .line 401
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_4

    .line 402
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 404
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_5

    .line 405
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 408
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 409
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_1

    .line 411
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 412
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 414
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_6

    .line 415
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_6
    cmpl-float p1, p1, v1

    if-nez p1, :cond_7

    .line 419
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getBrightnessView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 421
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getBrightnessView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method setShowCollapsedOnKeyguard(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->setCurrentPosition()V

    return-void
.end method
