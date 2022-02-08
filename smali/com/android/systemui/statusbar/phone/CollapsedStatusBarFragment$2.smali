.class Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$2;
.super Ljava/lang/Object;
.source "CollapsedStatusBarFragment.java"

# interfaces
.implements Lcom/android/systemui/BatteryMeterView$BatteryMeterViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHiddenBattery(Z)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->access$200(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    .line 145
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->access$200(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->access$200(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->access$300(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)I

    move-result p1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->access$200(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    .line 144
    invoke-virtual {v0, v1, v2, p1, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method
