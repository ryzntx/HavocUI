.class public Lcom/android/systemui/statusbar/logo/LogoImageViewRight;
.super Lcom/android/systemui/statusbar/logo/LogoImageView;
.source "LogoImageViewRight.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/logo/LogoImageViewRight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/logo/LogoImageViewRight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/logo/LogoImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 2

    .line 38
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mLogoEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mLogoPosition:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
