.class Lcom/android/systemui/statusbar/AODDimView$1;
.super Ljava/lang/Object;
.source "AODDimView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/AODDimView;->setVisible(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/AODDimView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/AODDimView;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/AODDimView$1;->this$0:Lcom/android/systemui/statusbar/AODDimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/AODDimView$1;->this$0:Lcom/android/systemui/statusbar/AODDimView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/AODDimView;->access$000(Lcom/android/systemui/statusbar/AODDimView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
