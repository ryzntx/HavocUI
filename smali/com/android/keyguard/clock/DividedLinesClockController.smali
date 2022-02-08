.class public Lcom/android/keyguard/clock/DividedLinesClockController;
.super Ljava/lang/Object;
.source "DividedLinesClockController.java"

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

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {v0}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 97
    iput-object p1, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mResources:Landroid/content/res/Resources;

    .line 98
    iput-object p2, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 99
    iput-object p3, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->divided_lines_clock:I

    const/4 v2, 0x0

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/ClockLayout;

    iput-object v0, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 105
    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mClock:Landroid/widget/TextClock;

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    sget v1, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    .line 107
    invoke-virtual {p0}, Lcom/android/keyguard/clock/DividedLinesClockController;->onTimeTick()V

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

    const-string p0, "dividedlines"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    .line 169
    sget p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_USE_DEFAULT_Y:I

    return p0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 6

    .line 136
    iget-object v0, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->divided_lines_preview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 137
    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    .line 138
    sget v2, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextClock;

    .line 139
    sget v3, Lcom/android/systemui/R$id;->topLine:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 140
    sget v4, Lcom/android/systemui/R$id;->bottomLine:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    .line 143
    invoke-virtual {v1, v5}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 144
    invoke-virtual {v2, v5}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 145
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 146
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 147
    iget-object v1, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/clock/DividedLinesClockController;->setColorPalette(Z[I)V

    .line 151
    iget-object p0, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 131
    iget-object p0, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$drawable;->divided_lines_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, "Divided Lines"

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/android/keyguard/clock/DividedLinesClockController;->createViews()V

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 113
    iput-object v0, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mClock:Landroid/widget/TextClock;

    return-void
.end method

.method public onTimeTick()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockLayout;->onTimeChanged()V

    .line 186
    iget-object p0, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mClock:Landroid/widget/TextClock;

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
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockLayout;->setDarkAmount(F)V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/keyguard/clock/DividedLinesClockController;->mClock:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
