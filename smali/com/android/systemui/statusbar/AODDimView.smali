.class public Lcom/android/systemui/statusbar/AODDimView;
.super Landroid/view/View;
.source "AODDimView.java"


# static fields
.field private static ANIMATION_DURATION:I = 0xc8


# instance fields
.field private mIsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/AODDimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AODDimView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/AODDimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AODDimView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/AODDimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AODDimView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AODDimView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/AODDimView;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AODDimView;->setHidden()V

    return-void
.end method

.method private init()V
    .locals 1

    const-string v0, "#000000"

    .line 54
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v0, 0x8

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setHidden()V
    .locals 1

    const/16 v0, 0x8

    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/AODDimView;->mIsEnabled:Z

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/AODDimView;->setVisible(ZZ)V

    return-void
.end method

.method public setVisible(ZZ)V
    .locals 6

    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/AODDimView;->mIsEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 72
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 73
    sget v4, Lcom/android/systemui/statusbar/AODDimView;->ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 74
    invoke-virtual {v3, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 75
    invoke-virtual {p0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 78
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 82
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 83
    sget p2, Lcom/android/systemui/statusbar/AODDimView;->ANIMATION_DURATION:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 84
    invoke-virtual {p1, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 85
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    new-instance p2, Lcom/android/systemui/statusbar/AODDimView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/AODDimView$1;-><init>(Lcom/android/systemui/statusbar/AODDimView;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    const/16 p1, 0x8

    .line 99
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method
