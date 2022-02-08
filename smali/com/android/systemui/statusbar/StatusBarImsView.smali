.class public Lcom/android/systemui/statusbar/StatusBarImsView;
.super Landroid/widget/FrameLayout;
.source "StatusBarImsView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;


# instance fields
.field private mSlot:Ljava/lang/String;

.field private mState:Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;

.field private mVisibleState:I

.field private mVolteIcon:Landroid/widget/ImageView;

.field private mVowifiIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVisibleState:I

    return-void
.end method

.method public static fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarImsView;
    .locals 2

    .line 72
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 73
    sget v0, Lcom/android/systemui/R$layout;->status_bar_ims_group:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarImsView;

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarImsView;->setSlot(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarImsView;->init()V

    const/4 p1, 0x0

    .line 76
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(I)V

    return-object p0
.end method

.method private initViewState(Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;)V
    .locals 5

    .line 136
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 137
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;->vowifiVisible:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVolteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVowifiIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget v4, p1, Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;->vowifiIcon:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVowifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 141
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;->volteVisible:Z

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVowifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVolteIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget v4, p1, Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;->volteIcon:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVolteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVolteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVowifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    :goto_0
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;->visible:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public applyImsState(Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mState:Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    .line 129
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarImsView;->initViewState(Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;)V

    :goto_0
    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mSlot:Ljava/lang/String;

    return-object p0
.end method

.method public getVisibleState()I
    .locals 0

    .line 118
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVisibleState:I

    return p0
.end method

.method public init()V
    .locals 1

    .line 81
    sget v0, Lcom/android/systemui/R$id;->ims_group:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 82
    sget v0, Lcom/android/systemui/R$id;->vowifi_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVowifiIcon:Landroid/widget/ImageView;

    .line 83
    sget v0, Lcom/android/systemui/R$id;->volte_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVolteIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public isIconVisible()Z
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mState:Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$ImsIconState;->visible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 165
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 166
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVolteIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 167
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVowifiIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setDecorColor(I)V
    .locals 0

    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mSlot:Ljava/lang/String;

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 1

    .line 158
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVolteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 160
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVowifiIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setVisibleState(IZ)V
    .locals 1

    .line 97
    iget p2, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVisibleState:I

    if-ne p1, p2, :cond_0

    return-void

    .line 100
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarImsView;->mVisibleState:I

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    const/16 v0, 0x8

    if-eq p1, p2, :cond_1

    .line 111
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
