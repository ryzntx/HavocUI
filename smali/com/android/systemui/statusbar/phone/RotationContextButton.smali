.class public Lcom/android/systemui/statusbar/phone/RotationContextButton;
.super Lcom/android/systemui/statusbar/phone/ContextualButton;
.source "RotationContextButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;
.implements Lcom/android/systemui/statusbar/phone/RotationButton;


# instance fields
.field private mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ContextualButton;-><init>(II)V

    return-void
.end method


# virtual methods
.method public acceptRotationProposal()Z
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getNewDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 3

    .line 74
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/RotationContextButton;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    .line 75
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->getStyleRes()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 76
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconResId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    return-void
.end method

.method public setRotationButtonController(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationContextButton;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/ContextualButton;->setVisibility(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    if-nez p1, :cond_0

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->resetAnimation()V

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->startAnimation()V

    :cond_0
    return-void
.end method

.method public setVisibilityChangedCallback(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/phone/RotationContextButton$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/RotationContextButton$1;-><init>(Lcom/android/systemui/statusbar/phone/RotationContextButton;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->setListener(Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;)V

    return-void
.end method
