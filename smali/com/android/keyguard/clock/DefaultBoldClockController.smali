.class public Lcom/android/keyguard/clock/DefaultBoldClockController;
.super Ljava/lang/Object;
.source "DefaultBoldClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private mClock:Landroid/widget/TextClock;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field private final mResources:Landroid/content/res/Resources;

.field private mView:Lcom/android/keyguard/clock/ClockLayout;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {v0}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 83
    iput-object p1, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mResources:Landroid/content/res/Resources;

    .line 84
    iput-object p2, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 85
    iput-object p3, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->digital_clock_custom:I

    const/4 v2, 0x0

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/ClockLayout;

    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 91
    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mClock:Landroid/widget/TextClock;

    const-string v1, "<strong>h</strong>:mm"

    .line 92
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mClock:Landroid/widget/TextClock;

    const-string v0, "<strong>kk</strong>:mm"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

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

    const-string p0, "default_bold"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    .line 152
    sget p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_USE_DEFAULT_Y:I

    return p0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->default_clock_preview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 121
    sget v1, Lcom/android/systemui/R$id;->time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    const-string v2, "<strong>h</strong>:mm"

    .line 122
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    const-string v2, "<strong>kk</strong>:mm"

    .line 123
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 124
    sget v2, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextClock;

    const/4 v3, -0x1

    .line 127
    invoke-virtual {v1, v3}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 128
    invoke-virtual {v2, v3}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 129
    iget-object v1, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/clock/DefaultBoldClockController;->setColorPalette(Z[I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/keyguard/clock/DefaultBoldClockController;->onTimeTick()V

    .line 134
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 114
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$drawable;->default_bold_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->clock_title_default_bold:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/android/keyguard/clock/DefaultBoldClockController;->createViews()V

    .line 142
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 99
    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mClock:Landroid/widget/TextClock;

    return-void
.end method

.method public onTimeTick()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mClock:Landroid/widget/TextClock;

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockLayout;->onTimeChanged()V

    .line 170
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mClock:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->refreshTime()V

    :cond_0
    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    return-void
.end method

.method public setColorPalette(Z[I)V
    .locals 0

    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockLayout;->setDarkAmount(F)V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultBoldClockController;->mClock:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
