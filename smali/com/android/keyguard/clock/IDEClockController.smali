.class public Lcom/android/keyguard/clock/IDEClockController;
.super Ljava/lang/Object;
.source "IDEClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mDate:Landroid/widget/TextClock;

.field private mDay:Landroid/widget/TextClock;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMonth:Landroid/widget/TextClock;

.field private final mPalette:Lcom/android/keyguard/clock/ClockPalette;

.field private final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field private final mResources:Landroid/content/res/Resources;

.field private mTime:Landroid/widget/TextClock;

.field private mView:Lcom/android/keyguard/clock/ClockLayout;

.field private mtextInclude:Landroid/widget/TextView;

.field private mtextIntMain:Landroid/widget/TextView;

.field private mtextStd:Landroid/widget/TextView;

.field private mtextTimeDateDayMonth:Landroid/widget/TextView;

.field private mtextUsingNamespace:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/content/Context;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance p4, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {p4}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object p4, p0, Lcom/android/keyguard/clock/IDEClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 71
    new-instance p4, Lcom/android/keyguard/clock/ClockPalette;

    invoke-direct {p4}, Lcom/android/keyguard/clock/ClockPalette;-><init>()V

    iput-object p4, p0, Lcom/android/keyguard/clock/IDEClockController;->mPalette:Lcom/android/keyguard/clock/ClockPalette;

    .line 113
    iput-object p1, p0, Lcom/android/keyguard/clock/IDEClockController;->mResources:Landroid/content/res/Resources;

    .line 114
    iput-object p2, p0, Lcom/android/keyguard/clock/IDEClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 115
    iput-object p3, p0, Lcom/android/keyguard/clock/IDEClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->p404_ide_clock:I

    const/4 v2, 0x0

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/ClockLayout;

    iput-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 122
    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/IDEClockController;->setViews(Landroid/view/View;)V

    return-void
.end method

.method private setViews(Landroid/view/View;)V
    .locals 1

    .line 126
    sget v0, Lcom/android/systemui/R$id;->clockTime:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mTime:Landroid/widget/TextClock;

    .line 127
    sget v0, Lcom/android/systemui/R$id;->clockDate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mDate:Landroid/widget/TextClock;

    .line 128
    sget v0, Lcom/android/systemui/R$id;->clockDay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mDay:Landroid/widget/TextClock;

    .line 129
    sget v0, Lcom/android/systemui/R$id;->clockMonth:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mMonth:Landroid/widget/TextClock;

    .line 130
    sget v0, Lcom/android/systemui/R$id;->textInclude:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mtextInclude:Landroid/widget/TextView;

    .line 131
    sget v0, Lcom/android/systemui/R$id;->textStd:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mtextStd:Landroid/widget/TextView;

    .line 132
    sget v0, Lcom/android/systemui/R$id;->textUsingNamespace:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mtextUsingNamespace:Landroid/widget/TextView;

    .line 133
    sget v0, Lcom/android/systemui/R$id;->textIntMain:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mtextIntMain:Landroid/widget/TextView;

    .line 134
    sget v0, Lcom/android/systemui/R$id;->textTimeDateDayMonth:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/keyguard/clock/IDEClockController;->mtextTimeDateDayMonth:Landroid/widget/TextView;

    return-void
.end method

.method private updateColor()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mPalette:Lcom/android/keyguard/clock/ClockPalette;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockPalette;->getPrimaryColor()I

    move-result v0

    .line 210
    iget-object v1, p0, Lcom/android/keyguard/clock/IDEClockController;->mPalette:Lcom/android/keyguard/clock/ClockPalette;

    invoke-virtual {v1}, Lcom/android/keyguard/clock/ClockPalette;->getSecondaryColor()I

    move-result v1

    .line 211
    iget-object v2, p0, Lcom/android/keyguard/clock/IDEClockController;->mDate:Landroid/widget/TextClock;

    invoke-virtual {v2, v1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 212
    iget-object v2, p0, Lcom/android/keyguard/clock/IDEClockController;->mtextInclude:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    iget-object v2, p0, Lcom/android/keyguard/clock/IDEClockController;->mtextUsingNamespace:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object v2, p0, Lcom/android/keyguard/clock/IDEClockController;->mtextIntMain:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    iget-object v1, p0, Lcom/android/keyguard/clock/IDEClockController;->mMonth:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 216
    iget-object v1, p0, Lcom/android/keyguard/clock/IDEClockController;->mtextStd:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object p0, p0, Lcom/android/keyguard/clock/IDEClockController;->mtextTimeDateDayMonth:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

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

    const-string p0, "ide"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    .line 190
    sget p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_USE_DEFAULT_Y:I

    return p0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->p404_ide_clock_preview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 165
    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/IDEClockController;->setViews(Landroid/view/View;)V

    .line 167
    iget-object v1, p0, Lcom/android/keyguard/clock/IDEClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/clock/IDEClockController;->setColorPalette(Z[I)V

    .line 170
    invoke-virtual {p0}, Lcom/android/keyguard/clock/IDEClockController;->onTimeTick()V

    .line 172
    iget-object p0, p0, Lcom/android/keyguard/clock/IDEClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 158
    iget-object p0, p0, Lcom/android/keyguard/clock/IDEClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$drawable;->ide_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, "IDE"

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-nez v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/keyguard/clock/IDEClockController;->createViews()V

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/IDEClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 140
    iput-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mTime:Landroid/widget/TextClock;

    .line 141
    iput-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mDate:Landroid/widget/TextClock;

    .line 142
    iput-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mDay:Landroid/widget/TextClock;

    .line 143
    iput-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mMonth:Landroid/widget/TextClock;

    return-void
.end method

.method public onTimeTick()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockLayout;->onTimeChanged()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mTime:Landroid/widget/TextClock;

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0}, Landroid/widget/TextClock;->refreshTime()V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mDate:Landroid/widget/TextClock;

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {v0}, Landroid/widget/TextClock;->refreshTime()V

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mDay:Landroid/widget/TextClock;

    if-eqz v0, :cond_3

    .line 235
    invoke-virtual {v0}, Landroid/widget/TextClock;->refreshTime()V

    .line 236
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/clock/IDEClockController;->mMonth:Landroid/widget/TextClock;

    if-eqz p0, :cond_4

    .line 237
    invoke-virtual {p0}, Landroid/widget/TextClock;->refreshTime()V

    :cond_4
    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    return-void
.end method

.method public setColorPalette(Z[I)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mPalette:Lcom/android/keyguard/clock/ClockPalette;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/clock/ClockPalette;->setColorPalette(Z[I)V

    .line 205
    invoke-direct {p0}, Lcom/android/keyguard/clock/IDEClockController;->updateColor()V

    return-void
.end method

.method public setDarkAmount(F)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/keyguard/clock/IDEClockController;->mPalette:Lcom/android/keyguard/clock/ClockPalette;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/clock/ClockPalette;->setDarkAmount(F)V

    .line 223
    iget-object p0, p0, Lcom/android/keyguard/clock/IDEClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockLayout;->setDarkAmount(F)V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/keyguard/clock/IDEClockController;->mTime:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
