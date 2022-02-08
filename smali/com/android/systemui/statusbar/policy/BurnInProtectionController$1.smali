.class Lcom/android/systemui/statusbar/policy/BurnInProtectionController$1;
.super Ljava/lang/Object;
.source "BurnInProtectionController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BurnInProtectionController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
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

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController$1;->this$0:Lcom/android/systemui/statusbar/policy/BurnInProtectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDensityOrFontScaleChanged()V
    .locals 1

    const-string v0, "onDensityOrFontScaleChanged"

    .line 75
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->access$000(Ljava/lang/String;)V

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BurnInProtectionController$1;->this$0:Lcom/android/systemui/statusbar/policy/BurnInProtectionController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->access$100(Lcom/android/systemui/statusbar/policy/BurnInProtectionController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/policy/BurnInProtectionController;->access$200(Lcom/android/systemui/statusbar/policy/BurnInProtectionController;Landroid/content/res/Resources;)V

    return-void
.end method
