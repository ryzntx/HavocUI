.class public Lcom/android/keyguard/clock/AndroidTwelveClockController;
.super Ljava/lang/Object;
.source "AndroidTwelveClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private final mClickActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mClock:Landroid/widget/TextClock;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mContext:Landroid/content/Context;

.field private mDarkAmount:F

.field private mHasHeader:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPalette:Lcom/android/keyguard/clock/ClockPalette;

.field private final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field private final mResources:Landroid/content/res/Resources;

.field private mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

.field private mSlice:Landroidx/slice/Slice;

.field private mTextColor:I

.field private mTitle:Landroid/widget/TextView;

.field private mView:Lcom/android/keyguard/clock/ClockLayout;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {v0}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 150
    new-instance v0, Lcom/android/keyguard/clock/ClockPalette;

    invoke-direct {v0}, Lcom/android/keyguard/clock/ClockPalette;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mPalette:Lcom/android/keyguard/clock/ClockPalette;

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mDarkAmount:F

    .line 164
    iput-object p1, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mResources:Landroid/content/res/Resources;

    .line 165
    iput-object p2, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 166
    invoke-virtual {p2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mContext:Landroid/content/Context;

    .line 167
    iput-object p3, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 168
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mClickActions:Ljava/util/HashMap;

    .line 169
    iget-object p1, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/android/systemui/R$dimen;->subtitle_clock_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 170
    iget-object p0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/systemui/R$dimen;->header_subtitle_padding:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->android_twelve_clock:I

    const/4 v2, 0x0

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/ClockLayout;

    iput-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 176
    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mClock:Landroid/widget/TextClock;

    const-string v1, "h:mm"

    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mClock:Landroid/widget/TextClock;

    const-string v1, "kk:mm"

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    sget v1, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mTitle:Landroid/widget/TextView;

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    sget v1, Lcom/android/systemui/R$id;->row:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSliceView$Row;

    iput-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->header_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_label_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->header_row_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mTextColor:I

    .line 190
    iget-object p0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mClock:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getTypeface()Landroid/graphics/Typeface;

    return-void
.end method

.method private setViews(Landroid/view/View;)V
    .locals 1

    .line 212
    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mClock:Landroid/widget/TextClock;

    .line 213
    sget v0, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mTitle:Landroid/widget/TextView;

    return-void
.end method

.method private updateTextColors()V
    .locals 5

    .line 412
    invoke-virtual {p0}, Lcom/android/keyguard/clock/AndroidTwelveClockController;->getTextColor()I

    move-result v0

    .line 413
    iget-object v1, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    iget-object v1, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 416
    iget-object v3, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 417
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 418
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    .line 424
    iget-object v1, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mPalette:Lcom/android/keyguard/clock/ClockPalette;

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/clock/ClockPalette;->setColorPalette(Z[I)V

    .line 425
    iget v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mDarkAmount:F

    const v1, 0x3ecccccd    # 0.4f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    move v0, v1

    .line 429
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mClock:Landroid/widget/TextClock;

    iget-object p0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mPalette:Lcom/android/keyguard/clock/ClockPalette;

    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockPalette;->getPrimaryColor()I

    move-result p0

    const/4 v2, -0x1

    invoke-static {p0, v2, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextClock;->setTextColor(I)V

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

    const-string p0, "android_twelve_clock"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    .line 248
    sget p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_USE_DEFAULT_Y:I

    return p0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->android_twelve_clock_preview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 225
    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/AndroidTwelveClockController;->setViews(Landroid/view/View;)V

    .line 226
    iget-object v1, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    sget v2, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    const-string v2, "h\nmm"

    .line 227
    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    const-string v2, "kk\nmm"

    .line 228
    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/keyguard/clock/AndroidTwelveClockController;->onTimeTick()V

    .line 230
    iget-object p0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method getTextColor()I
    .locals 2

    .line 433
    iget v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mTextColor:I

    iget p0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mDarkAmount:F

    const/4 v1, -0x1

    invoke-static {v0, v1, p0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    return p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 218
    iget-object p0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$drawable;->twelveclock_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object p0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->clock_title_ssos_twelve:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/android/keyguard/clock/AndroidTwelveClockController;->createViews()V

    .line 238
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 196
    iput-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mClock:Landroid/widget/TextClock;

    .line 197
    iput-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mTitle:Landroid/widget/TextView;

    .line 198
    iput-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    return-void
.end method

.method public onTimeTick()V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockLayout;->onTimeChanged()V

    .line 385
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mClock:Landroid/widget/TextClock;

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
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/clock/ClockLayout;->setDarkAmount(F)V

    const/4 v0, 0x0

    .line 391
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    .line 393
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://com.android.systemui.keyguard/date"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSliceView$Row;->setDarkAmount(F)V

    .line 397
    iget-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 398
    iget-object v0, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 399
    iput p1, p0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mDarkAmount:F

    .line 400
    invoke-direct {p0}, Lcom/android/keyguard/clock/AndroidTwelveClockController;->updateTextColors()V

    return-void
.end method

.method public setHasVisibleNotifications(Z)V
    .locals 0

    return-void
.end method

.method public setSlice(Landroidx/slice/Slice;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 264
    iput-object v1, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mSlice:Landroidx/slice/Slice;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 266
    iget-object v1, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    iput-boolean v3, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mHasHeader:Z

    return-void

    .line 270
    :cond_0
    iget-object v1, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mClickActions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 272
    new-instance v1, Landroidx/slice/widget/ListContent;

    iget-object v4, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mSlice:Landroidx/slice/Slice;

    invoke-direct {v1, v4, v5}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;)V

    .line 273
    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 274
    invoke-virtual {v4}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v4

    const-string v6, "list_item"

    invoke-virtual {v4, v6}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    iput-boolean v4, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mHasHeader:Z

    .line 275
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v6, v3

    .line 276
    :goto_1
    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 277
    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/widget/SliceContent;

    .line 278
    invoke-virtual {v7}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "content://com.android.systemui.keyguard/action"

    .line 280
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 281
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 285
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/clock/AndroidTwelveClockController;->getTextColor()I

    move-result v7

    .line 287
    iget-boolean v8, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mHasHeader:Z

    .line 288
    iget-object v9, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    if-lez v6, :cond_4

    move v10, v3

    goto :goto_2

    :cond_4
    move v10, v2

    :goto_2
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    iget-boolean v9, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mHasHeader:Z

    const/high16 v10, -0x1000000

    const/high16 v11, 0x40400000    # 3.0f

    const/high16 v12, 0x41980000    # 19.0f

    const/4 v13, 0x0

    if-nez v9, :cond_5

    .line 291
    iget-object v1, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 293
    :cond_5
    iget-object v9, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object v1

    .line 296
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 297
    invoke-virtual {v9}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    .line 298
    :goto_3
    iget-object v15, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v9, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v9, v11, v13, v13, v10}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 300
    iget-object v9, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 301
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 302
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 303
    iget-object v9, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mClickActions:Ljava/util/HashMap;

    iget-object v15, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v9, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    if-ge v8, v6, :cond_d

    .line 308
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/RowContent;

    .line 309
    invoke-virtual {v1}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v9

    .line 310
    invoke-virtual {v9}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v15

    .line 311
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v3, "content://com.android.systemui.keyguard/date"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 313
    iget-object v14, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    const v5, 0x800003

    if-nez v14, :cond_8

    .line 315
    new-instance v14, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    iget-object v2, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mContext:Landroid/content/Context;

    invoke-direct {v14, v2}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 317
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 318
    invoke-virtual {v14, v7}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;->setTextColor(I)V

    .line 319
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 320
    invoke-virtual {v14, v11, v13, v13, v10}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 321
    iget-boolean v2, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mHasHeader:Z

    sub-int v2, v8, v2

    .line 322
    iget-object v3, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v3, v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_5

    .line 324
    :cond_8
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 325
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 328
    :goto_5
    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    .line 329
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    .line 330
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 331
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v3, 0x8

    .line 332
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 333
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 334
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 338
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    .line 340
    :goto_6
    iget-object v5, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mClickActions:Ljava/util/HashMap;

    invoke-virtual {v5, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_7

    .line 343
    :cond_a
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_7
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    invoke-virtual {v1}, Landroidx/slice/widget/SliceContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {v9}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    const-string v2, "image"

    invoke-static {v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 350
    iget-object v2, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mContext:Landroid/content/Context;

    const/16 v5, 0x13

    invoke-static {v2, v5}, Lcom/android/internal/util/Converter;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    .line 351
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    iget-object v5, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 353
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    .line 354
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v5, v9

    int-to-float v9, v2

    mul-float/2addr v5, v9

    float-to-int v5, v5

    const/4 v9, 0x1

    .line 355
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v9, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_8

    :cond_b
    const/4 v9, 0x0

    goto :goto_8

    :cond_c
    const/4 v9, 0x0

    const/4 v1, 0x0

    :goto_8
    const/4 v2, 0x0

    .line 358
    invoke-virtual {v14, v1, v2, v2, v2}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v8, v8, 0x1

    move v2, v3

    move v3, v9

    goto/16 :goto_4

    :cond_d
    move v9, v3

    .line 362
    :goto_9
    iget-object v1, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_f

    .line 363
    iget-object v1, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 364
    iget-object v2, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mClickActions:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 365
    iget-object v2, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v3, v3, -0x1

    :cond_e
    const/4 v1, 0x1

    add-int/2addr v3, v1

    goto :goto_9

    .line 370
    :cond_f
    iget-object v1, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 371
    iget-object v0, v0, Lcom/android/keyguard/clock/AndroidTwelveClockController;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lcom/android/keyguard/clock/AndroidTwelveClockController;->updateTextColors()V

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
