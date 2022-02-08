.class public Lcom/android/keyguard/clock/OronosClockController;
.super Ljava/lang/Object;
.source "OronosClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mHourClock:Landroid/widget/TextClock;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLongDate:Landroid/widget/TextView;

.field private mMinuteClock:Landroid/widget/TextClock;

.field private final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field private final mResources:Landroid/content/res/Resources;

.field private final mTime:Ljava/util/Calendar;

.field private mView:Lcom/android/keyguard/clock/ClockLayout;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {v0}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/OronosClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 85
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/clock/OronosClockController;->mTime:Ljava/util/Calendar;

    .line 98
    iput-object p1, p0, Lcom/android/keyguard/clock/OronosClockController;->mResources:Landroid/content/res/Resources;

    .line 99
    iput-object p2, p0, Lcom/android/keyguard/clock/OronosClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 100
    iput-object p3, p0, Lcom/android/keyguard/clock/OronosClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/clock/OronosClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->oronos_clock:I

    const/4 v2, 0x0

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/ClockLayout;

    iput-object v0, p0, Lcom/android/keyguard/clock/OronosClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 106
    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/OronosClockController;->setViews(Landroid/view/View;)V

    return-void
.end method

.method private setViews(Landroid/view/View;)V
    .locals 1

    .line 110
    sget v0, Lcom/android/systemui/R$id;->clockHr:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/OronosClockController;->mHourClock:Landroid/widget/TextClock;

    .line 111
    sget v0, Lcom/android/systemui/R$id;->clockMin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/OronosClockController;->mMinuteClock:Landroid/widget/TextClock;

    .line 112
    sget v0, Lcom/android/systemui/R$id;->longDate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/keyguard/clock/OronosClockController;->mLongDate:Landroid/widget/TextView;

    .line 113
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OronosClockController;->onTimeTick()V

    .line 114
    iget-object p1, p0, Lcom/android/keyguard/clock/OronosClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/clock/OronosClockController;->setColorPalette(Z[I)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/clock/OronosClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/clock/OronosClockController;->setColorPalette(Z[I)V

    :goto_0
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

    const-string p0, "oronos"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    .line 172
    sget p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_USE_DEFAULT_Y:I

    return p0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/clock/OronosClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->oronos_clock_preview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 152
    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/OronosClockController;->setViews(Landroid/view/View;)V

    .line 154
    iget-object p0, p0, Lcom/android/keyguard/clock/OronosClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 146
    iget-object p0, p0, Lcom/android/keyguard/clock/OronosClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$drawable;->oronos_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, "Oro\u00f1o"

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/clock/OronosClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/android/keyguard/clock/OronosClockController;->createViews()V

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/OronosClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/android/keyguard/clock/OronosClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 129
    iput-object v0, p0, Lcom/android/keyguard/clock/OronosClockController;->mHourClock:Landroid/widget/TextClock;

    .line 130
    iput-object v0, p0, Lcom/android/keyguard/clock/OronosClockController;->mMinuteClock:Landroid/widget/TextClock;

    .line 131
    iput-object v0, p0, Lcom/android/keyguard/clock/OronosClockController;->mLongDate:Landroid/widget/TextView;

    return-void
.end method

.method public onTimeTick()V
    .locals 7

    .line 210
    iget-object v0, p0, Lcom/android/keyguard/clock/OronosClockController;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/clock/OronosClockController;->mLongDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/clock/OronosClockController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$string;->date_long_title_today:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/keyguard/clock/OronosClockController;->mTime:Ljava/util/Calendar;

    .line 212
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const/4 v5, 0x7

    const/4 v6, 0x2

    .line 211
    invoke-virtual {p0, v5, v6, v4}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/clock/OronosClockController;->mTime:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/keyguard/clock/OronosClockController;->onTimeTick()V

    return-void
.end method

.method public setColorPalette(Z[I)V
    .locals 4

    if-eqz p2, :cond_1

    .line 183
    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    array-length p1, p2

    add-int/lit8 p1, p1, -0xb

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    aget p1, p2, p1

    .line 187
    array-length v1, p2

    add-int/lit8 v1, v1, -0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget p2, p2, v0

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/clock/OronosClockController;->mHourClock:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 190
    iget-object v1, p0, Lcom/android/keyguard/clock/OronosClockController;->mMinuteClock:Landroid/widget/TextClock;

    invoke-virtual {v1}, Landroid/widget/TextClock;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 191
    iget-object v2, p0, Lcom/android/keyguard/clock/OronosClockController;->mLongDate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 194
    iget-object v3, p0, Lcom/android/keyguard/clock/OronosClockController;->mHourClock:Landroid/widget/TextClock;

    invoke-virtual {v3, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 195
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 196
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 199
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 200
    iget-object p1, p0, Lcom/android/keyguard/clock/OronosClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$dimen;->clock_oronos_outline_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 202
    iget-object p1, p0, Lcom/android/keyguard/clock/OronosClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$dimen;->clock_oronos_outline_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 204
    iget-object p1, p0, Lcom/android/keyguard/clock/OronosClockController;->mMinuteClock:Landroid/widget/TextClock;

    invoke-virtual {p1, p2}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 205
    iget-object p0, p0, Lcom/android/keyguard/clock/OronosClockController;->mLongDate:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/keyguard/clock/OronosClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockLayout;->setDarkAmount(F)V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
