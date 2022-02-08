.class public Lcom/android/systemui/navigation/pulse/ColorController;
.super Landroid/database/ContentObserver;
.source "ColorController.java"

# interfaces
.implements Lcom/android/systemui/navigation/pulse/ColorAnimator$ColorAnimationListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private mAccentColor:I

.field private mAlbumColor:I

.field private mColor:I

.field private mColorType:I

.field private final mContext:Landroid/content/Context;

.field private final mLavaLamp:Lcom/android/systemui/navigation/pulse/ColorAnimator;

.field private mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 56
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 57
    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mContext:Landroid/content/Context;

    .line 58
    new-instance p1, Lcom/android/systemui/navigation/pulse/ColorAnimator;

    invoke-direct {p1}, Lcom/android/systemui/navigation/pulse/ColorAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mLavaLamp:Lcom/android/systemui/navigation/pulse/ColorAnimator;

    .line 59
    invoke-virtual {p1, p0}, Lcom/android/systemui/navigation/pulse/ColorAnimator;->setColorAnimatorListener(Lcom/android/systemui/navigation/pulse/ColorAnimator$ColorAnimationListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorController;->getAccentColor()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mAccentColor:I

    .line 61
    iput p1, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mAlbumColor:I

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorController;->updateSettings()V

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorController;->startListening()V

    .line 64
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getAccentColor()I
    .locals 3

    .line 128
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 129
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x1010435

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 130
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method notifyRenderer()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    if-eqz v0, :cond_3

    .line 105
    iget v1, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mColorType:I

    if-nez v1, :cond_0

    .line 106
    iget p0, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mAccentColor:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigation/pulse/Renderer;->onUpdateColor(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 108
    iget p0, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mColor:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigation/pulse/Renderer;->onUpdateColor(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 109
    invoke-virtual {v0}, Lcom/android/systemui/navigation/pulse/Renderer;->isValidStream()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorController;->startLavaLamp()V

    goto :goto_0

    .line 111
    :cond_2
    iget v0, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mColorType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 112
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    iget p0, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mAlbumColor:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigation/pulse/Renderer;->onUpdateColor(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorController;->updateSettings()V

    return-void
.end method

.method public onColorChanged(Lcom/android/systemui/navigation/pulse/ColorAnimator;I)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    if-eqz p0, :cond_0

    .line 153
    invoke-virtual {p0, p2}, Lcom/android/systemui/navigation/pulse/Renderer;->onUpdateColor(I)V

    :cond_0
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 140
    iget p1, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mAccentColor:I

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorController;->getAccentColor()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 143
    iput v0, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mAccentColor:I

    .line 144
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mColorType:I

    if-nez p0, :cond_0

    .line 145
    invoke-virtual {p1, v0}, Lcom/android/systemui/navigation/pulse/Renderer;->onUpdateColor(I)V

    :cond_0
    return-void
.end method

.method public setMediaNotificationColor(ZI)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 160
    invoke-static {p2, p1, v0, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mAlbumColor:I

    const p2, 0xffffff

    .line 162
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mAlbumColor:I

    goto :goto_0

    .line 165
    :cond_0
    iget p1, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mAccentColor:I

    iput p1, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mAlbumColor:I

    .line 167
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mColorType:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 168
    iget p0, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mAlbumColor:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigation/pulse/Renderer;->onUpdateColor(I)V

    :cond_1
    return-void
.end method

.method setRenderer(Lcom/android/systemui/navigation/pulse/Renderer;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mRenderer:Lcom/android/systemui/navigation/pulse/Renderer;

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorController;->notifyRenderer()V

    return-void
.end method

.method startLavaLamp()V
    .locals 2

    .line 118
    iget v0, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mColorType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 119
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mLavaLamp:Lcom/android/systemui/navigation/pulse/ColorAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorAnimator;->start()V

    :cond_0
    return-void
.end method

.method startListening()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pulse_color_mode"

    .line 75
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 74
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "pulse_color_user"

    .line 79
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "pulse_lavalamp_speed"

    .line 82
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method stopLavaLamp()V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mLavaLamp:Lcom/android/systemui/navigation/pulse/ColorAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorAnimator;->stop()V

    return-void
.end method

.method updateSettings()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    iget v1, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mColorType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorController;->stopLavaLamp()V

    :cond_0
    const/4 v1, 0x0

    const-string v2, "pulse_color_mode"

    const/4 v3, -0x2

    .line 91
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mColorType:I

    const/4 v1, -0x1

    const-string v2, "pulse_color_user"

    .line 93
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mColor:I

    const/16 v1, 0x2710

    const-string v2, "pulse_lavalamp_speed"

    .line 96
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/ColorController;->mLavaLamp:Lcom/android/systemui/navigation/pulse/ColorAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/navigation/pulse/ColorAnimator;->setAnimationTime(J)V

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/ColorController;->notifyRenderer()V

    return-void
.end method
