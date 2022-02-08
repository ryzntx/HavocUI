.class public Lcom/android/keyguard/clock/TuxClockController;
.super Ljava/lang/Object;
.source "TuxClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private mClock:Landroid/widget/TextClock;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLogo:Landroid/widget/ImageView;

.field private final mPalette:Lcom/android/keyguard/clock/ClockPalette;

.field private final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field private final mResources:Landroid/content/res/Resources;

.field private mView:Lcom/android/keyguard/clock/ClockLayout;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance p3, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {p3}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/clock/TuxClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 72
    new-instance p3, Lcom/android/keyguard/clock/ClockPalette;

    invoke-direct {p3}, Lcom/android/keyguard/clock/ClockPalette;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/clock/TuxClockController;->mPalette:Lcom/android/keyguard/clock/ClockPalette;

    .line 83
    iput-object p1, p0, Lcom/android/keyguard/clock/TuxClockController;->mResources:Landroid/content/res/Resources;

    .line 84
    iput-object p2, p0, Lcom/android/keyguard/clock/TuxClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/clock/TuxClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->tux_clock:I

    const/4 v2, 0x0

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/ClockLayout;

    iput-object v0, p0, Lcom/android/keyguard/clock/TuxClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 90
    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/TuxClockController;->mClock:Landroid/widget/TextClock;

    const-string v1, "hh\nmm"

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/clock/TuxClockController;->mClock:Landroid/widget/TextClock;

    const-string v1, "kk\nmm"

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/android/keyguard/clock/TuxClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    sget v1, Lcom/android/systemui/R$id;->logo:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/clock/TuxClockController;->mLogo:Landroid/widget/ImageView;

    return-void
.end method

.method private updateColor()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/clock/TuxClockController;->mPalette:Lcom/android/keyguard/clock/ClockPalette;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockPalette;->getPrimaryColor()I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/android/keyguard/clock/TuxClockController;->mPalette:Lcom/android/keyguard/clock/ClockPalette;

    invoke-virtual {v1}, Lcom/android/keyguard/clock/ClockPalette;->getSecondaryColor()I

    move-result v1

    .line 163
    iget-object v2, p0, Lcom/android/keyguard/clock/TuxClockController;->mClock:Landroid/widget/TextClock;

    invoke-virtual {v2, v1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 164
    iget-object p0, p0, Lcom/android/keyguard/clock/TuxClockController;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

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

    const-string p0, "tux"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    .line 114
    div-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 3

    .line 125
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TuxClockController;->getView()Landroid/view/View;

    move-result-object v0

    .line 126
    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    const-string v2, "hh\nmm"

    .line 127
    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    const-string v2, "kk\nmm"

    .line 128
    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TuxClockController;->onTimeTick()V

    .line 130
    iget-object p0, p0, Lcom/android/keyguard/clock/TuxClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 119
    iget-object p0, p0, Lcom/android/keyguard/clock/TuxClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$drawable;->tux_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, "Tux"

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/clock/TuxClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/android/keyguard/clock/TuxClockController;->createViews()V

    .line 138
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/TuxClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/android/keyguard/clock/TuxClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 99
    iput-object v0, p0, Lcom/android/keyguard/clock/TuxClockController;->mClock:Landroid/widget/TextClock;

    return-void
.end method

.method public onTimeTick()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/keyguard/clock/TuxClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockLayout;->onTimeChanged()V

    .line 170
    iget-object p0, p0, Lcom/android/keyguard/clock/TuxClockController;->mClock:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->refreshTime()V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    return-void
.end method

.method public setColorPalette(Z[I)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/clock/TuxClockController;->mPalette:Lcom/android/keyguard/clock/ClockPalette;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/clock/ClockPalette;->setColorPalette(Z[I)V

    .line 157
    invoke-direct {p0}, Lcom/android/keyguard/clock/TuxClockController;->updateColor()V

    return-void
.end method

.method public setDarkAmount(F)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/clock/TuxClockController;->mPalette:Lcom/android/keyguard/clock/ClockPalette;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/clock/ClockPalette;->setDarkAmount(F)V

    .line 176
    iget-object p0, p0, Lcom/android/keyguard/clock/TuxClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockLayout;->setDarkAmount(F)V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/android/keyguard/clock/TuxClockController;->updateColor()V

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
