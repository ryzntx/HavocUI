.class public Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;
.super Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;
.source "NavigationBarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PhoneStatusBarBackgroundDrawable"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOverrideColor:I

.field private mOverrideGradientAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "nav_background"

    .line 34
    invoke-static {v0}, Lcom/znxt/systemui/ResourceUtils;->getDrawableResId(Ljava/lang/String;)I

    move-result v3

    const-string v0, "system_bar_background_transparent"

    invoke-static {v0}, Lcom/znxt/systemui/ResourceUtils;->getColorResId(Ljava/lang/String;)I

    move-result v4

    const-string v1, "car_body2_light"

    invoke-static {v1}, Lcom/znxt/systemui/ResourceUtils;->getAndroidColorResId(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0}, Lcom/znxt/systemui/ResourceUtils;->getColorResId(Ljava/lang/String;)I

    move-result v6

    const-string v0, "car_accent"

    invoke-static {v0}, Lcom/znxt/systemui/ResourceUtils;->getAndroidColorResId(Ljava/lang/String;)I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;-><init>(Landroid/content/Context;IIIII)V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->mOverrideColor:I

    .line 31
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->mOverrideGradientAlpha:I

    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$GradientObserver;->access$100()Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$GradientObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$GradientObserver;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "DYNAMIC_NAVIGATION_BARS_GRADIENT_STATE"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->mOverrideGradientAlpha:I

    new-array v1, v2, [Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    .line 37
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable$1;

    invoke-direct {v2, p0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->addListener([Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;)V

    .line 44
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->mOverrideColor:I

    return p1
.end method


# virtual methods
.method protected getColorOpaque()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->mOverrideColor:I

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getColorOpaque()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->mOverrideColor:I

    :goto_0
    return p0
.end method

.method protected getColorSemiTransparent()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->mOverrideColor:I

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->getColorSemiTransparent()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->mOverrideColor:I

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, 0x7f000000

    or-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method protected getGradientAlphaOpaque()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->mOverrideGradientAlpha:I

    return p0
.end method

.method protected getGradientAlphaSemiTransparent()I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->mOverrideGradientAlpha:I

    and-int/lit8 p0, p0, 0x7f

    return p0
.end method

.method public setOverrideGradientAlpha(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->mOverrideGradientAlpha:I

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->generateAnimator()V

    return-void
.end method
