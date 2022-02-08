.class public Lcom/android/keyguard/clock/TypeClockController;
.super Ljava/lang/Object;
.source "TypeClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mDarkController:Lcom/android/keyguard/clock/CrossFadeDarkController;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLockClock:Lcom/android/keyguard/clock/TypographicClock;

.field private final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field private final mResources:Landroid/content/res/Resources;

.field private mTypeClock:Lcom/android/keyguard/clock/TypographicClock;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {v0}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/TypeClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 92
    iput-object p1, p0, Lcom/android/keyguard/clock/TypeClockController;->mResources:Landroid/content/res/Resources;

    .line 93
    iput-object p2, p0, Lcom/android/keyguard/clock/TypeClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 94
    iput-object p3, p0, Lcom/android/keyguard/clock/TypeClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/clock/TypeClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->type_aod_clock:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/clock/TypeClockController;->mView:Landroid/view/View;

    .line 99
    sget v1, Lcom/android/systemui/R$id;->type_clock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/TypographicClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/TypeClockController;->mTypeClock:Lcom/android/keyguard/clock/TypographicClock;

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/clock/TypeClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->typographic_clock:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/TypographicClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/TypeClockController;->mLockClock:Lcom/android/keyguard/clock/TypographicClock;

    const/16 v1, 0x8

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    new-instance v0, Lcom/android/keyguard/clock/CrossFadeDarkController;

    iget-object v1, p0, Lcom/android/keyguard/clock/TypeClockController;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/clock/TypeClockController;->mLockClock:Lcom/android/keyguard/clock/TypographicClock;

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/clock/CrossFadeDarkController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/TypeClockController;->mDarkController:Lcom/android/keyguard/clock/CrossFadeDarkController;

    return-void
.end method


# virtual methods
.method public getBigClockView()Landroid/view/View;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/clock/TypeClockController;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/android/keyguard/clock/TypeClockController;->createViews()V

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/TypeClockController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "type"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    .line 167
    sget p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_USE_DEFAULT_Y:I

    return p0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 3

    .line 136
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TypeClockController;->getBigClockView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/TypeClockController;->setDarkAmount(F)V

    const/4 v1, -0x1

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/TypeClockController;->setTextColor(I)V

    .line 141
    iget-object v1, p0, Lcom/android/keyguard/clock/TypeClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/clock/TypeClockController;->setColorPalette(Z[I)V

    .line 144
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TypeClockController;->onTimeTick()V

    .line 146
    iget-object p0, p0, Lcom/android/keyguard/clock/TypeClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 129
    iget-object p0, p0, Lcom/android/keyguard/clock/TypeClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$drawable;->type_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object p0, p0, Lcom/android/keyguard/clock/TypeClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->clock_title_type:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/clock/TypeClockController;->mLockClock:Lcom/android/keyguard/clock/TypographicClock;

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/android/keyguard/clock/TypeClockController;->createViews()V

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/TypeClockController;->mLockClock:Lcom/android/keyguard/clock/TypographicClock;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/android/keyguard/clock/TypeClockController;->mView:Landroid/view/View;

    .line 112
    iput-object v0, p0, Lcom/android/keyguard/clock/TypeClockController;->mTypeClock:Lcom/android/keyguard/clock/TypographicClock;

    .line 113
    iput-object v0, p0, Lcom/android/keyguard/clock/TypeClockController;->mLockClock:Lcom/android/keyguard/clock/TypographicClock;

    .line 114
    iput-object v0, p0, Lcom/android/keyguard/clock/TypeClockController;->mDarkController:Lcom/android/keyguard/clock/CrossFadeDarkController;

    return-void
.end method

.method public onTimeTick()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/clock/TypeClockController;->mTypeClock:Lcom/android/keyguard/clock/TypographicClock;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/TypographicClock;->onTimeChanged()V

    .line 192
    iget-object p0, p0, Lcom/android/keyguard/clock/TypeClockController;->mLockClock:Lcom/android/keyguard/clock/TypographicClock;

    invoke-virtual {p0}, Lcom/android/keyguard/clock/TypographicClock;->onTimeChanged()V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/clock/TypeClockController;->mTypeClock:Lcom/android/keyguard/clock/TypographicClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/clock/TypographicClock;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    .line 206
    iget-object p0, p0, Lcom/android/keyguard/clock/TypeClockController;->mLockClock:Lcom/android/keyguard/clock/TypographicClock;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/TypographicClock;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    return-void
.end method

.method public setColorPalette(Z[I)V
    .locals 1

    if-eqz p2, :cond_1

    .line 181
    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 184
    array-length v0, p2

    add-int/lit8 v0, v0, -0x5

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    aget p1, p2, p1

    .line 185
    iget-object p2, p0, Lcom/android/keyguard/clock/TypeClockController;->mTypeClock:Lcom/android/keyguard/clock/TypographicClock;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/clock/TypographicClock;->setClockColor(I)V

    .line 186
    iget-object p0, p0, Lcom/android/keyguard/clock/TypeClockController;->mLockClock:Lcom/android/keyguard/clock/TypographicClock;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/TypographicClock;->setClockColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/keyguard/clock/TypeClockController;->mDarkController:Lcom/android/keyguard/clock/CrossFadeDarkController;

    if-eqz p0, :cond_0

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/CrossFadeDarkController;->setDarkAmount(F)V

    :cond_0
    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/clock/TypeClockController;->mTypeClock:Lcom/android/keyguard/clock/TypographicClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object p0, p0, Lcom/android/keyguard/clock/TypeClockController;->mLockClock:Lcom/android/keyguard/clock/TypographicClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
