.class public Lcom/android/systemui/statusbar/policy/NetworkTrafficSB;
.super Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.source "NetworkTrafficSB.java"

# interfaces
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;


# instance fields
.field private mKeyguardShowing:Z

.field private mSystemIconVisible:Z

.field private mVisibleState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkTrafficSB;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/NetworkTrafficSB;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTrafficSB;->mVisibleState:I

    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTrafficSB;->mSystemIconVisible:Z

    .line 34
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private maybeRestoreVisibility()V
    .locals 2

    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTrafficSB;->mSystemIconVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTrafficSB;->isIconVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->restoreViewQuickly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->update()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSlot()Ljava/lang/String;
    .locals 0

    const-string p0, "networktraffic"

    return-object p0
.end method

.method public getVisibleState()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTrafficSB;->mVisibleState:I

    return p0
.end method

.method isDisabled()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIsEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mLocation:I

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTrafficSB;->mSystemIconVisible:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isIconVisible()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mLocation:I

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTrafficSB;->mKeyguardShowing:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1

    .line 42
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIsEnabled:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mLocation:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTintColor:I

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateTrafficDrawable()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDecorColor(I)V
    .locals 0

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTrafficSB;->mKeyguardShowing:Z

    if-eqz p1, :cond_0

    const-string p1, ""

    .line 96
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTrafficSB;->maybeRestoreVisibility()V

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTintColor:I

    .line 86
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateTrafficDrawable()V

    return-void
.end method

.method public setVisibleState(IZ)V
    .locals 0

    .line 65
    iget p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTrafficSB;->mVisibleState:I

    if-eq p1, p2, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIsEnabled:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-nez p2, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTrafficSB;->mVisibleState:I

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTrafficSB;->mSystemIconVisible:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTrafficSB;->mSystemIconVisible:Z

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->update()V

    :cond_2
    :goto_1
    return-void
.end method
