.class public final synthetic Lcom/android/systemui/navigation/pulse/-$$Lambda$SolidLineRenderer$HK3F7MeBqCnMLdoYn8JbJ2qQF-o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigation/pulse/SolidLineRenderer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/-$$Lambda$SolidLineRenderer$HK3F7MeBqCnMLdoYn8JbJ2qQF-o;->f$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    iput p2, p0, Lcom/android/systemui/navigation/pulse/-$$Lambda$SolidLineRenderer$HK3F7MeBqCnMLdoYn8JbJ2qQF-o;->f$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/-$$Lambda$SolidLineRenderer$HK3F7MeBqCnMLdoYn8JbJ2qQF-o;->f$0:Lcom/android/systemui/navigation/pulse/SolidLineRenderer;

    iget p0, p0, Lcom/android/systemui/navigation/pulse/-$$Lambda$SolidLineRenderer$HK3F7MeBqCnMLdoYn8JbJ2qQF-o;->f$1:I

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/navigation/pulse/SolidLineRenderer;->lambda$loadValueAnimators$0$SolidLineRenderer(ILandroid/animation/ValueAnimator;)V

    return-void
.end method
