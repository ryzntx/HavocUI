.class public Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;
.super Ljava/lang/Object;
.source "KeyguardUserSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;,
        Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

.field private mAnimating:Z

.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private final mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

.field private mBgAnimator:Landroid/animation/ObjectAnimator;

.field public final mDataSetObserver:Landroid/database/DataSetObserver;

.field private final mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mUserSwitcher:Landroid/view/ViewGroup;

.field private final mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

.field private mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 9

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$4;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 71
    :goto_0
    const-class v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    .line 74
    new-instance p2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->reinflateViews()V

    .line 76
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 77
    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    .line 78
    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    .line 79
    new-instance p2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    invoke-direct {p2, p1, v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    .line 80
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p2, p3}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 81
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 82
    new-instance p2, Lcom/android/settingslib/animation/AppearAnimationUtils;

    const-wide/16 v4, 0x190

    const/high16 v6, -0x41000000    # -0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 84
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)Landroid/view/ViewGroup;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->refresh()V

    return-void
.end method

.method private cancelAnimations()V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 157
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 163
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    return-void
.end method

.method private hide(Z)Z
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->cancelAnimations()V

    if-eqz p1, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->startDisappearAnimation()V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 148
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherShowing(ZZ)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private refresh()V
    .locals 7

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getCount()I

    move-result v1

    .line 214
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    if-ge v3, v1, :cond_2

    const/4 v4, 0x0

    if-ge v3, v0, :cond_0

    .line 219
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 221
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3, v4, v6}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    if-nez v4, :cond_1

    .line 224
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    if-eq v4, v5, :cond_3

    .line 227
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 228
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 231
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 232
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private reinflateViews()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->keyguard_user_switcher_inner:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    sget v1, Lcom/android/systemui/R$id;->keyguard_user_switcher_inner:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    .line 106
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private shouldExpandByDefault()Z
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startAppearAnimation()V
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 168
    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 170
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x190

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 192
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private startDisappearAnimation()V
    .locals 3

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$3;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public hideIfNotSimple(Z)Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hide(Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method isAnimating()Z
    .locals 0

    .line 245
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    return p0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->reinflateViews()V

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->refresh()V

    :cond_0
    return-void
.end method

.method public setKeyguard(ZZ)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->shouldExpandByDefault()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->show(Z)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hide(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public show(Z)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->cancelAnimations()V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->refresh()V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherShowing(ZZ)V

    if-eqz p1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->startAppearAnimation()V

    :cond_0
    return-void
.end method
