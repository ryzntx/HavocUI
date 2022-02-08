.class public final synthetic Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$vH2h6yNCdroI8AYVrL3mNbCq9Ks;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroid/widget/ImageView;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(FFFFZLandroid/widget/ImageView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$vH2h6yNCdroI8AYVrL3mNbCq9Ks;->f$0:F

    iput p2, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$vH2h6yNCdroI8AYVrL3mNbCq9Ks;->f$1:F

    iput p3, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$vH2h6yNCdroI8AYVrL3mNbCq9Ks;->f$2:F

    iput p4, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$vH2h6yNCdroI8AYVrL3mNbCq9Ks;->f$3:F

    iput-boolean p5, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$vH2h6yNCdroI8AYVrL3mNbCq9Ks;->f$4:Z

    iput-object p6, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$vH2h6yNCdroI8AYVrL3mNbCq9Ks;->f$5:Landroid/widget/ImageView;

    iput p7, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$vH2h6yNCdroI8AYVrL3mNbCq9Ks;->f$6:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$vH2h6yNCdroI8AYVrL3mNbCq9Ks;->f$0:F

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$vH2h6yNCdroI8AYVrL3mNbCq9Ks;->f$1:F

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$vH2h6yNCdroI8AYVrL3mNbCq9Ks;->f$2:F

    iget v3, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$vH2h6yNCdroI8AYVrL3mNbCq9Ks;->f$3:F

    iget-boolean v4, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$vH2h6yNCdroI8AYVrL3mNbCq9Ks;->f$4:Z

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$vH2h6yNCdroI8AYVrL3mNbCq9Ks;->f$5:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$vH2h6yNCdroI8AYVrL3mNbCq9Ks;->f$6:I

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->lambda$animateGrayScale$1(FFFFZLandroid/widget/ImageView;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
