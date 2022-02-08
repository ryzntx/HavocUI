.class public Lcom/android/keyguard/clock/BinaryClockController;
.super Ljava/lang/Object;
.source "BinaryClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private mBigClockView:Lcom/android/keyguard/clock/ClockLayout;

.field private mBinaryClock:Lcom/android/keyguard/clock/BinaryClock;

.field private final mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLockClock:Landroid/widget/TextClock;

.field private final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field private final mResources:Landroid/content/res/Resources;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {v0}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 87
    iput-object p1, p0, Lcom/android/keyguard/clock/BinaryClockController;->mResources:Landroid/content/res/Resources;

    .line 88
    iput-object p2, p0, Lcom/android/keyguard/clock/BinaryClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 89
    iput-object p3, p0, Lcom/android/keyguard/clock/BinaryClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 90
    new-instance p2, Lcom/android/keyguard/clock/SmallClockPosition;

    invoke-direct {p2, p1}, Lcom/android/keyguard/clock/SmallClockPosition;-><init>(Landroid/content/res/Resources;)V

    iput-object p2, p0, Lcom/android/keyguard/clock/BinaryClockController;->mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->binary_clock:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/ClockLayout;

    iput-object v0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mBigClockView:Lcom/android/keyguard/clock/ClockLayout;

    .line 95
    sget v1, Lcom/android/systemui/R$id;->analog_clock:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/BinaryClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mBinaryClock:Lcom/android/keyguard/clock/BinaryClock;

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->digital_clock:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mView:Landroid/view/View;

    .line 98
    sget v1, Lcom/android/systemui/R$id;->lock_screen_clock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mLockClock:Landroid/widget/TextClock;

    return-void
.end method


# virtual methods
.method public getBigClockView()Landroid/view/View;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mBigClockView:Lcom/android/keyguard/clock/ClockLayout;

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/keyguard/clock/BinaryClockController;->createViews()V

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mBigClockView:Lcom/android/keyguard/clock/ClockLayout;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "binary"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

    invoke-virtual {p0}, Lcom/android/keyguard/clock/SmallClockPosition;->getPreferredY()I

    move-result p0

    return p0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 3

    .line 127
    invoke-virtual {p0}, Lcom/android/keyguard/clock/BinaryClockController;->getBigClockView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 130
    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/BinaryClockController;->setDarkAmount(F)V

    const/4 v1, -0x1

    .line 131
    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/BinaryClockController;->setTextColor(I)V

    .line 132
    iget-object v1, p0, Lcom/android/keyguard/clock/BinaryClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/clock/BinaryClockController;->setColorPalette(Z[I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/keyguard/clock/BinaryClockController;->onTimeTick()V

    .line 137
    iget-object p0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 121
    iget-object p0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$drawable;->binary_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, "Binary"

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/keyguard/clock/BinaryClockController;->createViews()V

    .line 145
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mBigClockView:Lcom/android/keyguard/clock/ClockLayout;

    .line 104
    iput-object v0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mBinaryClock:Lcom/android/keyguard/clock/BinaryClock;

    .line 105
    iput-object v0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mView:Landroid/view/View;

    .line 106
    iput-object v0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mLockClock:Landroid/widget/TextClock;

    return-void
.end method

.method public onTimeTick()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mBinaryClock:Lcom/android/keyguard/clock/BinaryClock;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/BinaryClock;->onTimeChanged()V

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mBigClockView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockLayout;->onTimeChanged()V

    .line 176
    iget-object p0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mLockClock:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->refreshTime()V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mBinaryClock:Lcom/android/keyguard/clock/BinaryClock;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/BinaryClock;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    return-void
.end method

.method public setColorPalette(Z[I)V
    .locals 0

    return-void
.end method

.method public setDarkAmount(F)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/clock/SmallClockPosition;->setDarkAmount(F)V

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mBigClockView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/clock/ClockLayout;->setDarkAmount(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 184
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mBinaryClock:Lcom/android/keyguard/clock/BinaryClock;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/BinaryClock;->setDark(Z)V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/keyguard/clock/BinaryClockController;->mBinaryClock:Lcom/android/keyguard/clock/BinaryClock;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/BinaryClock;->setTintColor(I)V

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
