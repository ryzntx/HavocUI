.class public Lcom/android/keyguard/clock/OOSClockController;
.super Ljava/lang/Object;
.source "OOSClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mDate:Landroid/widget/TextClock;

.field private mDay:Landroid/widget/TextClock;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field private final mResources:Landroid/content/res/Resources;

.field private mTimeClock:Landroid/widget/TextClock;

.field private mTimeClockAccented:Landroid/widget/TextClock;

.field private mView:Lcom/android/keyguard/clock/ClockLayout;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {v0}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 85
    iput-object p1, p0, Lcom/android/keyguard/clock/OOSClockController;->mResources:Landroid/content/res/Resources;

    .line 86
    iput-object p2, p0, Lcom/android/keyguard/clock/OOSClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 87
    iput-object p3, p0, Lcom/android/keyguard/clock/OOSClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->digital_clock_oos:I

    const/4 v2, 0x0

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/ClockLayout;

    iput-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 93
    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/OOSClockController;->setViews(Landroid/view/View;)V

    return-void
.end method

.method private setViews(Landroid/view/View;)V
    .locals 1

    .line 97
    sget v0, Lcom/android/systemui/R$id;->time_clock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mTimeClock:Landroid/widget/TextClock;

    .line 98
    sget v0, Lcom/android/systemui/R$id;->time_clock_accented:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mTimeClockAccented:Landroid/widget/TextClock;

    .line 99
    sget v0, Lcom/android/systemui/R$id;->clock_day:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mDay:Landroid/widget/TextClock;

    .line 100
    sget v0, Lcom/android/systemui/R$id;->timedate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextClock;

    iput-object p1, p0, Lcom/android/keyguard/clock/OOSClockController;->mDate:Landroid/widget/TextClock;

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

    const-string p0, "oos"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    .line 153
    sget p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_USE_DEFAULT_Y:I

    return p0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->digital_clock_oos_preview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/OOSClockController;->setViews(Landroid/view/View;)V

    .line 131
    iget-object v1, p0, Lcom/android/keyguard/clock/OOSClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/clock/OOSClockController;->setColorPalette(Z[I)V

    .line 134
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OOSClockController;->onTimeTick()V

    .line 135
    iget-object p0, p0, Lcom/android/keyguard/clock/OOSClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 124
    iget-object p0, p0, Lcom/android/keyguard/clock/OOSClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$drawable;->oos_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, "OxygenOS"

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/clock/OOSClockController;->createViews()V

    .line 143
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/OOSClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 106
    iput-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mTimeClock:Landroid/widget/TextClock;

    .line 107
    iput-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mDay:Landroid/widget/TextClock;

    .line 108
    iput-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mDate:Landroid/widget/TextClock;

    .line 109
    iput-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mTimeClockAccented:Landroid/widget/TextClock;

    return-void
.end method

.method public onTimeTick()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockLayout;->onTimeChanged()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mTimeClock:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->refreshTime()V

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mTimeClockAccented:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->refreshTime()V

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mDay:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->refreshTime()V

    .line 183
    iget-object p0, p0, Lcom/android/keyguard/clock/OOSClockController;->mDate:Landroid/widget/TextClock;

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

    .line 169
    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 172
    array-length v0, p2

    add-int/lit8 v0, v0, -0x5

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    aget p1, p2, p1

    .line 173
    iget-object p0, p0, Lcom/android/keyguard/clock/OOSClockController;->mTimeClockAccented:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/keyguard/clock/OOSClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-eqz p0, :cond_0

    .line 189
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

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mTimeClock:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/clock/OOSClockController;->mDay:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 164
    iget-object p0, p0, Lcom/android/keyguard/clock/OOSClockController;->mDate:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
