.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable$1;
.super Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;
.source "PhoneStatusBarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;Ljava/lang/Object;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onUpdateStatusBarColor(II)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;->access$002(Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;I)I

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;->generateAnimator()V

    return-void
.end method
