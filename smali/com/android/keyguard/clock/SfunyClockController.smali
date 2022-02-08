.class public Lcom/android/keyguard/clock/SfunyClockController;
.super Ljava/lang/Object;
.source "SfunyClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mDarkController:Lcom/android/keyguard/clock/CrossFadeDarkController;

.field private mHourClock:Landroid/widget/TextClock;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMinuteClock:Landroid/widget/TextClock;

.field private final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field private final mResources:Landroid/content/res/Resources;

.field private mView:Lcom/android/keyguard/clock/ClockLayout;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {v0}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 89
    iput-object p1, p0, Lcom/android/keyguard/clock/SfunyClockController;->mResources:Landroid/content/res/Resources;

    .line 90
    iput-object p2, p0, Lcom/android/keyguard/clock/SfunyClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 91
    iput-object p3, p0, Lcom/android/keyguard/clock/SfunyClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->digital_clock_sfuny:I

    const/4 v2, 0x0

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/ClockLayout;

    iput-object v0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 97
    sget v1, Lcom/android/systemui/R$id;->clockHour:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mHourClock:Landroid/widget/TextClock;

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    sget v1, Lcom/android/systemui/R$id;->clockMinute:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mMinuteClock:Landroid/widget/TextClock;

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

    const-string p0, "sfuny"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    .line 157
    sget p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_USE_DEFAULT_Y:I

    return p0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->digital_sfuny_preview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 127
    sget v1, Lcom/android/systemui/R$id;->clockHour:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    .line 128
    sget v2, Lcom/android/systemui/R$id;->clockMinute:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextClock;

    .line 129
    sget v3, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextClock;

    const/4 v4, -0x1

    .line 132
    invoke-virtual {v1, v4}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 133
    invoke-virtual {v2, v4}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 134
    invoke-virtual {v3, v4}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 135
    iget-object v1, p0, Lcom/android/keyguard/clock/SfunyClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/clock/SfunyClockController;->setColorPalette(Z[I)V

    .line 139
    iget-object p0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 120
    iget-object p0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$drawable;->sfuny_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, "SFUNY"

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/android/keyguard/clock/SfunyClockController;->createViews()V

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 104
    iput-object v0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mHourClock:Landroid/widget/TextClock;

    .line 105
    iput-object v0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mMinuteClock:Landroid/widget/TextClock;

    return-void
.end method

.method public onTimeTick()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockLayout;->onTimeChanged()V

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mHourClock:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->refreshTime()V

    .line 176
    iget-object p0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mMinuteClock:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->refreshTime()V

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
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/clock/ClockLayout;->setDarkAmount(F)V

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mDarkController:Lcom/android/keyguard/clock/CrossFadeDarkController;

    if-eqz v0, :cond_0

    .line 183
    iget-object p0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockLayout;->setDarkAmount(F)V

    :cond_0
    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mHourClock:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 166
    iget-object p0, p0, Lcom/android/keyguard/clock/SfunyClockController;->mMinuteClock:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
