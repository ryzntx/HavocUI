.class Lcom/android/systemui/statusbar/phone/FloatingRotationButton$1;
.super Ljava/lang/Object;
.source "FloatingRotationButton.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->show()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/FloatingRotationButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/FloatingRotationButton;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton$1;->this$0:Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton$1;->this$0:Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->access$000(Lcom/android/systemui/statusbar/phone/FloatingRotationButton;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton$1;->this$0:Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->access$100(Lcom/android/systemui/statusbar/phone/FloatingRotationButton;)Ljava/util/function/Consumer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton$1;->this$0:Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->access$100(Lcom/android/systemui/statusbar/phone/FloatingRotationButton;)Ljava/util/function/Consumer;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton$1;->this$0:Lcom/android/systemui/statusbar/phone/FloatingRotationButton;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->access$200(Lcom/android/systemui/statusbar/phone/FloatingRotationButton;)Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
