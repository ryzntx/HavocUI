.class Lcom/android/systemui/volume/VolumeDialogImpl$5;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 1588
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 2

    .line 1641
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3802(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    .line 1642
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3900(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object p1

    .line 1643
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3800(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1644
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    goto :goto_1

    .line 1646
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4000(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    :goto_1
    return-void
.end method

.method public onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 1654
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4100(Lcom/android/systemui/volume/VolumeDialogImpl;ZZ)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .line 1616
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3200(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3300(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3200(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1617
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3402(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    return-void
.end method

.method public onDismissRequested(I)V
    .locals 0

    .line 1596
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 0

    .line 1611
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3100(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .line 1601
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    return-void
.end method

.method public onShowRequested(I)V
    .locals 0

    .line 1591
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3000(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 0

    .line 1636
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3700(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    return-void
.end method

.method public onShowSilentHint()V
    .locals 2

    .line 1629
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3500(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3600(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 1

    .line 1622
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3500(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1623
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3600(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0

    .line 1606
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$5;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method
