.class Lcom/android/systemui/statusbar/policy/BurnInProtectionController$2;
.super Ljava/util/TimerTask;
.source "BurnInProtectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->startShiftTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BurnInProtectionController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BurnInProtectionController;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController$2;->this$0:Lcom/android/systemui/statusbar/policy/BurnInProtectionController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController$2;->this$0:Lcom/android/systemui/statusbar/policy/BurnInProtectionController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->access$300(Lcom/android/systemui/statusbar/policy/BurnInProtectionController;)V

    return-void
.end method
