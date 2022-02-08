.class public Lcom/android/keyguard/clock/MNMLMinimalClockController;
.super Ljava/lang/Object;
.source "MNMLMinimalClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private mAccentColor:I

.field private mClock:Landroid/widget/TextClock;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mDate:Landroid/widget/TextClock;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field private final mResources:Landroid/content/res/Resources;

.field private mView:Lcom/android/keyguard/clock/ClockLayout;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {v0}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 95
    iput-object p1, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mResources:Landroid/content/res/Resources;

    .line 96
    iput-object p2, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 97
    iput-object p3, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->digital_mnml_minimal:I

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/ClockLayout;

    iput-object v0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 103
    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mClock:Landroid/widget/TextClock;

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    sget v1, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mDate:Landroid/widget/TextClock;

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/clock/MNMLMinimalClockController;->setColorPalette(Z[I)V

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mDate:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 110
    iget p0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mAccentColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p0, 0x0

    .line 111
    invoke-virtual {v0, p0, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method


# virtual methods
.method public getBigClockView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "mnml_mnml"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    .line 171
    sget p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_USE_DEFAULT_Y:I

    return p0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->digital_mnml_minimal_preview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 140
    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    .line 141
    sget v2, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextClock;

    const/4 v3, -0x1

    .line 144
    invoke-virtual {v1, v3}, Landroid/widget/TextClock;->setTextColor(I)V

    const/high16 v1, -0x1000000

    .line 145
    invoke-virtual {v2, v1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 146
    iget-object v1, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v3

    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/android/keyguard/clock/MNMLMinimalClockController;->setColorPalette(Z[I)V

    .line 149
    invoke-virtual {v2}, Landroid/widget/TextClock;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 150
    iget v2, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mAccentColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v2, 0x0

    .line 151
    invoke-virtual {v1, v2, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 153
    iget-object p0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 133
    iget-object p0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$drawable;->mnmlminimal_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, "MNML Minimal"

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/android/keyguard/clock/MNMLMinimalClockController;->createViews()V

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 117
    iput-object v0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mClock:Landroid/widget/TextClock;

    .line 118
    iput-object v0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mDate:Landroid/widget/TextClock;

    return-void
.end method

.method public onTimeTick()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockLayout;->onTimeChanged()V

    .line 194
    iget-object p0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mClock:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->refreshTime()V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    return-void
.end method

.method public setColorPalette(Z[I)V
    .locals 1

    if-eqz p2, :cond_1

    .line 184
    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 187
    array-length v0, p2

    add-int/lit8 v0, v0, -0x5

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    aget p1, p2, p1

    .line 188
    iput p1, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mAccentColor:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockLayout;->setDarkAmount(F)V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/keyguard/clock/MNMLMinimalClockController;->mClock:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
