.class Lcom/android/systemui/statusbar/phone/LightBarController$1;
.super Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;
.source "LightBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/LightBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LightBarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarController;Ljava/lang/Object;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$1;->this$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onUpdateNavigationBarIconColor(II)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController$1;->this$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->-set1(Lcom/android/systemui/statusbar/phone/LightBarController;I)I

    .line 113
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$1;->this$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/LightBarController;->-set0(Lcom/android/systemui/statusbar/phone/LightBarController;I)I

    .line 114
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$1;->this$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->apdetNavigationIcon()V

    return-void
.end method

.method public onUpdateStatusBarIconColor(II)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController$1;->this$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->-set2(Lcom/android/systemui/statusbar/phone/LightBarController;I)I

    .line 103
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$1;->this$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/LightBarController;->-set3(Lcom/android/systemui/statusbar/phone/LightBarController;I)I

    .line 104
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$1;->this$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->apdetStatusIcon()V

    return-void
.end method
