.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$Blur;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/znxt/systemui/BlurUtils$BlurTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->startBlurTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$Blur;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blurTaskDone(Landroid/graphics/Bitmap;)V
    .locals 6

    .line 119
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlurredView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 122
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$Blur;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v3

    .line 123
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v4, v3, :cond_0

    .line 124
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 125
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 126
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInnerBlurredView:Landroid/widget/FrameLayout;

    .line 127
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$BlurTask;->getRealScreenDimensions()[I

    move-result-object v3

    .line 128
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 129
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$Blur;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne p0, v5, :cond_1

    .line 130
    aget p0, v3, v1

    iput p0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    const/4 p0, 0x1

    .line 131
    aget p0, v3, p0

    iput p0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 132
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 133
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 134
    sget-object p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 135
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p0, "blur_applied"

    .line 136
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const-string p0, "error"

    .line 139
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 141
    :goto_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public dominantColor(I)V
    .locals 4

    .line 145
    invoke-static {p1}, Lcom/znxt/systemui/DisplayUtils;->getColorLightness(I)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_2

    int-to-double p0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p0, v2

    if-gtz p0, :cond_2

    const-wide p0, 0x3fd51eb851eb851fL    # 0.33

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    .line 148
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    sget p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlurLightColorFilter:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    const-wide p0, 0x3fd5c28f5c28f5c3L    # 0.34

    cmpl-double p0, v0, p0

    if-ltz p0, :cond_1

    const-wide p0, 0x3fe51eb851eb851fL    # 0.66

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_1

    .line 150
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    sget p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlurMixedColorFilter:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_1
    const-wide p0, 0x3fe570a3d70a3d71L    # 0.67

    cmpl-double p0, v0, p0

    if-ltz p0, :cond_3

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_3

    .line 152
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    sget p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlurDarkColorFilter:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 155
    :cond_2
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    sget p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlurMixedColorFilter:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mColorFilter:Landroid/graphics/ColorFilter;

    :cond_3
    :goto_0
    return-void
.end method
