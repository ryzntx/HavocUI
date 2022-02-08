.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0

    .line 1224
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1227
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 1228
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "android.intent.action.SCREEN_ON"

    if-nez p2, :cond_0

    .line 1229
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1230
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$1100(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    .line 1231
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onScreenStateChanged(Z)V

    :cond_1
    const-string p2, "android.intent.action.USER_SWITCHED"

    .line 1233
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1235
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$1200(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$1300(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/accessibility/AccessibilityManager;)V

    :cond_2
    return-void
.end method
