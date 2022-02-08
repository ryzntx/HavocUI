.class Lcom/android/systemui/statusbar/phone/NotificationLightsView$2;
.super Ljava/lang/Object;
.source "NotificationLightsView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationLightsView;->animateNotificationWithColor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$leftViewFaded:Landroid/widget/ImageView;

.field final synthetic val$leftViewSolid:Landroid/widget/ImageView;

.field final synthetic val$rightViewFaded:Landroid/widget/ImageView;

.field final synthetic val$rightViewSolid:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationLightsView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 172
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationLightsView$2;->val$leftViewFaded:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationLightsView$2;->val$rightViewFaded:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationLightsView$2;->val$leftViewSolid:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/NotificationLightsView$2;->val$rightViewSolid:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 175
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationLightsView$2;->val$leftViewFaded:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationLightsView$2;->val$rightViewFaded:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationLightsView$2;->val$leftViewSolid:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationLightsView$2;->val$rightViewSolid:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    const v0, 0x3e99999a    # 0.3f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v1, :cond_0

    div-float v2, p1, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    sub-float v2, v0, p1

    .line 186
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationLightsView$2;->val$leftViewFaded:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 187
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationLightsView$2;->val$rightViewFaded:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 188
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationLightsView$2;->val$leftViewSolid:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 189
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationLightsView$2;->val$rightViewSolid:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
