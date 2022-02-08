.class public Lcom/android/systemui/statusbar/phone/FloatingRotationButton;
.super Ljava/lang/Object;
.source "FloatingRotationButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/RotationButton;


# instance fields
.field private mCanShow:Z

.field private final mContext:Landroid/content/Context;

.field private final mDiameter:I

.field private mIsShowing:Z

.field private mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private final mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

.field private final mMargin:I

.field private mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

.field private mVisibilityChangedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mCanShow:Z

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    .line 58
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->rotate_suggestion:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 63
    sget v0, Lcom/android/systemui/R$dimen;->floating_rotation_button_diameter:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mDiameter:I

    .line 64
    sget v0, Lcom/android/systemui/R$dimen;->floating_rotation_button_min_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/systemui/R$dimen;->nav_content_padding:I

    .line 65
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 64
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mMargin:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/FloatingRotationButton;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/FloatingRotationButton;)Ljava/util/function/Consumer;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/FloatingRotationButton;)Lcom/android/systemui/statusbar/policy/KeyButtonView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    return-object p0
.end method


# virtual methods
.method public getCurrentView()Landroid/view/View;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    return-object p0
.end method

.method public getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 8

    .line 175
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->getStyleRes()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 177
    sget p0, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {v0, p0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result p0

    .line 178
    sget v1, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 179
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 180
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v0, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 181
    sget p0, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v1, p0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v4

    .line 183
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result p0

    int-to-float p0, p0

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    .line 184
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3f6b851f    # 0.92f

    .line 183
    invoke-static {p0, v0, v1, v3}, Landroid/graphics/Color;->valueOf(FFFF)Landroid/graphics/Color;

    move-result-object v7

    .line 186
    sget p0, Lcom/android/systemui/R$attr;->singleToneColor:I

    .line 187
    invoke-static {v2, p0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v3

    sget v5, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button:I

    const/4 v6, 0x0

    .line 186
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public hide()Z
    .locals 3

    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 137
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    .line 138
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_1

    .line 139
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    return p0
.end method

.method public setCanShowRotationButton(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mCanShow:Z

    if-nez p1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->hide()Z

    :cond_0
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDarkIntensity(F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public setRotationButtonController(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    return-void
.end method

.method public setVisibilityChangedCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public show()Z
    .locals 11

    .line 85
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mCanShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    const/16 v8, 0x8

    .line 90
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mDiameter:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mMargin:I

    const/16 v7, 0x7e8

    const/4 v9, -0x3

    move-object v2, v10

    move v3, v4

    move v5, v6

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 93
    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v2, "FloatingRotationButton"

    .line 94
    invoke-virtual {v10, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v10, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 96
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x33

    .line 107
    iput v1, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x35

    .line 104
    iput v1, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_3
    const/16 v1, 0x55

    .line 101
    iput v1, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_4
    const/16 v1, 0x53

    .line 98
    iput v1, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->updateIcon()V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-interface {v1, v2, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->resetAnimation()V

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->startAnimation()V

    .line 118
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/FloatingRotationButton$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton$1;-><init>(Lcom/android/systemui/statusbar/phone/FloatingRotationButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public updateIcon()V
    .locals 2

    .line 151
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->resetAnimation()V

    .line 159
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->startAnimation()V

    :cond_1
    return-void
.end method
