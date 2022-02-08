.class public Lcom/android/systemui/media/MediaControlPanel;
.super Ljava/lang/Object;
.source "MediaControlPanel.java"


# static fields
.field static final ACTION_IDS:[I

.field private static final SETTINGS_INTENT:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAlbumArtRadius:I

.field private mAlbumArtSize:I

.field private mBackgroundColor:I

.field protected final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private mContext:Landroid/content/Context;

.field private mController:Landroid/media/session/MediaController;

.field private mKey:Ljava/lang/String;

.field private mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field private mMediaDataManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

.field private mMediaViewController:Lcom/android/systemui/media/MediaViewController;

.field private mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

.field private final mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

.field private mToken:Landroid/media/session/MediaSession$Token;

.field private mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

.field private final mViewOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_MEDIA_CONTROLS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/MediaControlPanel;->SETTINGS_INTENT:Landroid/content/Intent;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 71
    sget v1, Lcom/android/systemui/R$id;->action0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->action1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->action2:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->action3:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->action4:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/media/MediaControlPanel;->ACTION_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/MediaViewController;Lcom/android/systemui/media/SeekBarViewModel;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/media/MediaViewController;",
            "Lcom/android/systemui/media/SeekBarViewModel;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            "Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 112
    iput-object p3, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 113
    iput-object p5, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    .line 114
    iput-object p4, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    .line 115
    iput-object p6, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaDataManagerLazy:Ldagger/Lazy;

    .line 116
    iput-object p7, p0, Lcom/android/systemui/media/MediaControlPanel;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 117
    iput-object p8, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->loadDimens()V

    .line 120
    new-instance p1, Lcom/android/systemui/media/MediaControlPanel$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaControlPanel$1;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/media/MediaControlPanel;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/media/MediaControlPanel;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtRadius:I

    return p0
.end method

.method private closeGuts()V
    .locals 1

    const/4 v0, 0x0

    .line 396
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts(Z)V

    return-void
.end method

.method private synthetic lambda$attach$0(Landroid/view/View;)Z
    .locals 0

    .line 195
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result p1

    if-nez p1, :cond_0

    .line 196
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->openGuts()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$attach$1(Landroid/view/View;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts()V

    return-void
.end method

.method private synthetic lambda$attach$2(Landroid/view/View;)V
    .locals 1

    .line 206
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object p1, Lcom/android/systemui/media/MediaControlPanel;->SETTINGS_INTENT:Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private synthetic lambda$bind$3(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    .line 240
    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 241
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private synthetic lambda$bind$4(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->create(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$bind$5(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 341
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$bind$6(Landroid/media/session/MediaController;)V
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SeekBarViewModel;->updateController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method private synthetic lambda$bind$7()Z
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaDataManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDataManager;

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mKey:Ljava/lang/String;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/media/MediaDataManager;->dismissMediaData(Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$bind$8(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 0

    .line 369
    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mKey:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts()V

    .line 371
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    new-instance p2, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$ixKQ03no_VFzBBH8MQU34cmqi64;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$ixKQ03no_VFzBBH8MQU34cmqi64;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    goto :goto_0

    .line 377
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Dismiss media with null notification. Token uid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaSession$Token;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaControlPanel"

    .line 377
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private loadDimens()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    const v2, 0x1010571

    .line 138
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtRadius:I

    .line 139
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_album_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    return-void
.end method

.method private scaleDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 408
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 411
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    int-to-float v4, v3

    mul-float/2addr v4, v0

    float-to-int v0, v4

    invoke-direct {v1, v2, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 413
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    int-to-float v4, v3

    div-float/2addr v4, v0

    float-to-int v0, v4

    invoke-direct {v1, v2, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 415
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    if-gt v0, v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    if-le v0, v2, :cond_3

    .line 416
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 417
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    sub-int/2addr v3, p0

    int-to-float p0, v3

    div-float/2addr p0, v2

    neg-float v0, v0

    float-to-int v0, v0

    neg-float p0, p0

    float-to-int p0, p0

    .line 418
    invoke-virtual {v1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 420
    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method private setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 459
    :goto_0
    invoke-virtual {p1, p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    if-eqz p3, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 460
    :goto_1
    invoke-virtual {p1, p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/media/PlayerViewHolder;)V
    .locals 3

    .line 182
    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    .line 183
    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v2, 0x1

    .line 187
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 189
    new-instance v1, Lcom/android/systemui/media/SeekBarObserver;

    invoke-direct {v1, p1}, Lcom/android/systemui/media/SeekBarObserver;-><init>(Lcom/android/systemui/media/PlayerViewHolder;)V

    iput-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    .line 190
    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {v1}, Lcom/android/systemui/media/SeekBarViewModel;->getProgress()Landroidx/lifecycle/LiveData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 191
    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/systemui/media/SeekBarViewModel;->attachTouchHandlers(Landroid/widget/SeekBar;)V

    .line 192
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/MediaViewController;->attach(Lcom/android/systemui/util/animation/TransitionLayout;)V

    .line 194
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$lOExuytNJoCXpak7OAS_2H89KLo;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$lOExuytNJoCXpak7OAS_2H89KLo;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 202
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getCancel()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$sPtJV95XbAnINKsHeKnbZyXsTtk;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$sPtJV95XbAnINKsHeKnbZyXsTtk;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSettings()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$9ids7Bf2vNU0OhLTAQHYO6bjLGk;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$9ids7Bf2vNU0OhLTAQHYO6bjLGk;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bind(Lcom/android/systemui/media/MediaData;Ljava/lang/String;)V
    .locals 13

    .line 214
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mKey:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object p2

    .line 219
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    .line 220
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    :cond_1
    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    .line 224
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 225
    new-instance p2, Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {p2, v1, v2}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    goto :goto_0

    .line 227
    :cond_3
    iput-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    .line 230
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaViewController;->getExpandedLayout()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p2

    .line 231
    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaViewController;->getCollapsedLayout()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    .line 234
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 233
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 237
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getClickIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 239
    iget-object v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v3}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$jpEP3U3195z34UCl9LVGb7l0ug4;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$jpEP3U3195z34UCl9LVGb7l0ug4;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/app/PendingIntent;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    move-result-object v2

    .line 246
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getArtwork()Landroid/graphics/drawable/Icon;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_1

    :cond_5
    move v3, v5

    :goto_1
    if-eqz v3, :cond_6

    .line 248
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getArtwork()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/media/MediaControlPanel;->scaleDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 249
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :cond_6
    sget v2, Lcom/android/systemui/R$id;->album_art:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 252
    sget v2, Lcom/android/systemui/R$id;->album_art:I

    invoke-direct {p0, p2, v2, v3}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 255
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getAppIcon()Landroid/widget/ImageView;

    move-result-object v2

    .line 256
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 257
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 259
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$drawable;->ic_music_note:I

    invoke-virtual {v3, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 260
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getTitleText()Landroid/widget/TextView;

    move-result-object v2

    .line 265
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getSong()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getAppName()Landroid/widget/TextView;

    move-result-object v2

    .line 269
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getApp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getArtistText()Landroid/widget/TextView;

    move-result-object v2

    .line 273
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getArtist()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 277
    sget v2, Lcom/android/systemui/R$id;->media_seamless:I

    invoke-direct {p0, v1, v2, v4}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 278
    sget v2, Lcom/android/systemui/R$id;->media_seamless:I

    invoke-direct {p0, p2, v2, v4}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 279
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$XUCYwPteQkHM2YOLgkT8nutQ9WM;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$XUCYwPteQkHM2YOLgkT8nutQ9WM;-><init>(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/MediaData;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessIcon()Landroid/widget/ImageView;

    move-result-object v2

    .line 284
    iget-object v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v3}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessText()Landroid/widget/TextView;

    move-result-object v3

    .line 286
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getDevice()Lcom/android/systemui/media/MediaDeviceData;

    move-result-object v6

    .line 287
    iget-object v7, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v7}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    .line 288
    iget-object v8, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v8}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessFallback()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getId()I

    move-result v8

    if-eqz v6, :cond_8

    .line 289
    invoke-virtual {v6}, Lcom/android/systemui/media/MediaDeviceData;->getEnabled()Z

    move-result v9

    if-nez v9, :cond_8

    move v9, v4

    goto :goto_3

    :cond_8
    move v9, v5

    :goto_3
    const/16 v10, 0x8

    if-eqz v9, :cond_9

    move v11, v5

    goto :goto_4

    :cond_9
    move v11, v10

    .line 291
    :goto_4
    iget-object v12, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v12}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessFallback()Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    invoke-virtual {p2, v8, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 293
    invoke-virtual {v1, v8, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    if-eqz v9, :cond_a

    move v8, v10

    goto :goto_5

    :cond_a
    move v8, v5

    .line 295
    :goto_5
    iget-object v11, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v11}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 296
    invoke-virtual {p2, v7, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 297
    invoke-virtual {v1, v7, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 298
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getResumption()Z

    move-result v8

    const v11, 0x3ec28f5c    # 0.38f

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v8, :cond_b

    move v8, v11

    goto :goto_6

    :cond_b
    move v8, v12

    .line 299
    :goto_6
    invoke-virtual {p2, v7, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    .line 300
    invoke-virtual {v1, v7, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    .line 302
    iget-object v7, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v7}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getResumption()Z

    move-result v8

    xor-int/2addr v8, v4

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-eqz v9, :cond_c

    .line 304
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_c
    if-eqz v6, :cond_e

    .line 307
    invoke-virtual {v6}, Lcom/android/systemui/media/MediaDeviceData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 308
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    instance-of v7, v0, Lcom/android/settingslib/widget/AdaptiveIcon;

    if-eqz v7, :cond_d

    .line 310
    check-cast v0, Lcom/android/settingslib/widget/AdaptiveIcon;

    .line 311
    iget v7, p0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    invoke-virtual {v0, v7}, Lcom/android/settingslib/widget/AdaptiveIcon;->setBackgroundColor(I)V

    .line 312
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 314
    :cond_d
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    :goto_7
    invoke-virtual {v6}, Lcom/android/systemui/media/MediaDeviceData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_e
    const-string v0, "MediaControlPanel"

    const-string v6, "device is null. Not binding output chip."

    .line 319
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x1040318

    .line 321
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 324
    :goto_8
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getActionsToShowInCompact()Ljava/util/List;

    move-result-object v0

    .line 327
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getActions()Ljava/util/List;

    move-result-object v2

    move v3, v5

    .line 328
    :goto_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_10

    sget-object v6, Lcom/android/systemui/media/MediaControlPanel;->ACTION_IDS:[I

    array-length v7, v6

    if-ge v3, v7, :cond_10

    .line 329
    aget v6, v6, v3

    .line 330
    iget-object v7, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v7, v6}, Lcom/android/systemui/media/PlayerViewHolder;->getAction(I)Landroid/widget/ImageButton;

    move-result-object v7

    .line 331
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/media/MediaAction;

    .line 332
    invoke-virtual {v8}, Lcom/android/systemui/media/MediaAction;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    invoke-virtual {v8}, Lcom/android/systemui/media/MediaAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 334
    invoke-virtual {v8}, Lcom/android/systemui/media/MediaAction;->getAction()Ljava/lang/Runnable;

    move-result-object v8

    if-nez v8, :cond_f

    .line 337
    invoke-virtual {v7, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_a

    .line 339
    :cond_f
    invoke-virtual {v7, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 340
    new-instance v9, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$pcCVx3rgBJIAxMZr95UWudmbhLY;

    invoke-direct {v9, v8}, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$pcCVx3rgBJIAxMZr95UWudmbhLY;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    :goto_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 345
    invoke-direct {p0, v1, v6, v7}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 346
    invoke-direct {p0, p2, v6, v4}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 350
    :cond_10
    :goto_b
    sget-object v0, Lcom/android/systemui/media/MediaControlPanel;->ACTION_IDS:[I

    array-length v2, v0

    if-ge v3, v2, :cond_11

    .line 351
    aget v0, v0, v3

    invoke-direct {p0, p2, v0, v5}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 352
    sget-object v0, Lcom/android/systemui/media/MediaControlPanel;->ACTION_IDS:[I

    aget v0, v0, v3

    invoke-direct {p0, v1, v0, v5}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 356
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaControlPanel;->getController()Landroid/media/session/MediaController;

    move-result-object p2

    .line 357
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$0FXpcXMfqerY9pNSZZUS9aDKzW0;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$0FXpcXMfqerY9pNSZZUS9aDKzW0;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/media/session/MediaController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 360
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->isClearable()Z

    move-result p2

    .line 361
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getSettingsText()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p2, :cond_12

    .line 362
    sget v1, Lcom/android/systemui/R$string;->controls_media_close_session:I

    goto :goto_c

    .line 363
    :cond_12
    sget v1, Lcom/android/systemui/R$string;->controls_media_active_session:I

    .line 361
    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getDismissLabel()Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_13

    move v11, v12

    :cond_13
    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getDismiss()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 368
    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p2}, Lcom/android/systemui/media/PlayerViewHolder;->getDismiss()Landroid/view/ViewGroup;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$ok5X_2VHWq8Z1DfA2e_ykvluL5w;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$ok5X_2VHWq8Z1DfA2e_ykvluL5w;-><init>(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/MediaData;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->refreshState()V

    return-void
.end method

.method public closeGuts(Z)V
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaViewController;->closeGuts(Z)V

    return-void
.end method

.method public getController()Landroid/media/session/MediaController;
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method public getMediaViewController()Lcom/android/systemui/media/MediaViewController;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    return-object p0
.end method

.method public getView()Lcom/android/systemui/media/PlayerViewHolder;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    return-object p0
.end method

.method public synthetic lambda$attach$0$MediaControlPanel(Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attach$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$attach$1$MediaControlPanel(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attach$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$attach$2$MediaControlPanel(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attach$2(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$bind$3$MediaControlPanel(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$3(Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$bind$4$MediaControlPanel(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$4(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$bind$6$MediaControlPanel(Landroid/media/session/MediaController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$6(Landroid/media/session/MediaController;)V

    return-void
.end method

.method public synthetic lambda$bind$7$MediaControlPanel()Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$7()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$bind$8$MediaControlPanel(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$8(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/media/SeekBarViewModel;->getProgress()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/media/SeekBarViewModel;->onDestroy()V

    .line 133
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->onDestroy()V

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SeekBarViewModel;->setListening(Z)V

    return-void
.end method
