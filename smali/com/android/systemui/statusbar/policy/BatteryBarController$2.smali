.class Lcom/android/systemui/statusbar/policy/BatteryBarController$2;
.super Ljava/lang/Object;
.source "BatteryBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BatteryBarController;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryBarController;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$2;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$2;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->updateSettings()V

    return-void
.end method
