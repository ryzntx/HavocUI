.class Lcom/android/systemui/volume/VolumeDialogImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;->animateExpandedRowsChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

.field final synthetic val$expand:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iput-boolean p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$2;->val$expand:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 668
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$2;->val$expand:Z

    if-nez p1, :cond_0

    .line 669
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V

    :cond_0
    return-void
.end method
