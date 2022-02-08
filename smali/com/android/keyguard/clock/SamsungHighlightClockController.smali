.class public Lcom/android/keyguard/clock/SamsungHighlightClockController;
.super Ljava/lang/Object;
.source "SamsungHighlightClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private mAccentColor:I

.field private mClock:Landroid/widget/TextClock;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field private final mResources:Landroid/content/res/Resources;

.field private mView:Lcom/android/keyguard/clock/ClockLayout;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {v0}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 89
    iput-object p1, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mResources:Landroid/content/res/Resources;

    .line 90
    iput-object p2, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 91
    iput-object p3, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    return-void
.end method

.method private createViews()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->digital_clock_custom:I

    const/4 v2, 0x0

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/ClockLayout;

    iput-object v0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 97
    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mClock:Landroid/widget/TextClock;

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/clock/SamsungHighlightClockController;->setColorPalette(Z[I)V

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mClock:Landroid/widget/TextClock;

    const/4 v1, 0x0

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextClock;->setLineSpacing(FF)V

    .line 102
    iget-object v0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mClock:Landroid/widget/TextClock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hh<br><font color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mAccentColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ">mm</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mClock:Landroid/widget/TextClock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kk<br><font color="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mAccentColor:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/keyguard/clock/SamsungHighlightClockController;->onTimeTick()V

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

    const-string p0, "samsung_highlight"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    .line 164
    sget p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_USE_DEFAULT_Y:I

    return p0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->default_clock_preview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 132
    sget v1, Lcom/android/systemui/R$id;->time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    .line 133
    sget v2, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextClock;

    const/4 v3, -0x1

    .line 136
    invoke-virtual {v1, v3}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 137
    invoke-virtual {v2, v3}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 138
    iget-object v2, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/keyguard/clock/SamsungHighlightClockController;->setColorPalette(Z[I)V

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    .line 141
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextClock;->setLineSpacing(FF)V

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hh<br><font color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mAccentColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ">mm</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kk<br><font color="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mAccentColor:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/keyguard/clock/SamsungHighlightClockController;->onTimeTick()V

    .line 146
    iget-object p0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 125
    iget-object p0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$drawable;->samsung_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, "Samsung (Alt)"

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/android/keyguard/clock/SamsungHighlightClockController;->createViews()V

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 110
    iput-object v0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mClock:Landroid/widget/TextClock;

    return-void
.end method

.method public onTimeTick()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mClock:Landroid/widget/TextClock;

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockLayout;->onTimeChanged()V

    .line 188
    iget-object p0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mClock:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->refreshTime()V

    :cond_0
    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    return-void
.end method

.method public setColorPalette(Z[I)V
    .locals 1

    if-eqz p2, :cond_1

    .line 177
    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 180
    array-length v0, p2

    add-int/lit8 v0, v0, -0x5

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    aget p1, p2, p1

    .line 181
    iput p1, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mAccentColor:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockLayout;->setDarkAmount(F)V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/keyguard/clock/SamsungHighlightClockController;->mClock:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
