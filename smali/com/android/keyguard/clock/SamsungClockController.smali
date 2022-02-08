.class public Lcom/android/keyguard/clock/SamsungClockController;
.super Ljava/lang/Object;
.source "SamsungClockController.java"

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

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {v0}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 82
    iput-object p1, p0, Lcom/android/keyguard/clock/SamsungClockController;->mResources:Landroid/content/res/Resources;

    .line 83
    iput-object p2, p0, Lcom/android/keyguard/clock/SamsungClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 84
    iput-object p3, p0, Lcom/android/keyguard/clock/SamsungClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->digital_clock_custom:I

    const/4 v2, 0x0

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/ClockLayout;

    iput-object v0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 90
    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mClock:Landroid/widget/TextClock;

    const/4 v1, 0x0

    const v2, 0x3f4ccccd    # 0.8f

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextClock;->setLineSpacing(FF)V

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mClock:Landroid/widget/TextClock;

    const-string v1, "hh\nmm"

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mClock:Landroid/widget/TextClock;

    const-string v0, "kk\nmm"

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

    const-string p0, "samsung"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    .line 153
    sget p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_USE_DEFAULT_Y:I

    return p0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->default_clock_preview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 121
    sget v1, Lcom/android/systemui/R$id;->time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    .line 122
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextClock;->setLineSpacing(FF)V

    const-string v2, "hh\nmm"

    .line 123
    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    const-string v2, "kk\nmm"

    .line 124
    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 125
    sget v2, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextClock;

    const/4 v3, -0x1

    .line 128
    invoke-virtual {v1, v3}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 129
    invoke-virtual {v2, v3}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 130
    iget-object v1, p0, Lcom/android/keyguard/clock/SamsungClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/clock/SamsungClockController;->setColorPalette(Z[I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/keyguard/clock/SamsungClockController;->onTimeTick()V

    .line 135
    iget-object p0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 114
    iget-object p0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$drawable;->samsung_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object p0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->clock_title_samsung:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/clock/SamsungClockController;->createViews()V

    .line 143
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 99
    iput-object v0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mClock:Landroid/widget/TextClock;

    return-void
.end method

.method public onTimeTick()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/clock/SamsungClockController;->mClock:Landroid/widget/TextClock;

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockLayout;->onTimeChanged()V

    .line 171
    iget-object p0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mClock:Landroid/widget/TextClock;

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

    .line 177
    iget-object p0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockLayout;->setDarkAmount(F)V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/keyguard/clock/SamsungClockController;->mClock:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
