.class public Lcom/android/keyguard/clock/FluidClockController;
.super Ljava/lang/Object;
.source "FluidClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mDate:Landroid/widget/TextClock;

.field private mDay:Landroid/widget/TextClock;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field private final mResources:Landroid/content/res/Resources;

.field private mSecondsClock:Landroid/widget/TextClock;

.field private mTimeClock:Landroid/widget/TextClock;

.field private mView:Lcom/android/keyguard/clock/ClockLayout;

.field private mYear:Landroid/widget/TextClock;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {v0}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 88
    iput-object p1, p0, Lcom/android/keyguard/clock/FluidClockController;->mResources:Landroid/content/res/Resources;

    .line 89
    iput-object p2, p0, Lcom/android/keyguard/clock/FluidClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 90
    iput-object p3, p0, Lcom/android/keyguard/clock/FluidClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->digital_clock_fluid:I

    const/4 v2, 0x0

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/ClockLayout;

    iput-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 96
    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/FluidClockController;->setViews(Landroid/view/View;)V

    return-void
.end method

.method private setViews(Landroid/view/View;)V
    .locals 1

    .line 100
    sget v0, Lcom/android/systemui/R$id;->time_clock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mTimeClock:Landroid/widget/TextClock;

    .line 101
    sget v0, Lcom/android/systemui/R$id;->seconds_clock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mSecondsClock:Landroid/widget/TextClock;

    .line 102
    sget v0, Lcom/android/systemui/R$id;->clock_day:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mDay:Landroid/widget/TextClock;

    .line 103
    sget v0, Lcom/android/systemui/R$id;->clock_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mDate:Landroid/widget/TextClock;

    .line 104
    sget v0, Lcom/android/systemui/R$id;->clock_year:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextClock;

    iput-object p1, p0, Lcom/android/keyguard/clock/FluidClockController;->mYear:Landroid/widget/TextClock;

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

    const-string p0, "fluid"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    .line 162
    sget p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_USE_DEFAULT_Y:I

    return p0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->digital_fluid_preview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 137
    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/FluidClockController;->setViews(Landroid/view/View;)V

    .line 139
    iget-object v1, p0, Lcom/android/keyguard/clock/FluidClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/clock/FluidClockController;->setColorPalette(Z[I)V

    .line 142
    invoke-virtual {p0}, Lcom/android/keyguard/clock/FluidClockController;->onTimeTick()V

    .line 144
    iget-object p0, p0, Lcom/android/keyguard/clock/FluidClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 129
    iget-object p0, p0, Lcom/android/keyguard/clock/FluidClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$drawable;->fluid_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, "Fluid"

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-nez v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/clock/FluidClockController;->createViews()V

    .line 152
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/FluidClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 110
    iput-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mTimeClock:Landroid/widget/TextClock;

    .line 111
    iput-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mSecondsClock:Landroid/widget/TextClock;

    .line 112
    iput-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mDay:Landroid/widget/TextClock;

    .line 113
    iput-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mDate:Landroid/widget/TextClock;

    .line 114
    iput-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mYear:Landroid/widget/TextClock;

    return-void
.end method

.method public onTimeTick()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockLayout;->onTimeChanged()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mTimeClock:Landroid/widget/TextClock;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Landroid/widget/TextClock;->refreshTime()V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mSecondsClock:Landroid/widget/TextClock;

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {v0}, Landroid/widget/TextClock;->refreshTime()V

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mDay:Landroid/widget/TextClock;

    if-eqz v0, :cond_3

    .line 194
    invoke-virtual {v0}, Landroid/widget/TextClock;->refreshTime()V

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mDate:Landroid/widget/TextClock;

    if-eqz v0, :cond_4

    .line 196
    invoke-virtual {v0}, Landroid/widget/TextClock;->refreshTime()V

    .line 197
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/clock/FluidClockController;->mYear:Landroid/widget/TextClock;

    if-eqz p0, :cond_5

    .line 198
    invoke-virtual {p0}, Landroid/widget/TextClock;->refreshTime()V

    :cond_5
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
    iget-object p2, p0, Lcom/android/keyguard/clock/FluidClockController;->mSecondsClock:Landroid/widget/TextClock;

    invoke-virtual {p2, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 182
    iget-object p0, p0, Lcom/android/keyguard/clock/FluidClockController;->mDate:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/keyguard/clock/FluidClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-eqz p0, :cond_0

    .line 204
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

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mTimeClock:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/clock/FluidClockController;->mDay:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 172
    iget-object p0, p0, Lcom/android/keyguard/clock/FluidClockController;->mYear:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
